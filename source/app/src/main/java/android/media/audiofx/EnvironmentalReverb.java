package android.media.audiofx;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/EnvironmentalReverb.class
 */
public class EnvironmentalReverb extends AudioEffect {
    public static final int PARAM_DECAY_HF_RATIO = 3;
    public static final int PARAM_DECAY_TIME = 2;
    public static final int PARAM_DENSITY = 9;
    public static final int PARAM_DIFFUSION = 8;
    public static final int PARAM_REFLECTIONS_DELAY = 5;
    public static final int PARAM_REFLECTIONS_LEVEL = 4;
    public static final int PARAM_REVERB_DELAY = 7;
    public static final int PARAM_REVERB_LEVEL = 6;
    public static final int PARAM_ROOM_HF_LEVEL = 1;
    public static final int PARAM_ROOM_LEVEL = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/EnvironmentalReverb$OnParameterChangeListener.class
 */
    public interface OnParameterChangeListener {
        void onParameterChange(EnvironmentalReverb environmentalReverb, int i10, int i11, int i12);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/EnvironmentalReverb$Settings.class
 */
    public static class Settings {
        public short decayHFRatio;
        public int decayTime;
        public short density;
        public short diffusion;
        public int reflectionsDelay;
        public short reflectionsLevel;
        public int reverbDelay;
        public short reverbLevel;
        public short roomHFLevel;
        public short roomLevel;

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

    public EnvironmentalReverb(int priority, int audioSession) throws IllegalArgumentException, UnsupportedOperationException, RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public void setRoomLevel(short room) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public short getRoomLevel() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setRoomHFLevel(short roomHF) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public short getRoomHFLevel() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setDecayTime(int decayTime) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public int getDecayTime() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setDecayHFRatio(short decayHFRatio) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public short getDecayHFRatio() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setReflectionsLevel(short reflectionsLevel) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public short getReflectionsLevel() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setReflectionsDelay(int reflectionsDelay) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public int getReflectionsDelay() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setReverbLevel(short reverbLevel) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public short getReverbLevel() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setReverbDelay(int reverbDelay) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public int getReverbDelay() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setDiffusion(short diffusion) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public short getDiffusion() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public void setDensity(short density) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public short getDensity() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
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
