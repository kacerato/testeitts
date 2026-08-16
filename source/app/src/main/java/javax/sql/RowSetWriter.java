package javax.sql;

import java.sql.SQLException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/RowSetWriter.class
 */
public interface RowSetWriter {
    boolean writeData(RowSetInternal rowSetInternal) throws SQLException;
}
