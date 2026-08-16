package Bd;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;

public class b extends Ad.b {

    public static final String f1691f = "FragmentPagerItem";

    public static final String f1692g = "FragmentPagerItem:Position";

    public final String f1693d;

    public final Bundle f1694e;

    public b(CharSequence charSequence, float f10, String str, Bundle bundle) {
        super(charSequence, f10);
        this.f1693d = str;
        this.f1694e = bundle;
    }

    public static int c(Bundle bundle) {
        if (d(bundle)) {
            return bundle.getInt(f1692g);
        }
        return 0;
    }

    public static boolean d(Bundle bundle) {
        return bundle != null && bundle.containsKey(f1692g);
    }

    public static b f(CharSequence charSequence, float f10, Class<? extends Fragment> cls) {
        return g(charSequence, f10, cls, new Bundle());
    }

    public static b g(CharSequence charSequence, float f10, Class<? extends Fragment> cls, Bundle bundle) {
        return new b(charSequence, f10, cls.getName(), bundle);
    }

    public static b h(CharSequence charSequence, Class<? extends Fragment> cls) {
        return f(charSequence, 1.0f, cls);
    }

    public static b i(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle) {
        return g(charSequence, 1.0f, cls, bundle);
    }

    public static void j(Bundle bundle, int i10) {
        bundle.putInt(f1692g, i10);
    }

    public Fragment e(Context context, int i10) {
        j(this.f1694e, i10);
        return Fragment.instantiate(context, this.f1693d, this.f1694e);
    }
}
