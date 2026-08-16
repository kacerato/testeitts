package javax.sql;

import java.sql.SQLException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/ConnectionPoolDataSource.class
 */
public interface ConnectionPoolDataSource extends CommonDataSource {
    PooledConnection getPooledConnection() throws SQLException;

    PooledConnection getPooledConnection(String str, String str2) throws SQLException;
}
