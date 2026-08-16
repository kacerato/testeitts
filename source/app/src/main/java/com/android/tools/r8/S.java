package com.android.tools.r8;

import java.nio.file.Path;

public interface S extends ProgramConsumer, DataResourceConsumer {
    Path internalGetOutputPath();
}
