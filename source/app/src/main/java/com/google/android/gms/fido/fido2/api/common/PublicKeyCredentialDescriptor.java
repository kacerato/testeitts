package com.google.android.gms.fido.fido2.api.common;

import G0.A;
import G0.C2601y;
import I0.c;
import a1.M;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialType;
import j1.AbstractC13797v;
import j1.T;
import java.util.Arrays;
import java.util.List;

@c.g({1})
@c.a(creator = "PublicKeyCredentialDescriptorCreator")
public class PublicKeyCredentialDescriptor extends I0.a {

    @NonNull
    @c.InterfaceC0186c(getter = "getTypeAsString", id = 2, type = "java.lang.String")
    public final PublicKeyCredentialType f61461b;

    @NonNull
    @c.InterfaceC0186c(getter = "getId", id = 3)
    public final byte[] f61462c;

    @Nullable
    @c.InterfaceC0186c(getter = "getTransports", id = 4)
    public final List f61463d;

    public static final AbstractC13797v f61460e = AbstractC13797v.m(T.f92495a, T.f92496b);

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialDescriptor> CREATOR = new M();

    public static class UnsupportedPubKeyCredDescriptorException extends Exception {
        public UnsupportedPubKeyCredDescriptorException(@NonNull String str) {
            super(str);
        }

        public UnsupportedPubKeyCredDescriptorException(@NonNull String str, @NonNull Throwable th2) {
            super(str, th2);
        }
    }

    @c.b
    public PublicKeyCredentialDescriptor(@NonNull @c.e(id = 2) String str, @NonNull @c.e(id = 3) byte[] bArr, @Nullable @c.e(id = 4) List<Transport> list) {
        A.r(str);
        try {
            this.f61461b = PublicKeyCredentialType.b(str);
            this.f61462c = (byte[]) A.r(bArr);
            this.f61463d = list;
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @NonNull
    public PublicKeyCredentialType b0() {
        return this.f61461b;
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        if (!(obj instanceof PublicKeyCredentialDescriptor)) {
            return false;
        }
        PublicKeyCredentialDescriptor publicKeyCredentialDescriptor = (PublicKeyCredentialDescriptor) obj;
        if (!this.f61461b.equals(publicKeyCredentialDescriptor.f61461b) || !Arrays.equals(this.f61462c, publicKeyCredentialDescriptor.f61462c)) {
            return false;
        }
        List list2 = this.f61463d;
        if (list2 == null && publicKeyCredentialDescriptor.f61463d == null) {
            return true;
        }
        return list2 != null && (list = publicKeyCredentialDescriptor.f61463d) != null && list2.containsAll(list) && publicKeyCredentialDescriptor.f61463d.containsAll(this.f61463d);
    }

    public int hashCode() {
        return C2601y.c(this.f61461b, Integer.valueOf(Arrays.hashCode(this.f61462c)), this.f61463d);
    }

    @NonNull
    public byte[] n() {
        return this.f61462c;
    }

    @NonNull
    public String n0() {
        return this.f61461b.toString();
    }

    @Nullable
    public List<Transport> t() {
        return this.f61463d;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, n0(), false);
        I0.b.m(parcel, 3, n(), false);
        I0.b.d0(parcel, 4, t(), false);
        I0.b.b(parcel, a10);
    }
}
