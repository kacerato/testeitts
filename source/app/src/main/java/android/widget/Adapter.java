package android.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Adapter.class
 */
public interface Adapter {
    public static final int IGNORE_ITEM_VIEW_TYPE = -1;
    public static final int NO_SELECTION = Integer.MIN_VALUE;

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);

    int getCount();

    Object getItem(int i10);

    long getItemId(int i10);

    boolean hasStableIds();

    View getView(int i10, View view, ViewGroup viewGroup);

    int getItemViewType(int i10);

    int getViewTypeCount();

    boolean isEmpty();

    default CharSequence[] getAutofillOptions() {
        throw new RuntimeException("Stub!");
    }
}
