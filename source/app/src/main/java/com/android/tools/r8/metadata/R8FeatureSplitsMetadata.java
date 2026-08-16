package com.android.tools.r8.metadata;

import java.util.List;

public interface R8FeatureSplitsMetadata {
    List<R8FeatureSplitMetadata> getFeatureSplits();

    boolean isIsolatedSplitsEnabled();
}
