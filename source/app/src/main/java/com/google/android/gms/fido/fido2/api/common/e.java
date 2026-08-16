package com.google.android.gms.fido.fido2.api.common;

import G0.A;
import G0.C2601y;
import I0.c;
import a1.N;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.fido.fido2.api.common.COSEAlgorithmIdentifier;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialType;

@c.g({1})
@c.a(creator = "PublicKeyCredentialParametersCreator")
public class e extends I0.a {

    @NonNull
    public static final Parcelable.Creator<e> CREATOR = new N();

    @NonNull
    @c.InterfaceC0186c(getter = "getTypeAsString", id = 2, type = "java.lang.String")
    public final PublicKeyCredentialType f61500b;

    @NonNull
    @c.InterfaceC0186c(getter = "getAlgorithmIdAsInteger", id = 3, type = "java.lang.Integer")
    public final COSEAlgorithmIdentifier f61501c;

    @c.b
    public e(@NonNull @c.e(id = 2) String str, @c.e(id = 3) int i10) {
        A.r(str);
        try {
            this.f61500b = PublicKeyCredentialType.b(str);
            A.r(Integer.valueOf(i10));
            try {
                this.f61501c = COSEAlgorithmIdentifier.b(i10);
            } catch (COSEAlgorithmIdentifier.UnsupportedAlgorithmIdentifierException e10) {
                throw new IllegalArgumentException(e10);
            }
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e11) {
            throw new IllegalArgumentException(e11);
        }
    }

    @NonNull
    public PublicKeyCredentialType b0() {
        return this.f61500b;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f61500b.equals(eVar.f61500b) && this.f61501c.equals(eVar.f61501c);
    }

    public int hashCode() {
        return C2601y.c(this.f61500b, this.f61501c);
    }

    @NonNull
    public COSEAlgorithmIdentifier n() {
        return this.f61501c;
    }

    @NonNull
    public String n0() {
        return this.f61500b.toString();
    }

    public int t() {
        return this.f61501c.c();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, n0(), false);
        I0.b.I(parcel, 3, Integer.valueOf(t()), false);
        I0.b.b(parcel, a10);
    }
}
