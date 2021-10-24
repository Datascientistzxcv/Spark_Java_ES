import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.elasticsearch.spark.rdd.api.java.JavaEsSpark;
import org.elasticsearch.spark.sql.api.java.JavaEsSparkSQL;  
import java.util.Map;
import scala.Tuple2;
import org.apache.spark.sql.types.*;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.Encoders;
import org.apache.spark.sql.SQLContext;
import org.apache.spark.sql.SparkSession;
import java.util.*;
import org.apache.spark.sql.types.*;
import static org.apache.spark.sql.functions.*;
import static org.apache.spark.sql.functions.arrays_zip;
import static org.apache.spark.sql.functions.explode;
import static org.apache.spark.sql.functions.element_at;

// import org.apache.log4j.{Level, LogManager, PropertyConfigurator};
public class SimpleApp {
    public static void main(String[] args) {
        SimpleApp  ws= new SimpleApp();
        ws.koelEvent();
        ws.kvbNextBike();
        ws.openWeather();
        ws.poi();
        ws.wunderfleet();
    }
        public static void koelEvent(){
            SparkConf sparkConf = new SparkConf(true);
            sparkConf.setAppName(SimpleApp.class.getName());
            SparkSession spark = null;
            sparkConf.setMaster("local[*]");
            sparkConf.set("spark.cleaner.ttl", "3600");
            sparkConf.set("es.nodes", System.getenv(("HOST")));
            sparkConf.set("es.port", "9201");
            sparkConf.set("es.nodes.discovery", "false");
            sparkConf.set("es.nodes.wan.only", "true");
            sparkConf.set("es.net.ssl", "true");
            sparkConf.set("es.nodes.discovery","false");
            sparkConf.set("es.field.read.empty.as.null", "no");
            sparkConf.set("es.read.field.as.array.include","hits.hits,hits.hits._source.esGeoLocation");
            spark = SparkSession.builder().config(sparkConf).getOrCreate();
            SQLContext sqlContext = spark.sqlContext();
            Dataset<Row> df = JavaEsSparkSQL.esDF(sqlContext, "testindex");
            Dataset<Row> df1 = df.select(explode(arrays_zip(df.col("hits.hits._source.SID"),
                df.col("hits.hits._source.description"),
                df.col("hits.hits._source.lat"),
                df.col("hits.hits._source.lon"),
                df.col("hits.hits._source.ort"),
                df.col("hits.hits._source.plz"),
                df.col("hits.hits._source.strasse"),
                df.col("hits.hits._source.uhrzeit"),
                df.col("hits.hits._source.veranstaltungsort"))).as("vars"));
        Dataset<org.apache.spark.sql.Row> df2 = df1.select(df1.col("vars.0").as("SID"),
                df1.col("vars.1").as("description"),df1.col("vars.2").cast("Double").as("lat"),
                df1.col("vars.3").cast("Double").as("lon"),
                df1.col("vars.4").as("ort"),df1.col("vars.5").cast("Integer").as("plz"),
                df1.col("vars.6").as("strasse"),
                df1.col("vars.7").as("uhrzeit"),df1.col("vars.8").as("veranstaltungsort")
                );
            // df2.printSchema();
            writeToPsql(df2,"KoelnRawEventTable");
    }
    public static void kvbNextBike()
    {
        SparkConf sparkConf = new SparkConf(true);
        sparkConf.setAppName(SimpleApp.class.getName());
        SparkSession spark = null;
        sparkConf.setMaster("local[*]");
        sparkConf.set("spark.cleaner.ttl", "3600");
        sparkConf.set("es.nodes", System.getenv(("HOST")));
        sparkConf.set("es.port", "9201");
        sparkConf.set("es.nodes.discovery", "false");
        sparkConf.set("es.nodes.wan.only", "true");
        sparkConf.set("es.net.ssl", "true");
        sparkConf.set("es.nodes.discovery","false");
        sparkConf.set("es.field.read.empty.as.null", "no");
        sparkConf.set("es.read.field.as.array.include","hits.hits,hits.hits._source.esGeoLocation");
        spark = SparkSession.builder().config(sparkConf).getOrCreate();
        SQLContext sqlContext = spark.sqlContext();
        Dataset<Row> df = JavaEsSparkSQL.esDF(sqlContext, "kvbnextbike");
        Dataset<Row> df1=df.select(
                df.col("id"),
                df.col("bikeNumber").cast("Integer"),
                df.col("lat").cast("Double"),
                df.col("lon").cast("Double"));
        // df1.printSchema();
        writeToPsql(df1,"kvbNextBikeTable");
       
    }
    public static void openWeather()
    {
        SparkConf sparkConf = new SparkConf(true);
        sparkConf.setAppName(SimpleApp.class.getName());
        SparkSession spark = null;
        sparkConf.setMaster("local[*]");
        sparkConf.set("spark.cleaner.ttl", "3600");
        sparkConf.set("es.nodes", System.getenv(("HOST")));
        sparkConf.set("es.port", "9201");
        sparkConf.set("es.nodes.discovery", "false");
        sparkConf.set("es.nodes.wan.only", "true");
        sparkConf.set("es.net.ssl", "true");
        sparkConf.set("es.nodes.discovery","false");
        sparkConf.set("es.field.read.empty.as.null", "no");
        sparkConf.set("es.read.field.as.array.include","hits.hits,hits.hits._source.esGeoLocation");
        spark = SparkSession.builder().config(sparkConf).getOrCreate();
        SQLContext sqlContext = spark.sqlContext();
        Dataset<Row> df = JavaEsSparkSQL.esDF(sqlContext, "openweather");
        df.printSchema();

        Dataset<Row> df1=df.select(
                df.col("SID"),
                df.col("city"),
                df.col("lat").cast("Double"),
                df.col("lon").cast("Double"),
                df.col("humidity").cast("Double"),
                df.col("pressure").cast("Double")  ,
                df.col("temp").cast("Double"),
                df.col("temp_max").cast("Double"),
                df.col("temp_min").cast("Double"),
                df.col("timestamp"),
                df.col("wind_speed").cast("Double")
                );
        writeToPsql(df1,"openweatherTable");
       
    }
    public static void poi()
    {
        SparkConf sparkConf = new SparkConf(true);
        sparkConf.setAppName(SimpleApp.class.getName());
        SparkSession spark = null;
        sparkConf.setMaster("local[*]");
        sparkConf.set("spark.cleaner.ttl", "3600");
        sparkConf.set("es.nodes", System.getenv(("HOST")));
        sparkConf.set("es.port", "9201");
        sparkConf.set("es.nodes.discovery", "false");
        sparkConf.set("es.nodes.wan.only", "true");
        sparkConf.set("es.net.ssl", "true");
        sparkConf.set("es.nodes.discovery","false");
        sparkConf.set("es.field.read.empty.as.null", "no");
        sparkConf.set("es.read.field.as.array.include","hits.hits,hits.hits._source.esGeoLocation");
        spark = SparkSession.builder().config(sparkConf).getOrCreate();
        SQLContext sqlContext = spark.sqlContext();
        Dataset<Row> df = JavaEsSparkSQL.esDF(sqlContext, "poi");
        df.printSchema();
        Dataset<Row> df1 = df.selectExpr("SID","NAME","ADRESSE",
        "cast(lat as Double) lat", 
        "cast(lon as Double) lon","STADTTEIL","STADTVIERTEL");
        writeToPsql(df1,"KoelnPOITable");
       
    }
    public static void wunderfleet()
    {
        SparkConf sparkConf = new SparkConf(true);
        sparkConf.setAppName(SimpleApp.class.getName());
        SparkSession spark = null;
        sparkConf.setMaster("local[*]");
        sparkConf.set("spark.cleaner.ttl", "3600");
        sparkConf.set("es.nodes", System.getenv(("HOST")));
        sparkConf.set("es.port", "9201");
        sparkConf.set("es.nodes.discovery", "false");
        sparkConf.set("es.nodes.wan.only", "true");
        sparkConf.set("es.net.ssl", "true");
        sparkConf.set("es.nodes.discovery","false");
        sparkConf.set("es.field.read.empty.as.null", "no");
        sparkConf.set("es.read.field.as.array.include","hits.hits,hits.hits._source.esGeoLocation");
        spark = SparkSession.builder().config(sparkConf).getOrCreate();
        SQLContext sqlContext = spark.sqlContext();
        Dataset<Row> df = JavaEsSparkSQL.esDF(sqlContext, "wunderfleet");
        Dataset<Row> df1 = df.selectExpr("cast(vehicle_id as int) vehicle_id", 
        "vehicle_type", 
        "cast(lat as Double) lat", 
        "cast(lon as Double) lon");
        writeToPsql(df1,"wunderfleetTable");
       
    }
    public static void writeToPsql(Dataset<Row> df,String tablname){
        String tblname=tablname;
        Dataset<Row> df_table=df;
        df_table.printSchema();
        df_table.write().mode("overwrite")
        .format("jdbc")
        .option("inferSchema","true")
        .option("url", "jdbc:postgresql://localhost:5432/elk")
        .option("dbtable", "es."+tblname)
        .option("user", "shekhar")
        .option("password", "shekhar")
        .option("mode","overwrite")
        .save();
    }
}