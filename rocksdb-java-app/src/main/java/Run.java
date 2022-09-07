import org.rocksdb.RocksDB;

public class Run {

  public static void main(String[] args) {
    System.out.println("Attempting to load RocksDB");
    RocksDB.loadLibrary();
    System.out.println("Loaded RocksDB JNI");
  
  }
  
}
