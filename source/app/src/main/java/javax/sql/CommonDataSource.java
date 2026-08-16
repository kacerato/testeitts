package javax.sql;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.util.logging.Logger;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/CommonDataSource.class
 */
public interface CommonDataSource {
    PrintWriter getLogWriter() throws SQLException;

    void setLogWriter(PrintWriter printWriter) throws SQLException;

    void setLoginTimeout(int i10) throws SQLException;

    int getLoginTimeout() throws SQLException;

    Logger getParentLogger() throws SQLFeatureNotSupportedException;
}
