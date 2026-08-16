package java.sql;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/RowId.class
 */
public interface RowId {
    boolean equals(Object obj);

    byte[] getBytes();

    String toString();

    int hashCode();
}
