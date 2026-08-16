package Bd;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.fragment.app.Fragment;
import java.io.Serializable;
import java.util.ArrayList;

public class a {

    public final Bundle f1690a;

    public a() {
        this(null);
    }

    public static a c(Bundle bundle) {
        return new a(bundle);
    }

    public a A(String str, ArrayList<? extends Parcelable> arrayList) {
        this.f1690a.putParcelableArrayList(str, arrayList);
        return this;
    }

    public a B(String str, Serializable serializable) {
        this.f1690a.putSerializable(str, serializable);
        return this;
    }

    public a C(String str, short s10) {
        this.f1690a.putShort(str, s10);
        return this;
    }

    public a D(String str, short[] sArr) {
        this.f1690a.putShortArray(str, sArr);
        return this;
    }

    @TargetApi(21)
    public a E(String str, Size size) {
        this.f1690a.putSize(str, size);
        return this;
    }

    @TargetApi(21)
    public a F(String str, SizeF sizeF) {
        this.f1690a.putSizeF(str, sizeF);
        return this;
    }

    public a G(String str, SparseArray<? extends Parcelable> sparseArray) {
        this.f1690a.putSparseParcelableArray(str, sparseArray);
        return this;
    }

    public a H(String str, String str2) {
        this.f1690a.putString(str, str2);
        return this;
    }

    public a I(String str, String[] strArr) {
        this.f1690a.putStringArray(str, strArr);
        return this;
    }

    public a J(String str, ArrayList<String> arrayList) {
        this.f1690a.putStringArrayList(str, arrayList);
        return this;
    }

    public Bundle a() {
        return this.f1690a;
    }

    public <T extends Fragment> T b(T t10) {
        t10.setArguments(a());
        return t10;
    }

    public a d(Bundle bundle) {
        this.f1690a.putAll(bundle);
        return this;
    }

    @TargetApi(18)
    public a e(String str, IBinder iBinder) {
        this.f1690a.putBinder(str, iBinder);
        return this;
    }

    public a f(String str, boolean z10) {
        this.f1690a.putBoolean(str, z10);
        return this;
    }

    public a g(String str, boolean[] zArr) {
        this.f1690a.putBooleanArray(str, zArr);
        return this;
    }

    public a h(String str, Bundle bundle) {
        this.f1690a.putBundle(str, bundle);
        return this;
    }

    public a i(String str, byte b10) {
        this.f1690a.putByte(str, b10);
        return this;
    }

    public a j(String str, byte[] bArr) {
        this.f1690a.putByteArray(str, bArr);
        return this;
    }

    public a k(String str, char c10) {
        this.f1690a.putChar(str, c10);
        return this;
    }

    public a l(String str, char[] cArr) {
        this.f1690a.putCharArray(str, cArr);
        return this;
    }

    public a m(String str, CharSequence charSequence) {
        this.f1690a.putCharSequence(str, charSequence);
        return this;
    }

    @TargetApi(8)
    public a n(String str, CharSequence[] charSequenceArr) {
        this.f1690a.putCharSequenceArray(str, charSequenceArr);
        return this;
    }

    @TargetApi(8)
    public a o(String str, ArrayList<CharSequence> arrayList) {
        this.f1690a.putCharSequenceArrayList(str, arrayList);
        return this;
    }

    public a p(String str, double d10) {
        this.f1690a.putDouble(str, d10);
        return this;
    }

    public a q(String str, double[] dArr) {
        this.f1690a.putDoubleArray(str, dArr);
        return this;
    }

    public a r(String str, float f10) {
        this.f1690a.putFloat(str, f10);
        return this;
    }

    public a s(String str, float[] fArr) {
        this.f1690a.putFloatArray(str, fArr);
        return this;
    }

    public a t(String str, int i10) {
        this.f1690a.putInt(str, i10);
        return this;
    }

    public a u(String str, int[] iArr) {
        this.f1690a.putIntArray(str, iArr);
        return this;
    }

    public a v(String str, ArrayList<Integer> arrayList) {
        this.f1690a.putIntegerArrayList(str, arrayList);
        return this;
    }

    public a w(String str, long j10) {
        this.f1690a.putLong(str, j10);
        return this;
    }

    public a x(String str, long[] jArr) {
        this.f1690a.putLongArray(str, jArr);
        return this;
    }

    public a y(String str, Parcelable parcelable) {
        this.f1690a.putParcelable(str, parcelable);
        return this;
    }

    public a z(String str, Parcelable[] parcelableArr) {
        this.f1690a.putParcelableArray(str, parcelableArr);
        return this;
    }

    public a(Bundle bundle) {
        this.f1690a = bundle == null ? new Bundle() : new Bundle(bundle);
    }
}
