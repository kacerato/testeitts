package android.database.sqlite;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/sqlite/SQLiteTransactionListener.class
 */
public interface SQLiteTransactionListener {
    void onBegin();

    void onCommit();

    void onRollback();
}
