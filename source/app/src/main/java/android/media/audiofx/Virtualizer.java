package android.media.audiofx;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/Virtualizer.class
 */
public class Virtualizer extends AudioEffect {
    public static final int PARAM_STRENGTH = 1;
    public static final int PARAM_STRENGTH_SUPPORTED = 0;
    public static final int VIRTUALIZATION_MODE_AUTO = 1;
    public static final int VIRTUALIZATION_MODE_BINAURAL = 2;
    public static final int VIRTUALIZATION_MODE_OFF = 0;
    public static final int VIRTUALIZATION_MODE_TRANSAURAL = 3;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/Virtualizer$OnParameterChangeListener.class
 */
    public interface OnParameterChangeListener {
        void onParameterChange(Virtualizer virtualizer, int i10, int i11, short s10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/Virtualizer$Settings.class
 */
    public static class Settings {
        public short strength;

        public Settings() {
            throw new RuntimeException("Stub!");
        }

        public Settings(String settings) {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    public Virtualizer(int priority, int audioSession) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException, RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public boolean getStrengthSupported() {
        throw new RuntimeException("Stub!");
    }

    public void setStrength(short strength) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public short getRoundedStrength() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public boolean canVirtualize(int inputChannelMask, int virtualizationMode) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public boolean getSpeakerAngles(int inputChannelMask, int virtualizationMode, int[] angles) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public boolean forceVirtualizationMode(int virtualizationMode) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public int getVirtualizationMode() throws IllegalStateException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setParameterListener(OnParameterChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public Settings getProperties() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setProperties(Settings settings) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }
}
