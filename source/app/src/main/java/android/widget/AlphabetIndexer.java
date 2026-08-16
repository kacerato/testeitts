package android.widget;

import android.database.Cursor;
import android.database.DataSetObserver;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AlphabetIndexer.class
 */
public class AlphabetIndexer extends DataSetObserver implements SectionIndexer {
    protected CharSequence mAlphabet;
    protected int mColumnIndex;
    protected Cursor mDataCursor;

    public AlphabetIndexer(Cursor cursor, int sortedColumnIndex, CharSequence alphabet) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object[] getSections() {
        throw new RuntimeException("Stub!");
    }

    public void setCursor(Cursor cursor) {
        throw new RuntimeException("Stub!");
    }

    protected int compare(String word, String letter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getPositionForSection(int sectionIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSectionForPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onInvalidated() {
        throw new RuntimeException("Stub!");
    }
}
