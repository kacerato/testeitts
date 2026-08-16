package Zg;

import Lf.k;
import Yg.j;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nSection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Section.kt\norg/anastr/speedviewlib/components/Section\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"})
public final class a implements Parcelable {

    @NotNull
    public static final C0822a CREATOR = new C0822a(null);

    @Nullable
    public j f31221b;

    public float f31222c;

    public float f31223d;

    public float f31224e;

    public float f31225f;

    public int f31226g;

    @NotNull
    public b f31227h;

    public static final class C0822a implements Parcelable.Creator<a> {
        public C0822a(C14026x c14026x) {
            this();
        }

        @Override
        @NotNull
        public a createFromParcel(@NotNull Parcel parcel) {
            M.p(parcel, "parcel");
            return new a(parcel);
        }

        @Override
        @NotNull
        public a[] newArray(int i10) {
            return new a[i10];
        }

        public C0822a() {
        }
    }

    @k
    public a(float f10, float f11, int i10) {
        this(f10, f11, i10, 0.0f, null, 24, null);
    }

    public final void C(float f10) {
        this.f31222c = f10;
        j jVar = this.f31221b;
        if (jVar != null) {
            jVar.F();
        }
    }

    public final void b() {
        this.f31221b = null;
    }

    public final int c() {
        return this.f31226g;
    }

    public final float d() {
        return this.f31225f;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public final float e() {
        return this.f31223d;
    }

    public final float f() {
        return this.f31224e;
    }

    @NotNull
    public final b g() {
        return this.f31227h;
    }

    public final float h() {
        return this.f31222c;
    }

    @NotNull
    public final a i(@NotNull j gauge) {
        M.p(gauge, "gauge");
        if (this.f31221b != null) {
            throw new IllegalArgumentException("This instance of Section is already attached to a Gauge.");
        }
        this.f31221b = gauge;
        return this;
    }

    public final void l(int i10) {
        this.f31226g = i10;
        j jVar = this.f31221b;
        if (jVar != null) {
            jVar.F();
        }
    }

    public final void m(float f10) {
        p(f(), f10);
    }

    public final void n(float f10) {
        this.f31223d = f10;
        j jVar = this.f31221b;
        if (jVar != null) {
            jVar.F();
        }
    }

    public final void p(float f10, float f11) {
        this.f31224e = f10;
        this.f31225f = f11;
        j jVar = this.f31221b;
        if (jVar != null) {
            jVar.q(this);
        }
        j jVar2 = this.f31221b;
        if (jVar2 != null) {
            jVar2.r();
        }
        j jVar3 = this.f31221b;
        if (jVar3 != null) {
            jVar3.F();
        }
    }

    public final void q(float f10) {
        p(f10, d());
    }

    public final void t(@NotNull b value) {
        M.p(value, "value");
        this.f31227h = value;
        j jVar = this.f31221b;
        if (jVar != null) {
            jVar.F();
        }
    }

    @Override
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        M.p(parcel, "parcel");
        parcel.writeFloat(f());
        parcel.writeFloat(d());
        parcel.writeInt(this.f31226g);
        parcel.writeFloat(this.f31222c);
        parcel.writeSerializable(Integer.valueOf(this.f31227h.ordinal()));
        parcel.writeFloat(this.f31223d);
    }

    @k
    public a(float f10, float f11, int i10, float f12) {
        this(f10, f11, i10, f12, null, 16, null);
    }

    @k
    public a(float f10, float f11, int i10, float f12, @NotNull b style) {
        M.p(style, "style");
        this.f31222c = f12;
        this.f31224e = f10;
        this.f31225f = f11;
        this.f31226g = i10;
        this.f31227h = style;
    }

    public a(float f10, float f11, int i10, float f12, b bVar, int i11, C14026x c14026x) {
        this(f10, f11, i10, (i11 & 8) != 0 ? 0.0f : f12, (i11 & 16) != 0 ? b.BUTT : bVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull a section) {
        this(section.f(), section.d(), section.f31226g, section.f31222c, section.f31227h);
        M.p(section, "section");
        n(section.f31223d);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a(@NotNull Parcel parcel) {
        this(r2, r3, r4, r5, (b) r0);
        M.p(parcel, "parcel");
        float readFloat = parcel.readFloat();
        float readFloat2 = parcel.readFloat();
        int readInt = parcel.readInt();
        float readFloat3 = parcel.readFloat();
        Serializable readSerializable = parcel.readSerializable();
        M.n(readSerializable, "null cannot be cast to non-null type org.anastr.speedviewlib.components.Style");
        n(parcel.readFloat());
    }
}
