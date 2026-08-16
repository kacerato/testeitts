package com.android.tools.r8;

public interface AndroidResourceOutput extends Resource {
    ByteDataView getByteDataView();

    ResourcePath getPath();
}
