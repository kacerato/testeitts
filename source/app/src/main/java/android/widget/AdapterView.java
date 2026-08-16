package android.widget;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.Adapter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AdapterView.class
 */
public abstract class AdapterView<T extends Adapter> extends ViewGroup {
    public static final int INVALID_POSITION = -1;
    public static final long INVALID_ROW_ID = Long.MIN_VALUE;
    public static final int ITEM_VIEW_TYPE_HEADER_OR_FOOTER = -2;
    public static final int ITEM_VIEW_TYPE_IGNORE = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AdapterView$OnItemClickListener.class
 */
    public interface OnItemClickListener {
        void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AdapterView$OnItemLongClickListener.class
 */
    public interface OnItemLongClickListener {
        boolean onItemLongClick(AdapterView<?> adapterView, View view, int i10, long j10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AdapterView$OnItemSelectedListener.class
 */
    public interface OnItemSelectedListener {
        void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10);

        void onNothingSelected(AdapterView<?> adapterView);
    }

    public abstract T getAdapter();

    public abstract void setAdapter(T t10);

    public abstract View getSelectedView();

    public abstract void setSelection(int i10);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AdapterView$AdapterContextMenuInfo.class
 */
    public static class AdapterContextMenuInfo implements ContextMenu.ContextMenuInfo {

        public long f32509id;
        public int position;
        public View targetView;

        public AdapterContextMenuInfo(View targetView, int position, long id2) {
            throw new RuntimeException("Stub!");
        }
    }

    public AdapterView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AdapterView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AdapterView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AdapterView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        throw new RuntimeException("Stub!");
    }

    public final OnItemClickListener getOnItemClickListener() {
        throw new RuntimeException("Stub!");
    }

    public boolean performItemClick(View view, int position, long id2) {
        throw new RuntimeException("Stub!");
    }

    public void setOnItemLongClickListener(OnItemLongClickListener listener) {
        throw new RuntimeException("Stub!");
    }

    public final OnItemLongClickListener getOnItemLongClickListener() {
        throw new RuntimeException("Stub!");
    }

    public void setOnItemSelectedListener(OnItemSelectedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public final OnItemSelectedListener getOnItemSelectedListener() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removeView(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removeViewAt(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removeAllViews() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public int getSelectedItemPosition() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public long getSelectedItemId() {
        throw new RuntimeException("Stub!");
    }

    public Object getSelectedItem() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public int getCount() {
        throw new RuntimeException("Stub!");
    }

    public int getPositionForView(View view) {
        throw new RuntimeException("Stub!");
    }

    public int getFirstVisiblePosition() {
        throw new RuntimeException("Stub!");
    }

    public int getLastVisiblePosition() {
        throw new RuntimeException("Stub!");
    }

    public void setEmptyView(View emptyView) {
        throw new RuntimeException("Stub!");
    }

    public View getEmptyView() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setFocusable(int focusable) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setFocusableInTouchMode(boolean focusable) {
        throw new RuntimeException("Stub!");
    }

    public Object getItemAtPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    public long getItemIdAtPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setOnClickListener(View.OnClickListener l10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canAnimate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onProvideAutofillStructure(ViewStructure structure, int flags) {
        throw new RuntimeException("Stub!");
    }
}
