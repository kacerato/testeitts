package androidx.privacysandbox.ads.adservices.internal;

import android.os.Build;
import android.os.ext.SdkExtensions;

public final class AdServicesInfo {
    public static final AdServicesInfo INSTANCE = new AdServicesInfo();

    public static final class Extensions30ExtImpl {
        public static final Extensions30ExtImpl INSTANCE = new Extensions30ExtImpl();

        private Extensions30ExtImpl() {
        }

        public final int getAdExtServicesVersionS() {
            int extensionVersion;
            extensionVersion = SdkExtensions.getExtensionVersion(31);
            return extensionVersion;
        }
    }

    public static final class Extensions30Impl {
        public static final Extensions30Impl INSTANCE = new Extensions30Impl();

        private Extensions30Impl() {
        }

        public final int getAdServicesVersion() {
            int extensionVersion;
            extensionVersion = SdkExtensions.getExtensionVersion(1000000);
            return extensionVersion;
        }
    }

    private AdServicesInfo() {
    }

    public final int adServicesVersion() {
        if (Build.VERSION.SDK_INT >= 33) {
            return Extensions30Impl.INSTANCE.getAdServicesVersion();
        }
        return 0;
    }

    public final int extServicesVersionS() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 == 31 || i10 == 32) {
            return Extensions30ExtImpl.INSTANCE.getAdExtServicesVersionS();
        }
        return 0;
    }
}
