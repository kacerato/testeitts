package android.service.carrier;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/carrier/MessagePdu.class
 */
public final class MessagePdu implements Parcelable {
    public static final Parcelable.Creator<MessagePdu> CREATOR = null;

    public MessagePdu(List<byte[]> pduList) {
        throw new RuntimeException("Stub!");
    }

    public List<byte[]> getPdus() {
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
}
