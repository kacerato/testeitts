package android.database;

import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/CursorJoiner.class
 */
public final class CursorJoiner implements Iterator<Result>, Iterable<Result> {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/CursorJoiner$Result.class
 */
    public enum Result {
        BOTH,
        LEFT,
        RIGHT
    }

    public CursorJoiner(Cursor cursorLeft, String[] columnNamesLeft, Cursor cursorRight, String[] columnNamesRight) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Iterator<Result> iterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasNext() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Result next() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void remove() {
        throw new RuntimeException("Stub!");
    }
}
