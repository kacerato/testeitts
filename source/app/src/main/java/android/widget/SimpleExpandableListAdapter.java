package android.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SimpleExpandableListAdapter.class
 */
public class SimpleExpandableListAdapter extends BaseExpandableListAdapter {
    public SimpleExpandableListAdapter(Context context, List<? extends Map<String, ?>> groupData, int groupLayout, String[] groupFrom, int[] groupTo, List<? extends List<? extends Map<String, ?>>> childData, int childLayout, String[] childFrom, int[] childTo) {
        throw new RuntimeException("Stub!");
    }

    public SimpleExpandableListAdapter(Context context, List<? extends Map<String, ?>> groupData, int expandedGroupLayout, int collapsedGroupLayout, String[] groupFrom, int[] groupTo, List<? extends List<? extends Map<String, ?>>> childData, int childLayout, String[] childFrom, int[] childTo) {
        throw new RuntimeException("Stub!");
    }

    public SimpleExpandableListAdapter(Context context, List<? extends Map<String, ?>> groupData, int expandedGroupLayout, int collapsedGroupLayout, String[] groupFrom, int[] groupTo, List<? extends List<? extends Map<String, ?>>> childData, int childLayout, int lastChildLayout, String[] childFrom, int[] childTo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getChild(int groupPosition, int childPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getChildId(int groupPosition, int childPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    public View newChildView(boolean isLastChild, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getChildrenCount(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getGroup(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getGroupCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getGroupId(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    public View newGroupView(boolean isExpanded, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isChildSelectable(int groupPosition, int childPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasStableIds() {
        throw new RuntimeException("Stub!");
    }
}
