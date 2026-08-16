package Od;

import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.Px;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class e {

    @NotNull
    public final CharSequence f16624a;

    @Nullable
    public final Drawable f16625b;

    @Nullable
    public final Integer f16626c;

    @Nullable
    public final Integer f16627d;

    public final int f16628e;

    @Nullable
    public final Integer f16629f;

    @Nullable
    public final Integer f16630g;

    @Nullable
    public final Float f16631h;

    @Nullable
    public final Integer f16632i;

    @Lf.k
    public e(@NotNull CharSequence charSequence) {
        this(charSequence, null, null, null, 0, null, null, null, null, TypedValues.PositionType.TYPE_POSITION_TYPE, null);
    }

    @NotNull
    public final CharSequence a() {
        return this.f16624a;
    }

    @Nullable
    public final Drawable b() {
        return this.f16625b;
    }

    @Nullable
    public final Integer c() {
        return this.f16626c;
    }

    @Nullable
    public final Integer d() {
        return this.f16627d;
    }

    public final int e() {
        return this.f16628e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return M.g(this.f16624a, eVar.f16624a) && M.g(this.f16625b, eVar.f16625b) && M.g(this.f16626c, eVar.f16626c) && M.g(this.f16627d, eVar.f16627d) && this.f16628e == eVar.f16628e && M.g(this.f16629f, eVar.f16629f) && M.g(this.f16630g, eVar.f16630g) && M.g(this.f16631h, eVar.f16631h) && M.g(this.f16632i, eVar.f16632i);
    }

    @Nullable
    public final Integer f() {
        return this.f16629f;
    }

    @Nullable
    public final Integer g() {
        return this.f16630g;
    }

    @Nullable
    public final Float h() {
        return this.f16631h;
    }

    public int hashCode() {
        CharSequence charSequence = this.f16624a;
        int hashCode = (charSequence != null ? charSequence.hashCode() : 0) * 31;
        Drawable drawable = this.f16625b;
        int hashCode2 = (hashCode + (drawable != null ? drawable.hashCode() : 0)) * 31;
        Integer num = this.f16626c;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.f16627d;
        int hashCode4 = (((hashCode3 + (num2 != null ? num2.hashCode() : 0)) * 31) + this.f16628e) * 31;
        Integer num3 = this.f16629f;
        int hashCode5 = (hashCode4 + (num3 != null ? num3.hashCode() : 0)) * 31;
        Integer num4 = this.f16630g;
        int hashCode6 = (hashCode5 + (num4 != null ? num4.hashCode() : 0)) * 31;
        Float f10 = this.f16631h;
        int hashCode7 = (hashCode6 + (f10 != null ? f10.hashCode() : 0)) * 31;
        Integer num5 = this.f16632i;
        return hashCode7 + (num5 != null ? num5.hashCode() : 0);
    }

    @Nullable
    public final Integer i() {
        return this.f16632i;
    }

    @NotNull
    public final e j(@NotNull CharSequence text, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Px @Nullable Integer num2, int i10, @Nullable Integer num3, @Nullable Integer num4, @Nullable Float f10, @ColorInt @Nullable Integer num5) {
        M.p(text, "text");
        return new e(text, drawable, num, num2, i10, num3, num4, f10, num5);
    }

    @Nullable
    public final Integer l() {
        return this.f16630g;
    }

    @Nullable
    public final Drawable m() {
        return this.f16625b;
    }

    public final int n() {
        return this.f16628e;
    }

    @Nullable
    public final Integer o() {
        return this.f16627d;
    }

    @Nullable
    public final Integer p() {
        return this.f16626c;
    }

    @NotNull
    public final CharSequence q() {
        return this.f16624a;
    }

    @Nullable
    public final Integer r() {
        return this.f16632i;
    }

    @Nullable
    public final Float s() {
        return this.f16631h;
    }

    @Nullable
    public final Integer t() {
        return this.f16629f;
    }

    @NotNull
    public String toString() {
        return "IconSpinnerItem(text=" + this.f16624a + ", icon=" + ((Object) this.f16625b) + ", iconRes=" + ((Object) this.f16626c) + ", iconPadding=" + ((Object) this.f16627d) + ", iconGravity=" + this.f16628e + ", typeface=" + ((Object) this.f16629f) + ", gravity=" + ((Object) this.f16630g) + ", textSize=" + ((Object) this.f16631h) + ", textColor=" + ((Object) this.f16632i) + ")";
    }

    @Lf.k
    public e(@NotNull CharSequence charSequence, @Nullable Drawable drawable) {
        this(charSequence, drawable, null, null, 0, null, null, null, null, TypedValues.PositionType.TYPE_CURVE_FIT, null);
    }

    @Lf.k
    public e(@NotNull CharSequence charSequence, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num) {
        this(charSequence, drawable, num, null, 0, null, null, null, null, 504, null);
    }

    @Lf.k
    public e(@NotNull CharSequence charSequence, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Px @Nullable Integer num2) {
        this(charSequence, drawable, num, num2, 0, null, null, null, null, 496, null);
    }

    @Lf.k
    public e(@NotNull CharSequence charSequence, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Px @Nullable Integer num2, int i10) {
        this(charSequence, drawable, num, num2, i10, null, null, null, null, DisplayMetrics.DENSITY_XXHIGH, null);
    }

    @Lf.k
    public e(@NotNull CharSequence charSequence, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Px @Nullable Integer num2, int i10, @Nullable Integer num3) {
        this(charSequence, drawable, num, num2, i10, num3, null, null, null, 448, null);
    }

    @Lf.k
    public e(@NotNull CharSequence charSequence, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Px @Nullable Integer num2, int i10, @Nullable Integer num3, @Nullable Integer num4) {
        this(charSequence, drawable, num, num2, i10, num3, num4, null, null, 384, null);
    }

    @Lf.k
    public e(@NotNull CharSequence charSequence, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Px @Nullable Integer num2, int i10, @Nullable Integer num3, @Nullable Integer num4, @Nullable Float f10) {
        this(charSequence, drawable, num, num2, i10, num3, num4, f10, null, 256, null);
    }

    @Lf.k
    public e(@NotNull CharSequence text, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Px @Nullable Integer num2, int i10, @Nullable Integer num3, @Nullable Integer num4, @Nullable Float f10, @ColorInt @Nullable Integer num5) {
        M.p(text, "text");
        this.f16624a = text;
        this.f16625b = drawable;
        this.f16626c = num;
        this.f16627d = num2;
        this.f16628e = i10;
        this.f16629f = num3;
        this.f16630g = num4;
        this.f16631h = f10;
        this.f16632i = num5;
    }

    public e(CharSequence charSequence, Drawable drawable, Integer num, Integer num2, int i10, Integer num3, Integer num4, Float f10, Integer num5, int i11, C14026x c14026x) {
        this(charSequence, (i11 & 2) != 0 ? null : drawable, (i11 & 4) != 0 ? null : num, (i11 & 8) != 0 ? null : num2, (i11 & 16) != 0 ? 8388611 : i10, (i11 & 32) != 0 ? null : num3, (i11 & 64) != 0 ? null : num4, (i11 & 128) != 0 ? null : f10, (i11 & 256) == 0 ? num5 : null);
    }
}
