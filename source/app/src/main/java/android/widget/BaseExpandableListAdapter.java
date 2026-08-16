package android.widget;

import android.database.DataSetObserver;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/BaseExpandableListAdapter.class
 */
public abstract class BaseExpandableListAdapter implements ExpandableListAdapter, HeterogeneousExpandableList {
    public BaseExpandableListAdapter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void registerDataSetObserver(DataSetObserver observer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unregisterDataSetObserver(DataSetObserver observer) {
        throw new RuntimeException("Stub!");
    }

    public void notifyDataSetInvalidated() {
        throw new RuntimeException("Stub!");
    }

    public void notifyDataSetChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean areAllItemsEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onGroupCollapsed(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onGroupExpanded(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getCombinedChildId(long groupId, long childId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getCombinedGroupId(long groupId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getChildType(int groupPosition, int childPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getChildTypeCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getGroupType(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getGroupTypeCount() {
        throw new RuntimeException("Stub!");
    }
}
