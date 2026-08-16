package Jd;

import Lf.k;
import android.view.View;
import androidx.annotation.DrawableRes;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class a {

    @NotNull
    public final String f10448a;

    @Nullable
    public final Integer f10449b;

    @NotNull
    public final View.OnClickListener f10450c;

    @k
    public a(@NotNull String str, @NotNull View.OnClickListener onClickListener) {
        this(str, null, onClickListener, 2, null);
    }

    public static a e(a aVar, String str, Integer num, View.OnClickListener onClickListener, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = aVar.f10448a;
        }
        if ((i10 & 2) != 0) {
            num = aVar.f10449b;
        }
        if ((i10 & 4) != 0) {
            onClickListener = aVar.f10450c;
        }
        return aVar.d(str, num, onClickListener);
    }

    @NotNull
    public final String a() {
        return this.f10448a;
    }

    @Nullable
    public final Integer b() {
        return this.f10449b;
    }

    @NotNull
    public final View.OnClickListener c() {
        return this.f10450c;
    }

    @NotNull
    public final a d(@NotNull String text, @DrawableRes @Nullable Integer num, @NotNull View.OnClickListener onClickListener) {
        M.q(text, "text");
        M.q(onClickListener, "onClickListener");
        return new a(text, num, onClickListener);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return M.g(this.f10448a, aVar.f10448a) && M.g(this.f10449b, aVar.f10449b) && M.g(this.f10450c, aVar.f10450c);
    }

    @Nullable
    public final Integer f() {
        return this.f10449b;
    }

    @NotNull
    public final View.OnClickListener g() {
        return this.f10450c;
    }

    @NotNull
    public final String h() {
        return this.f10448a;
    }

    public int hashCode() {
        String str = this.f10448a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Integer num = this.f10449b;
        int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        View.OnClickListener onClickListener = this.f10450c;
        return hashCode2 + (onClickListener != null ? onClickListener.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "MenuItem(text=" + this.f10448a + ", icon=" + ((Object) this.f10449b) + ", onClickListener=" + ((Object) this.f10450c) + ")";
    }

    @k
    public a(@NotNull String text, @DrawableRes @Nullable Integer num, @NotNull View.OnClickListener onClickListener) {
        M.q(text, "text");
        M.q(onClickListener, "onClickListener");
        this.f10448a = text;
        this.f10449b = num;
        this.f10450c = onClickListener;
    }

    public a(String str, Integer num, View.OnClickListener onClickListener, int i10, C14026x c14026x) {
        this(str, (i10 & 2) != 0 ? null : num, onClickListener);
    }
}
