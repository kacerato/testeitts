package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;

@c.a(creator = "PrfExtensionCreator")
public final class I extends I0.a {
    public static final Parcelable.Creator<I> CREATOR = new J();

    @NonNull
    @c.InterfaceC0186c(getter = "getEvaluationPoints", id = 1)
    public final byte[][] f31542b;

    @c.b
    public I(@NonNull @c.e(id = 1) byte[][] bArr) {
        G0.A.a(bArr != null);
        G0.A.a(1 == ((bArr.length & 1) ^ 1));
        int i10 = 0;
        while (i10 < bArr.length) {
            G0.A.a(i10 == 0 || bArr[i10] != null);
            int i11 = i10 + 1;
            G0.A.a(bArr[i11] != null);
            int length = bArr[i11].length;
            G0.A.a(length == 32 || length == 64);
            i10 += 2;
        }
        this.f31542b = bArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof I) {
            return Arrays.deepEquals(this.f31542b, ((I) obj).f31542b);
        }
        return false;
    }

    public final int hashCode() {
        int i10 = 0;
        for (byte[] bArr : this.f31542b) {
            i10 ^= C2601y.c(bArr);
        }
        return i10;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.n(parcel, 1, this.f31542b, false);
        I0.b.b(parcel, a10);
    }
}
