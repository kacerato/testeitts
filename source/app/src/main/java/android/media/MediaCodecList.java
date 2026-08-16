package android.media;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodecList.class
 */
public final class MediaCodecList {
    public static final int ALL_CODECS = 1;
    public static final int REGULAR_CODECS = 0;

    public MediaCodecList(int kind) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static final int getCodecCount() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static final MediaCodecInfo getCodecInfoAt(int index) {
        throw new RuntimeException("Stub!");
    }

    public final MediaCodecInfo[] getCodecInfos() {
        throw new RuntimeException("Stub!");
    }

    public final String findDecoderForFormat(MediaFormat format) {
        throw new RuntimeException("Stub!");
    }

    public final String findEncoderForFormat(MediaFormat format) {
        throw new RuntimeException("Stub!");
    }
}
