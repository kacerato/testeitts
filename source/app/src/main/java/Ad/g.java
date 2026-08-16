package Ad;

import android.content.Context;
import androidx.annotation.LayoutRes;
import androidx.annotation.StringRes;

public class g extends c<e> {

    public static class a {

        public final g f519a;

        public a(Context context) {
            this.f519a = new g(context);
        }

        public a a(@StringRes int i10, float f10, @LayoutRes int i11) {
            return c(e.d(this.f519a.a().getString(i10), f10, i11));
        }

        public a b(@StringRes int i10, @LayoutRes int i11) {
            return c(e.e(this.f519a.a().getString(i10), i11));
        }

        public a c(e eVar) {
            this.f519a.add(eVar);
            return this;
        }

        public a d(CharSequence charSequence, @LayoutRes int i10) {
            return c(e.e(charSequence, i10));
        }

        public g e() {
            return this.f519a;
        }
    }

    public g(Context context) {
        super(context);
    }

    public static a b(Context context) {
        return new a(context);
    }
}
