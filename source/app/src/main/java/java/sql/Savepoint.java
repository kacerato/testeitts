package java.sql;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Savepoint.class
 */
public interface Savepoint {
    int getSavepointId() throws SQLException;

    String getSavepointName() throws SQLException;
}
