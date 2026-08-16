package android.icu.util;

public final class LocaleData {
    public static final int ALT_QUOTATION_END = 3;
    public static final int ALT_QUOTATION_START = 2;
    public static final int QUOTATION_END = 1;
    public static final int QUOTATION_START = 0;

    LocaleData() {
        throw new RuntimeException("Stub!");
    }

    public static LocaleData getInstance(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static LocaleData getInstance() {
        throw new RuntimeException("Stub!");
    }

    public void setNoSubstitute(boolean setting) {
        throw new RuntimeException("Stub!");
    }

    public boolean getNoSubstitute() {
        throw new RuntimeException("Stub!");
    }

    public String getDelimiter(int type) {
        throw new RuntimeException("Stub!");
    }

    public static MeasurementSystem getMeasurementSystem(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static PaperSize getPaperSize(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static VersionInfo getCLDRVersion() {
        throw new RuntimeException("Stub!");
    }

    public static final class MeasurementSystem {
        public static final MeasurementSystem SI = null;
        public static final MeasurementSystem UK = null;
        public static final MeasurementSystem US = null;

        MeasurementSystem() {
            throw new RuntimeException("Stub!");
        }
    }

    public static final class PaperSize {
        PaperSize(int h10, int w10) {
            throw new RuntimeException("Stub!");
        }

        public int getHeight() {
            throw new RuntimeException("Stub!");
        }

        public int getWidth() {
            throw new RuntimeException("Stub!");
        }
    }
}
