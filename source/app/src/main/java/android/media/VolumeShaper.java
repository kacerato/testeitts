package android.media;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/VolumeShaper.class
 */
public final class VolumeShaper implements AutoCloseable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/VolumeShaper$Configuration.class
 */
    public static final class Configuration implements Parcelable {
        public static final int INTERPOLATOR_TYPE_CUBIC = 2;
        public static final int INTERPOLATOR_TYPE_CUBIC_MONOTONIC = 3;
        public static final int INTERPOLATOR_TYPE_LINEAR = 1;
        public static final int INTERPOLATOR_TYPE_STEP = 0;
        public static final Parcelable.Creator<Configuration> CREATOR = null;
        public static final Configuration CUBIC_RAMP = null;
        public static final Configuration LINEAR_RAMP = null;
        public static final Configuration SCURVE_RAMP = null;
        public static final Configuration SINE_RAMP = null;

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/VolumeShaper$Configuration$Builder.class
 */
        public static final class Builder {
            public Builder() {
                throw new RuntimeException("Stub!");
            }

            public Builder(Configuration configuration) {
                throw new RuntimeException("Stub!");
            }

            public Builder setInterpolatorType(int interpolatorType) {
                throw new RuntimeException("Stub!");
            }

            public Builder setDuration(long durationMillis) {
                throw new RuntimeException("Stub!");
            }

            public Builder setCurve(float[] times, float[] volumes) {
                throw new RuntimeException("Stub!");
            }

            public Builder reflectTimes() {
                throw new RuntimeException("Stub!");
            }

            public Builder invertVolumes() {
                throw new RuntimeException("Stub!");
            }

            public Builder scaleToEndVolume(float volume) {
                throw new RuntimeException("Stub!");
            }

            public Builder scaleToStartVolume(float volume) {
                throw new RuntimeException("Stub!");
            }

            public Configuration build() {
                throw new RuntimeException("Stub!");
            }
        }

        Configuration() {
            throw new RuntimeException("Stub!");
        }

        public static int getMaximumCurvePoints() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object o10) {
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

        public int getInterpolatorType() {
            throw new RuntimeException("Stub!");
        }

        public long getDuration() {
            throw new RuntimeException("Stub!");
        }

        public float[] getTimes() {
            throw new RuntimeException("Stub!");
        }

        public float[] getVolumes() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/VolumeShaper$Operation.class
 */
    public static final class Operation implements Parcelable {
        public static final Parcelable.Creator<Operation> CREATOR = null;
        public static final Operation PLAY = null;
        public static final Operation REVERSE = null;

        Operation() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object o10) {
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

    VolumeShaper() {
        throw new RuntimeException("Stub!");
    }

    public void apply(Operation operation) {
        throw new RuntimeException("Stub!");
    }

    public void replace(Configuration configuration, Operation operation, boolean join) {
        throw new RuntimeException("Stub!");
    }

    public float getVolume() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }
}
