package androidx.core.widget;

import android.widget.ListView;

public final class ListViewCompat {

    public static class Api19Impl {
        private Api19Impl() {
        }

        public static boolean canScrollList(ListView listView, int i10) {
            return listView.canScrollList(i10);
        }

        public static void scrollListBy(ListView listView, int i10) {
            listView.scrollListBy(i10);
        }
    }

    private ListViewCompat() {
    }

    public static boolean canScrollList(ListView listView, int i10) {
        return Api19Impl.canScrollList(listView, i10);
    }

    public static void scrollListBy(ListView listView, int i10) {
        Api19Impl.scrollListBy(listView, i10);
    }
}
