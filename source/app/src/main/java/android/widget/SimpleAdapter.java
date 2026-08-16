package android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SimpleAdapter.class
 */
public class SimpleAdapter extends BaseAdapter implements Filterable, ThemedSpinnerAdapter {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SimpleAdapter$ViewBinder.class
 */
    public interface ViewBinder {
        boolean setViewValue(View view, Object obj, String str);
    }

    public SimpleAdapter(Context context, List<? extends Map<String, ?>> data, int resource, String[] from, int[] to) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getItem(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getItemId(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    public void setDropDownViewResource(int resource) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDropDownViewTheme(Resources.Theme theme) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources.Theme getDropDownViewTheme() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    public ViewBinder getViewBinder() {
        throw new RuntimeException("Stub!");
    }

    public void setViewBinder(ViewBinder viewBinder) {
        throw new RuntimeException("Stub!");
    }

    public void setViewImage(ImageView v10, int value) {
        throw new RuntimeException("Stub!");
    }

    public void setViewImage(ImageView v10, String value) {
        throw new RuntimeException("Stub!");
    }

    public void setViewText(TextView v10, String text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Filter getFilter() {
        throw new RuntimeException("Stub!");
    }
}
