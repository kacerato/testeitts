package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import java.io.InputStream;

public interface GlobalSyntheticsResourceProvider {
    InputStream getByteStream() throws ResourceException;

    Origin getOrigin();
}
