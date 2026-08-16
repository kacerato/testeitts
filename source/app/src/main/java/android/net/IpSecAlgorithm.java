package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;

public final class IpSecAlgorithm implements Parcelable {
    public static final String AUTH_CRYPT_AES_GCM = "rfc4106(gcm(aes))";
    public static final String AUTH_HMAC_MD5 = "hmac(md5)";
    public static final String AUTH_HMAC_SHA1 = "hmac(sha1)";
    public static final String AUTH_HMAC_SHA256 = "hmac(sha256)";
    public static final String AUTH_HMAC_SHA384 = "hmac(sha384)";
    public static final String AUTH_HMAC_SHA512 = "hmac(sha512)";
    public static final Parcelable.Creator<IpSecAlgorithm> CREATOR = null;
    public static final String CRYPT_AES_CBC = "cbc(aes)";

    public IpSecAlgorithm(@RecentlyNonNull String algorithm, @RecentlyNonNull byte[] key) {
        throw new RuntimeException("Stub!");
    }

    public IpSecAlgorithm(@RecentlyNonNull String algorithm, @RecentlyNonNull byte[] key, int truncLenBits) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String getName() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public byte[] getKey() {
        throw new RuntimeException("Stub!");
    }

    public int getTruncationLengthBits() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
