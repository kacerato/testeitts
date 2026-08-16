package android.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/BaseAdapter.class
 */
public abstract class BaseAdapter implements ListAdapter, SpinnerAdapter {
    public BaseAdapter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasStableIds() {
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

    public void notifyDataSetChanged() {
        throw new RuntimeException("Stub!");
    }

    public void notifyDataSetInvalidated() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean areAllItemsEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEnabled(int position) {
        throw new RuntimeException("Stub!");
    }

    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getItemViewType(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getViewTypeCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }
}
