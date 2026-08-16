package java.sql;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Wrapper.class
 */
public interface Wrapper {
    <T> T unwrap(Class<T> cls) throws SQLException;

    boolean isWrapperFor(Class<?> cls) throws SQLException;
}
