package F0;

import G0.A;
import G0.C2601y;
import android.database.CharArrayBuffer;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.data.DataHolder;

@C0.a
public abstract class f {

    @NonNull
    @C0.a
    public final DataHolder f6126a;

    @C0.a
    public int f6127b;

    public int f6128c;

    @C0.a
    public f(@NonNull DataHolder dataHolder, int i10) {
        this.f6126a = (DataHolder) A.r(dataHolder);
        n(i10);
    }

    @C0.a
    public void a(@NonNull String str, @NonNull CharArrayBuffer charArrayBuffer) {
        this.f6126a.B0(str, this.f6127b, this.f6128c, charArrayBuffer);
    }

    @C0.a
    public boolean b(@NonNull String str) {
        return this.f6126a.p(str, this.f6127b, this.f6128c);
    }

    @NonNull
    @C0.a
    public byte[] c(@NonNull String str) {
        return this.f6126a.t(str, this.f6127b, this.f6128c);
    }

    @C0.a
    public int d() {
        return this.f6127b;
    }

    @C0.a
    public double e(@NonNull String str) {
        return this.f6126a.z0(str, this.f6127b, this.f6128c);
    }

    @C0.a
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (C2601y.b(Integer.valueOf(fVar.f6127b), Integer.valueOf(this.f6127b)) && C2601y.b(Integer.valueOf(fVar.f6128c), Integer.valueOf(this.f6128c)) && fVar.f6126a == this.f6126a) {
                return true;
            }
        }
        return false;
    }

    @C0.a
    public float f(@NonNull String str) {
        return this.f6126a.A0(str, this.f6127b, this.f6128c);
    }

    @C0.a
    public int g(@NonNull String str) {
        return this.f6126a.b0(str, this.f6127b, this.f6128c);
    }

    @C0.a
    public long h(@NonNull String str) {
        return this.f6126a.n0(str, this.f6127b, this.f6128c);
    }

    @C0.a
    public int hashCode() {
        return C2601y.c(Integer.valueOf(this.f6127b), Integer.valueOf(this.f6128c), this.f6126a);
    }

    @NonNull
    @C0.a
    public String i(@NonNull String str) {
        return this.f6126a.v0(str, this.f6127b, this.f6128c);
    }

    @C0.a
    public boolean j(@NonNull String str) {
        return this.f6126a.x0(str);
    }

    @C0.a
    public boolean k(@NonNull String str) {
        return this.f6126a.y0(str, this.f6127b, this.f6128c);
    }

    @C0.a
    public boolean l() {
        return !this.f6126a.isClosed();
    }

    @Nullable
    @C0.a
    public Uri m(@NonNull String str) {
        String v02 = this.f6126a.v0(str, this.f6127b, this.f6128c);
        if (v02 == null) {
            return null;
        }
        return Uri.parse(v02);
    }

    public final void n(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.f6126a.getCount()) {
            z10 = true;
        }
        A.x(z10);
        this.f6127b = i10;
        this.f6128c = this.f6126a.w0(i10);
    }
}
