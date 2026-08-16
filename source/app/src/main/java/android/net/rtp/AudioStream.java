package android.net.rtp;

import java.net.InetAddress;
import java.net.SocketException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/rtp/AudioStream.class
 */
public class AudioStream extends RtpStream {
    public AudioStream(InetAddress address) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isBusy() {
        throw new RuntimeException("Stub!");
    }

    public AudioGroup getGroup() {
        throw new RuntimeException("Stub!");
    }

    public void join(AudioGroup group) {
        throw new RuntimeException("Stub!");
    }

    public AudioCodec getCodec() {
        throw new RuntimeException("Stub!");
    }

    public void setCodec(AudioCodec codec) {
        throw new RuntimeException("Stub!");
    }

    public int getDtmfType() {
        throw new RuntimeException("Stub!");
    }

    public void setDtmfType(int type) {
        throw new RuntimeException("Stub!");
    }
}
