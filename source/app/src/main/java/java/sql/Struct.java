package java.sql;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Struct.class
 */
public interface Struct {
    String getSQLTypeName() throws SQLException;

    Object[] getAttributes() throws SQLException;

    Object[] getAttributes(Map<String, Class<?>> map) throws SQLException;
}
