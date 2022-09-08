import org.rocksdb.RocksDB;

public class Run {

  public static void main(String[] args) throws InterruptedException {
    System.out.println("Attempting to load RocksDB");
    try {
      RocksDB.loadLibrary();
      System.out.println("Loaded RocksDB JNI");
    } catch (Throwable e) {
      e.printStackTrace();
    } finally {
      Thread.sleep(3600000); // 1 hour
    }

  }

}
