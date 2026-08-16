package com.ardor3d.image.util;

import com.ardor3d.image.Image;
import com.ardor3d.util.export.binary.BinaryImporter;
import java.io.IOException;
import java.io.InputStream;

public final class AbiLoader implements ImageLoader {
    @Override
    public Image load(InputStream inputStream, boolean z10) throws IOException {
        return (Image) BinaryImporter.getInstance().load(inputStream);
    }
}
