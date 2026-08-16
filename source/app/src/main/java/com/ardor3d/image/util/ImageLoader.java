package com.ardor3d.image.util;

import com.ardor3d.image.Image;
import java.io.IOException;
import java.io.InputStream;

public interface ImageLoader {
    Image load(InputStream inputStream, boolean z10) throws IOException;
}
