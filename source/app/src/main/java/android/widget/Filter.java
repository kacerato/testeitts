package android.widget;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Filter.class
 */
public abstract class Filter {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Filter$FilterListener.class
 */
    public interface FilterListener {
        void onFilterComplete(int i10);
    }

    protected abstract FilterResults performFiltering(CharSequence charSequence);

    protected abstract void publishResults(CharSequence charSequence, FilterResults filterResults);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Filter$FilterResults.class
 */
    protected static class FilterResults {
        public int count;
        public Object values;

        public FilterResults() {
            throw new RuntimeException("Stub!");
        }
    }

    public Filter() {
        throw new RuntimeException("Stub!");
    }

    public final void filter(CharSequence constraint) {
        throw new RuntimeException("Stub!");
    }

    public final void filter(CharSequence constraint, FilterListener listener) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence convertResultToString(Object resultValue) {
        throw new RuntimeException("Stub!");
    }
}
