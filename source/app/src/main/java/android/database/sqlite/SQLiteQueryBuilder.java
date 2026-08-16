package android.database.sqlite;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.CancellationSignal;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/sqlite/SQLiteQueryBuilder.class
 */
public class SQLiteQueryBuilder {
    public SQLiteQueryBuilder() {
        throw new RuntimeException("Stub!");
    }

    public void setDistinct(boolean distinct) {
        throw new RuntimeException("Stub!");
    }

    public String getTables() {
        throw new RuntimeException("Stub!");
    }

    public void setTables(String inTables) {
        throw new RuntimeException("Stub!");
    }

    public void appendWhere(CharSequence inWhere) {
        throw new RuntimeException("Stub!");
    }

    public void appendWhereEscapeString(String inWhere) {
        throw new RuntimeException("Stub!");
    }

    public void setProjectionMap(Map<String, String> columnMap) {
        throw new RuntimeException("Stub!");
    }

    public void setCursorFactory(SQLiteDatabase.CursorFactory factory) {
        throw new RuntimeException("Stub!");
    }

    public void setStrict(boolean flag) {
        throw new RuntimeException("Stub!");
    }

    public static String buildQueryString(boolean distinct, String tables, String[] columns, String where, String groupBy, String having, String orderBy, String limit) {
        throw new RuntimeException("Stub!");
    }

    public static void appendColumns(StringBuilder s10, String[] columns) {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(SQLiteDatabase db2, String[] projectionIn, String selection, String[] selectionArgs, String groupBy, String having, String sortOrder) {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(SQLiteDatabase db2, String[] projectionIn, String selection, String[] selectionArgs, String groupBy, String having, String sortOrder, String limit) {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(SQLiteDatabase db2, String[] projectionIn, String selection, String[] selectionArgs, String groupBy, String having, String sortOrder, String limit, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public String buildQuery(String[] projectionIn, String selection, String groupBy, String having, String sortOrder, String limit) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String buildQuery(String[] projectionIn, String selection, String[] selectionArgs, String groupBy, String having, String sortOrder, String limit) {
        throw new RuntimeException("Stub!");
    }

    public String buildUnionSubQuery(String typeDiscriminatorColumn, String[] unionColumns, Set<String> columnsPresentInTable, int computedColumnsOffset, String typeDiscriminatorValue, String selection, String groupBy, String having) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String buildUnionSubQuery(String typeDiscriminatorColumn, String[] unionColumns, Set<String> columnsPresentInTable, int computedColumnsOffset, String typeDiscriminatorValue, String selection, String[] selectionArgs, String groupBy, String having) {
        throw new RuntimeException("Stub!");
    }

    public String buildUnionQuery(String[] subQueries, String sortOrder, String limit) {
        throw new RuntimeException("Stub!");
    }
}
