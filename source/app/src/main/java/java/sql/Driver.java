package java.sql;

import java.util.Properties;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Driver.class
 */
public interface Driver {
    Connection connect(String str, Properties properties) throws SQLException;

    boolean acceptsURL(String str) throws SQLException;

    DriverPropertyInfo[] getPropertyInfo(String str, Properties properties) throws SQLException;

    int getMajorVersion();

    int getMinorVersion();

    boolean jdbcCompliant();
}
