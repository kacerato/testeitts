package java.sql;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Ref.class
 */
public interface Ref {
    String getBaseTypeName() throws SQLException;

    Object getObject(Map<String, Class<?>> map) throws SQLException;

    Object getObject() throws SQLException;

    void setObject(Object obj) throws SQLException;
}
