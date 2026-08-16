package com.google.android.gms.fido.fido2.api.common;

import G0.C2601y;
import I0.c;
import a1.V;
import a1.i0;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;

@c.g({1})
@c.a(creator = "AuthenticatorSelectionCriteriaCreator")
public class c extends I0.a {

    @NonNull
    public static final Parcelable.Creator<c> CREATOR = new i0();

    @Nullable
    @c.InterfaceC0186c(getter = "getAttachmentAsString", id = 2, type = "java.lang.String")
    public final Attachment f61471b;

    @Nullable
    @c.InterfaceC0186c(getter = "getRequireResidentKey", id = 3)
    public final Boolean f61472c;

    @Nullable
    @c.InterfaceC0186c(getter = "getRequireUserVerificationAsString", id = 4, type = "java.lang.String")
    public final V f61473d;

    @Nullable
    @c.InterfaceC0186c(getter = "getResidentKeyRequirementAsString", id = 5, type = "java.lang.String")
    public final ResidentKeyRequirement f61474e;

    public static class a {

        public Attachment f61475a;

        public Boolean f61476b;

        public ResidentKeyRequirement f61477c;

        @NonNull
        public c a() {
            Attachment attachment = this.f61475a;
            String attachment2 = attachment == null ? null : attachment.toString();
            Boolean bool = this.f61476b;
            ResidentKeyRequirement residentKeyRequirement = this.f61477c;
            return new c(attachment2, bool, null, residentKeyRequirement == null ? null : residentKeyRequirement.toString());
        }

        @NonNull
        public a b(@Nullable Attachment attachment) {
            this.f61475a = attachment;
            return this;
        }

        @NonNull
        public a c(@Nullable Boolean bool) {
            this.f61476b = bool;
            return this;
        }

        @NonNull
        public a d(@Nullable ResidentKeyRequirement residentKeyRequirement) {
            this.f61477c = residentKeyRequirement;
            return this;
        }
    }

    @c.b
    public c(@Nullable @c.e(id = 2) String str, @Nullable @c.e(id = 3) Boolean bool, @Nullable @c.e(id = 4) String str2, @Nullable @c.e(id = 5) String str3) {
        Attachment b10;
        ResidentKeyRequirement residentKeyRequirement = null;
        if (str == null) {
            b10 = null;
        } else {
            try {
                b10 = Attachment.b(str);
            } catch (Attachment.UnsupportedAttachmentException | ResidentKeyRequirement.UnsupportedResidentKeyRequirementException | zzax e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        this.f61471b = b10;
        this.f61472c = bool;
        this.f61473d = str2 == null ? null : V.b(str2);
        if (str3 != null) {
            residentKeyRequirement = ResidentKeyRequirement.b(str3);
        }
        this.f61474e = residentKeyRequirement;
    }

    @Nullable
    public Boolean b0() {
        return this.f61472c;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return C2601y.b(this.f61471b, cVar.f61471b) && C2601y.b(this.f61472c, cVar.f61472c) && C2601y.b(this.f61473d, cVar.f61473d) && C2601y.b(this.f61474e, cVar.f61474e);
    }

    public int hashCode() {
        return C2601y.c(this.f61471b, this.f61472c, this.f61473d, this.f61474e);
    }

    @Nullable
    public Attachment n() {
        return this.f61471b;
    }

    @Nullable
    public ResidentKeyRequirement n0() {
        return this.f61474e;
    }

    @Nullable
    public String t() {
        Attachment attachment = this.f61471b;
        if (attachment == null) {
            return null;
        }
        return attachment.toString();
    }

    @Nullable
    public String u0() {
        ResidentKeyRequirement residentKeyRequirement = this.f61474e;
        if (residentKeyRequirement == null) {
            return null;
        }
        return residentKeyRequirement.toString();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, t(), false);
        I0.b.j(parcel, 3, b0(), false);
        V v10 = this.f61473d;
        I0.b.Y(parcel, 4, v10 == null ? null : v10.toString(), false);
        I0.b.Y(parcel, 5, u0(), false);
        I0.b.b(parcel, a10);
    }
}
