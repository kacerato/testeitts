package android.net.wifi.hotspot2.pps;

import android.os.Parcel;
import android.os.Parcelable;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/hotspot2/pps/Credential.class
 */
public final class Credential implements Parcelable {
    public static final Parcelable.Creator<Credential> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/hotspot2/pps/Credential$UserCredential.class
 */
    public static final class UserCredential implements Parcelable {
        public static final Parcelable.Creator<UserCredential> CREATOR = null;

        public UserCredential() {
            throw new RuntimeException("Stub!");
        }

        public UserCredential(UserCredential source) {
            throw new RuntimeException("Stub!");
        }

        public void setUsername(String username) {
            throw new RuntimeException("Stub!");
        }

        public String getUsername() {
            throw new RuntimeException("Stub!");
        }

        public void setPassword(String password) {
            throw new RuntimeException("Stub!");
        }

        public String getPassword() {
            throw new RuntimeException("Stub!");
        }

        public void setEapType(int eapType) {
            throw new RuntimeException("Stub!");
        }

        public int getEapType() {
            throw new RuntimeException("Stub!");
        }

        public void setNonEapInnerMethod(String nonEapInnerMethod) {
            throw new RuntimeException("Stub!");
        }

        public String getNonEapInnerMethod() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object thatObject) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/hotspot2/pps/Credential$CertificateCredential.class
 */
    public static final class CertificateCredential implements Parcelable {
        public static final Parcelable.Creator<CertificateCredential> CREATOR = null;

        public CertificateCredential() {
            throw new RuntimeException("Stub!");
        }

        public CertificateCredential(CertificateCredential source) {
            throw new RuntimeException("Stub!");
        }

        public void setCertType(String certType) {
            throw new RuntimeException("Stub!");
        }

        public String getCertType() {
            throw new RuntimeException("Stub!");
        }

        public void setCertSha256Fingerprint(byte[] certSha256Fingerprint) {
            throw new RuntimeException("Stub!");
        }

        public byte[] getCertSha256Fingerprint() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object thatObject) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/hotspot2/pps/Credential$SimCredential.class
 */
    public static final class SimCredential implements Parcelable {
        public static final Parcelable.Creator<SimCredential> CREATOR = null;

        public SimCredential() {
            throw new RuntimeException("Stub!");
        }

        public SimCredential(SimCredential source) {
            throw new RuntimeException("Stub!");
        }

        public void setImsi(String imsi) {
            throw new RuntimeException("Stub!");
        }

        public String getImsi() {
            throw new RuntimeException("Stub!");
        }

        public void setEapType(int eapType) {
            throw new RuntimeException("Stub!");
        }

        public int getEapType() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object thatObject) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }
    }

    public Credential() {
        throw new RuntimeException("Stub!");
    }

    public Credential(Credential source) {
        throw new RuntimeException("Stub!");
    }

    public void setRealm(String realm) {
        throw new RuntimeException("Stub!");
    }

    public String getRealm() {
        throw new RuntimeException("Stub!");
    }

    public void setUserCredential(UserCredential userCredential) {
        throw new RuntimeException("Stub!");
    }

    public UserCredential getUserCredential() {
        throw new RuntimeException("Stub!");
    }

    public void setCertCredential(CertificateCredential certCredential) {
        throw new RuntimeException("Stub!");
    }

    public CertificateCredential getCertCredential() {
        throw new RuntimeException("Stub!");
    }

    public void setSimCredential(SimCredential simCredential) {
        throw new RuntimeException("Stub!");
    }

    public SimCredential getSimCredential() {
        throw new RuntimeException("Stub!");
    }

    public void setCaCertificate(X509Certificate caCertificate) {
        throw new RuntimeException("Stub!");
    }

    public X509Certificate getCaCertificate() {
        throw new RuntimeException("Stub!");
    }

    public void setClientCertificateChain(X509Certificate[] certificateChain) {
        throw new RuntimeException("Stub!");
    }

    public X509Certificate[] getClientCertificateChain() {
        throw new RuntimeException("Stub!");
    }

    public void setClientPrivateKey(PrivateKey clientPrivateKey) {
        throw new RuntimeException("Stub!");
    }

    public PrivateKey getClientPrivateKey() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object thatObject) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
