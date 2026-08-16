package Bd;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.StringRes;
import androidx.fragment.app.Fragment;

public class d extends Ad.c<b> {

    public static class a {

        public final d f1697a;

        public a(Context context) {
            this.f1697a = new d(context);
        }

        public a a(@StringRes int i10, float f10, Class<? extends Fragment> cls) {
            return e(b.f(this.f1697a.a().getString(i10), f10, cls));
        }

        public a b(@StringRes int i10, float f10, Class<? extends Fragment> cls, Bundle bundle) {
            return e(b.g(this.f1697a.a().getString(i10), f10, cls, bundle));
        }

        public a c(@StringRes int i10, Class<? extends Fragment> cls) {
            return e(b.h(this.f1697a.a().getString(i10), cls));
        }

        public a d(@StringRes int i10, Class<? extends Fragment> cls, Bundle bundle) {
            return e(b.i(this.f1697a.a().getString(i10), cls, bundle));
        }

        public a e(b bVar) {
            this.f1697a.add(bVar);
            return this;
        }

        public a f(CharSequence charSequence, Class<? extends Fragment> cls) {
            return e(b.h(charSequence, cls));
        }

        public a g(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle) {
            return e(b.i(charSequence, cls, bundle));
        }

        public d h() {
            return this.f1697a;
        }
    }

    public d(Context context) {
        super(context);
    }

    public static a b(Context context) {
        return new a(context);
    }
}
