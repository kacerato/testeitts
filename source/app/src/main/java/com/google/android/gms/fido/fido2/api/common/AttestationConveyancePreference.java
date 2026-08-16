package com.google.android.gms.fido.fido2.api.common;

import a1.InterfaceC3542j;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;

public enum AttestationConveyancePreference implements Parcelable {
    NONE("none"),
    INDIRECT(InterfaceC3542j.f31596G),
    DIRECT(InterfaceC3542j.f31597H);


    @NonNull
    public static final Parcelable.Creator<AttestationConveyancePreference> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            try {
                return AttestationConveyancePreference.b(parcel.readString());
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public final Object[] newArray(int i10) {
            return new AttestationConveyancePreference[i10];
        }
    };

    @NonNull
    private final String zzb;

    public static class UnsupportedAttestationConveyancePreferenceException extends Exception {
        public UnsupportedAttestationConveyancePreferenceException(@NonNull String str) {
            super(String.format("Attestation conveyance preference %s not supported", str));
        }
    }

    AttestationConveyancePreference(String str) {
        this.zzb = str;
    }

    @NonNull
    public static AttestationConveyancePreference b(@NonNull String str) throws UnsupportedAttestationConveyancePreferenceException {
        for (AttestationConveyancePreference attestationConveyancePreference : values()) {
            if (str.equals(attestationConveyancePreference.zzb)) {
                return attestationConveyancePreference;
            }
        }
        throw new UnsupportedAttestationConveyancePreferenceException(str);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    @NonNull
    public String toString() {
        return this.zzb;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeString(this.zzb);
    }
}
