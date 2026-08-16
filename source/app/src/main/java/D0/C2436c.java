package D0;

import G0.C2601y;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.C11894a.d;

@C0.a
public final class C2436c<O extends C11894a.d> {

    public final int f4629a;

    public final C11894a f4630b;

    @Nullable
    public final C11894a.d f4631c;

    @Nullable
    public final String f4632d;

    public C2436c(C11894a c11894a, @Nullable C11894a.d dVar, @Nullable String str) {
        this.f4630b = c11894a;
        this.f4631c = dVar;
        this.f4632d = str;
        this.f4629a = C2601y.c(c11894a, dVar, str);
    }

    @NonNull
    @C0.a
    public static <O extends C11894a.d> C2436c<O> a(@NonNull C11894a<O> c11894a, @Nullable O o10, @Nullable String str) {
        return new C2436c<>(c11894a, o10, str);
    }

    @NonNull
    public final String b() {
        return this.f4630b.d();
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2436c)) {
            return false;
        }
        C2436c c2436c = (C2436c) obj;
        return C2601y.b(this.f4630b, c2436c.f4630b) && C2601y.b(this.f4631c, c2436c.f4631c) && C2601y.b(this.f4632d, c2436c.f4632d);
    }

    public final int hashCode() {
        return this.f4629a;
    }
}
