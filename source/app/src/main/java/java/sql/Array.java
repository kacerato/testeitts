package java.sql;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Array.class
 */
public interface Array {
    String getBaseTypeName() throws SQLException;

    int getBaseType() throws SQLException;

    Object getArray() throws SQLException;

    Object getArray(Map<String, Class<?>> map) throws SQLException;

    Object getArray(long j10, int i10) throws SQLException;

    Object getArray(long j10, int i10, Map<String, Class<?>> map) throws SQLException;

    ResultSet getResultSet() throws SQLException;

    ResultSet getResultSet(Map<String, Class<?>> map) throws SQLException;

    ResultSet getResultSet(long j10, int i10) throws SQLException;

    ResultSet getResultSet(long j10, int i10, Map<String, Class<?>> map) throws SQLException;

    void free() throws SQLException;
}
