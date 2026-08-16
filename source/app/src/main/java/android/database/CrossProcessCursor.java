package android.database;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/CrossProcessCursor.class
 */
public interface CrossProcessCursor extends Cursor {
    CursorWindow getWindow();

    void fillWindow(int i10, CursorWindow cursorWindow);

    boolean onMove(int i10, int i11);
}
