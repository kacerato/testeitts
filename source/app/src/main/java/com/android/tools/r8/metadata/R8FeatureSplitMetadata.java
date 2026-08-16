package com.android.tools.r8.metadata;

import java.util.List;

public interface R8FeatureSplitMetadata {
    List<R8DexFileMetadata> getDexFilesMetadata();
}
