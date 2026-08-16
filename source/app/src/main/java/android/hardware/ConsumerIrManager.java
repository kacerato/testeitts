package android.hardware;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/ConsumerIrManager.class
 */
public final class ConsumerIrManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/ConsumerIrManager$CarrierFrequencyRange.class
 */
    public final class CarrierFrequencyRange {
        public CarrierFrequencyRange(int min, int max) {
            throw new RuntimeException("Stub!");
        }

        public int getMinFrequency() {
            throw new RuntimeException("Stub!");
        }

        public int getMaxFrequency() {
            throw new RuntimeException("Stub!");
        }
    }

    ConsumerIrManager() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasIrEmitter() {
        throw new RuntimeException("Stub!");
    }

    public void transmit(int carrierFrequency, int[] pattern) {
        throw new RuntimeException("Stub!");
    }

    public CarrierFrequencyRange[] getCarrierFrequencies() {
        throw new RuntimeException("Stub!");
    }
}
