package java.sql;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/ParameterMetaData.class
 */
public interface ParameterMetaData extends Wrapper {
    public static final int parameterModeIn = 1;
    public static final int parameterModeInOut = 2;
    public static final int parameterModeOut = 4;
    public static final int parameterModeUnknown = 0;
    public static final int parameterNoNulls = 0;
    public static final int parameterNullable = 1;
    public static final int parameterNullableUnknown = 2;

    int getParameterCount() throws SQLException;

    int isNullable(int i10) throws SQLException;

    boolean isSigned(int i10) throws SQLException;

    int getPrecision(int i10) throws SQLException;

    int getScale(int i10) throws SQLException;

    int getParameterType(int i10) throws SQLException;

    String getParameterTypeName(int i10) throws SQLException;

    String getParameterClassName(int i10) throws SQLException;

    int getParameterMode(int i10) throws SQLException;
}
