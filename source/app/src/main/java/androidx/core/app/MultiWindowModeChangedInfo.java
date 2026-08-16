package androidx.core.app;

import android.content.res.Configuration;

public final class MultiWindowModeChangedInfo {
    private final boolean mIsInMultiWindowMode;
    private final Configuration mNewConfig;

    public MultiWindowModeChangedInfo(boolean z10) {
        this.mIsInMultiWindowMode = z10;
        this.mNewConfig = null;
    }

    public Configuration getNewConfig() {
        Configuration configuration = this.mNewConfig;
        if (configuration != null) {
            return configuration;
        }
        throw new IllegalStateException("MultiWindowModeChangedInfo must be constructed with the constructor that takes a Configuration to call getNewConfig(). Are you running on an API 26 or higher device that makes this information available?");
    }

    public boolean isInMultiWindowMode() {
        return this.mIsInMultiWindowMode;
    }

    public MultiWindowModeChangedInfo(boolean z10, Configuration configuration) {
        this.mIsInMultiWindowMode = z10;
        this.mNewConfig = configuration;
    }
}
