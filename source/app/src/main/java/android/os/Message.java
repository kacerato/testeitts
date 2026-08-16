package android.os;

import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/Message.class
 */
public final class Message implements Parcelable {
    public static final Parcelable.Creator<Message> CREATOR = null;
    public int arg1;
    public int arg2;
    public Object obj;
    public Messenger replyTo;
    public int sendingUid;
    public int what;

    public Message() {
        throw new RuntimeException("Stub!");
    }

    public static Message obtain() {
        throw new RuntimeException("Stub!");
    }

    public static Message obtain(Message orig) {
        throw new RuntimeException("Stub!");
    }

    public static Message obtain(Handler h10) {
        throw new RuntimeException("Stub!");
    }

    public static Message obtain(Handler h10, Runnable callback) {
        throw new RuntimeException("Stub!");
    }

    public static Message obtain(Handler h10, int what) {
        throw new RuntimeException("Stub!");
    }

    public static Message obtain(Handler h10, int what, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public static Message obtain(Handler h10, int what, int arg1, int arg2) {
        throw new RuntimeException("Stub!");
    }

    public static Message obtain(Handler h10, int what, int arg1, int arg2, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public void recycle() {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(Message o10) {
        throw new RuntimeException("Stub!");
    }

    public long getWhen() {
        throw new RuntimeException("Stub!");
    }

    public void setTarget(Handler target) {
        throw new RuntimeException("Stub!");
    }

    public Handler getTarget() {
        throw new RuntimeException("Stub!");
    }

    public Runnable getCallback() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getData() {
        throw new RuntimeException("Stub!");
    }

    public Bundle peekData() {
        throw new RuntimeException("Stub!");
    }

    public void setData(Bundle data) {
        throw new RuntimeException("Stub!");
    }

    public void sendToTarget() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAsynchronous() {
        throw new RuntimeException("Stub!");
    }

    public void setAsynchronous(boolean async) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
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
