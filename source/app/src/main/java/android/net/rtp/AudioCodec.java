package android.net.rtp;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/rtp/AudioCodec.class
 */
public class AudioCodec {
    public static final AudioCodec AMR = null;
    public static final AudioCodec GSM = null;
    public static final AudioCodec GSM_EFR = null;
    public static final AudioCodec PCMA = null;
    public static final AudioCodec PCMU = null;
    public final String fmtp;
    public final String rtpmap;
    public final int type;

    AudioCodec() {
        throw new RuntimeException("Stub!");
    }

    public static AudioCodec[] getCodecs() {
        throw new RuntimeException("Stub!");
    }

    public static AudioCodec getCodec(int type, String rtpmap, String fmtp) {
        throw new RuntimeException("Stub!");
    }
}
