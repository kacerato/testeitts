package javax.sql;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Wrapper;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/DataSource.class
 */
public interface DataSource extends CommonDataSource, Wrapper {
    Connection getConnection() throws SQLException;

    Connection getConnection(String str, String str2) throws SQLException;
}
