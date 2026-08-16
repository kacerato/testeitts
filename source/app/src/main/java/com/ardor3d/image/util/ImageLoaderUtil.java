package com.ardor3d.image.util;

import com.ardor3d.image.Image;
import com.ardor3d.image.util.dds.DdsLoader;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.util.resource.ResourceSource;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class ImageLoaderUtil {
    private static ImageLoader defaultLoader;
    private static final Logger logger = Logger.getLogger(ImageLoaderUtil.class.getName());
    private static Map<String, ImageLoader> loaders = Collections.synchronizedMap(new HashMap());

    static {
        registerHandler(new DdsLoader(), ".DDS");
        registerHandler(new TgaLoader(), ".TGA");
        registerHandler(new AbiLoader(), ".ABI");
    }

    public static Image loadImage(ResourceSource resourceSource, boolean z10) {
        if (resourceSource == null) {
            logger.warning("loadImage(ResourceSource, boolean): file is null, defaultTexture used.");
            return TextureState.getDefaultTextureImage();
        }
        String type = resourceSource.getType();
        if (type == null) {
            logger.warning("loadImage(ResourceSource, boolean): type is null, defaultTexture used.");
            return TextureState.getDefaultTextureImage();
        }
        InputStream inputStream = null;
        try {
            try {
                inputStream = resourceSource.openStream();
                logger.log(Level.FINER, "loadImage(ResourceSource, boolean) opened stream: {0}", resourceSource);
                Image loadImage = loadImage(type, inputStream, z10);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return loadImage;
            } catch (IOException e10) {
                logger.log(Level.WARNING, "loadImage(ResourceSource, boolean): defaultTexture used", (Throwable) e10);
                Image defaultTextureImage = TextureState.getDefaultTextureImage();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                return defaultTextureImage;
            }
        } catch (Throwable th2) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
            }
            throw th2;
        }
    }

    public static void registerDefaultHandler(ImageLoader imageLoader) {
        defaultLoader = imageLoader;
    }

    public static void registerHandler(ImageLoader imageLoader, String... strArr) {
        for (String str : strArr) {
            loaders.put(str.toLowerCase(), imageLoader);
        }
    }

    public static void unregisterHandler(String... strArr) {
        for (String str : strArr) {
            loaders.remove(str.toLowerCase());
        }
    }

    public static Image loadImage(String str, InputStream inputStream, boolean z10) {
        Image image;
        try {
            ImageLoader imageLoader = loaders.get(str.toLowerCase());
            if (imageLoader == null) {
                imageLoader = defaultLoader;
            }
            if (imageLoader != null) {
                image = imageLoader.load(inputStream, z10);
            } else {
                logger.log(Level.WARNING, "Unable to read image of type: {0}", str);
                image = null;
            }
            if (image != null) {
                return image;
            }
            logger.warning("loadImage(String, InputStream, boolean): no imageData found.  defaultTexture used.");
            return TextureState.getDefaultTextureImage();
        } catch (IOException e10) {
            logger.log(Level.WARNING, "Could not load Image.", (Throwable) e10);
            return TextureState.getDefaultTextureImage();
        }
    }
}
