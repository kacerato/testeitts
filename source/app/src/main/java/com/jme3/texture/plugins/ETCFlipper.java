package com.jme3.texture.plugins;

import com.jme3.texture.Image;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public class ETCFlipper {
    private static final Logger logger = Logger.getLogger(ETCFlipper.class.getName());

    public static ByteBuffer flipETC(ByteBuffer byteBuffer, int i10, int i11, Image.Format format) {
        logger.warning("ETC texture flipping is not supported yet");
        return byteBuffer;
    }
}
