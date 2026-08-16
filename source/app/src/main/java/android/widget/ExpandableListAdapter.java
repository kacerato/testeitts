package android.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ExpandableListAdapter.class
 */
public interface ExpandableListAdapter {
    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);

    int getGroupCount();

    int getChildrenCount(int i10);

    Object getGroup(int i10);

    Object getChild(int i10, int i11);

    long getGroupId(int i10);

    long getChildId(int i10, int i11);

    boolean hasStableIds();

    View getGroupView(int i10, boolean z10, View view, ViewGroup viewGroup);

    View getChildView(int i10, int i11, boolean z10, View view, ViewGroup viewGroup);

    boolean isChildSelectable(int i10, int i11);

    boolean areAllItemsEnabled();

    boolean isEmpty();

    void onGroupExpanded(int i10);

    void onGroupCollapsed(int i10);

    long getCombinedChildId(long j10, long j11);

    long getCombinedGroupId(long j10);
}
