package com.google.android.gms.fido.fido2.api.common;

import G0.A;
import G0.C2601y;
import a1.EnumC3543k;
import a1.EnumC3552u;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

public class COSEAlgorithmIdentifier implements Parcelable {

    @NonNull
    public static final Parcelable.Creator<COSEAlgorithmIdentifier> CREATOR = new k();

    @NonNull
    public final a f61459b;

    public static class UnsupportedAlgorithmIdentifierException extends Exception {
        public UnsupportedAlgorithmIdentifierException(int i10) {
            super("Algorithm with COSE value " + i10 + " not supported");
        }
    }

    public COSEAlgorithmIdentifier(@NonNull a aVar) {
        this.f61459b = (a) A.r(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static COSEAlgorithmIdentifier b(int i10) throws UnsupportedAlgorithmIdentifierException {
        EnumC3552u enumC3552u;
        if (i10 == EnumC3552u.LEGACY_RS1.a()) {
            enumC3552u = EnumC3552u.RS1;
        } else {
            EnumC3552u[] values = EnumC3552u.values();
            int length = values.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    for (EnumC3552u enumC3552u2 : EnumC3543k.values()) {
                        if (enumC3552u2.a() == i10) {
                            enumC3552u = enumC3552u2;
                        }
                    }
                    throw new UnsupportedAlgorithmIdentifierException(i10);
                }
                EnumC3552u enumC3552u3 = values[i11];
                if (enumC3552u3.a() == i10) {
                    enumC3552u = enumC3552u3;
                    break;
                }
                i11++;
            }
        }
        return new COSEAlgorithmIdentifier(enumC3552u);
    }

    public int c() {
        return this.f61459b.a();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@NonNull Object obj) {
        return (obj instanceof COSEAlgorithmIdentifier) && this.f61459b.a() == ((COSEAlgorithmIdentifier) obj).f61459b.a();
    }

    public int hashCode() {
        return C2601y.c(this.f61459b);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(this.f61459b.a());
    }
}
