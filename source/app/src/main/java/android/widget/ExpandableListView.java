package android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.View;
import android.widget.AdapterView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ExpandableListView.class
 */
public class ExpandableListView extends ListView {
    public static final int CHILD_INDICATOR_INHERIT = -1;
    public static final int PACKED_POSITION_TYPE_CHILD = 1;
    public static final int PACKED_POSITION_TYPE_GROUP = 0;
    public static final int PACKED_POSITION_TYPE_NULL = 2;
    public static final long PACKED_POSITION_VALUE_NULL = 4294967295L;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ExpandableListView$OnChildClickListener.class
 */
    public interface OnChildClickListener {
        boolean onChildClick(ExpandableListView expandableListView, View view, int i10, int i11, long j10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ExpandableListView$OnGroupClickListener.class
 */
    public interface OnGroupClickListener {
        boolean onGroupClick(ExpandableListView expandableListView, View view, int i10, long j10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ExpandableListView$OnGroupCollapseListener.class
 */
    public interface OnGroupCollapseListener {
        void onGroupCollapse(int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ExpandableListView$OnGroupExpandListener.class
 */
    public interface OnGroupExpandListener {
        void onGroupExpand(int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ExpandableListView$ExpandableListContextMenuInfo.class
 */
    public static class ExpandableListContextMenuInfo implements ContextMenu.ContextMenuInfo {

        public long f32510id;
        public long packedPosition;
        public View targetView;

        public ExpandableListContextMenuInfo(View targetView, long packedPosition, long id2) {
            throw new RuntimeException("Stub!");
        }
    }

    public ExpandableListView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ExpandableListView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ExpandableListView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ExpandableListView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRtlPropertiesChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void setChildDivider(Drawable childDivider) {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public void setAdapter(ListAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ListAdapter getAdapter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setOnItemClickListener(AdapterView.OnItemClickListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setAdapter(ExpandableListAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    public ExpandableListAdapter getExpandableListAdapter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performItemClick(View v10, int position, long id2) {
        throw new RuntimeException("Stub!");
    }

    public boolean expandGroup(int groupPos) {
        throw new RuntimeException("Stub!");
    }

    public boolean expandGroup(int groupPos, boolean animate) {
        throw new RuntimeException("Stub!");
    }

    public boolean collapseGroup(int groupPos) {
        throw new RuntimeException("Stub!");
    }

    public void setOnGroupCollapseListener(OnGroupCollapseListener onGroupCollapseListener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnGroupExpandListener(OnGroupExpandListener onGroupExpandListener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnGroupClickListener(OnGroupClickListener onGroupClickListener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnChildClickListener(OnChildClickListener onChildClickListener) {
        throw new RuntimeException("Stub!");
    }

    public long getExpandableListPosition(int flatListPosition) {
        throw new RuntimeException("Stub!");
    }

    public int getFlatListPosition(long packedPosition) {
        throw new RuntimeException("Stub!");
    }

    public long getSelectedPosition() {
        throw new RuntimeException("Stub!");
    }

    public long getSelectedId() {
        throw new RuntimeException("Stub!");
    }

    public void setSelectedGroup(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    public boolean setSelectedChild(int groupPosition, int childPosition, boolean shouldExpandGroup) {
        throw new RuntimeException("Stub!");
    }

    public boolean isGroupExpanded(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    public static int getPackedPositionType(long packedPosition) {
        throw new RuntimeException("Stub!");
    }

    public static int getPackedPositionGroup(long packedPosition) {
        throw new RuntimeException("Stub!");
    }

    public static int getPackedPositionChild(long packedPosition) {
        throw new RuntimeException("Stub!");
    }

    public static long getPackedPositionForChild(int groupPosition, int childPosition) {
        throw new RuntimeException("Stub!");
    }

    public static long getPackedPositionForGroup(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    public void setChildIndicator(Drawable childIndicator) {
        throw new RuntimeException("Stub!");
    }

    public void setChildIndicatorBounds(int left, int right) {
        throw new RuntimeException("Stub!");
    }

    public void setChildIndicatorBoundsRelative(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public void setGroupIndicator(Drawable groupIndicator) {
        throw new RuntimeException("Stub!");
    }

    public void setIndicatorBounds(int left, int right) {
        throw new RuntimeException("Stub!");
    }

    public void setIndicatorBoundsRelative(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
