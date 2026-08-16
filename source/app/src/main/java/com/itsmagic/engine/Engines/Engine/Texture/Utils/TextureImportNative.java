package com.itsmagic.engine.Engines.Engine.Texture.Utils;

import androidx.annotation.Keep;

@Keep
public class TextureImportNative {

    @Keep
    public static final class Result {

        @Keep
        public boolean alphaUsed;

        @Keep
        public int astcBlockX;

        @Keep
        public int astcBlockY;

        @Keep
        public boolean astcExported;

        @Keep
        public String errorMessage;

        @Keep
        public int outputHeight;

        @Keep
        public int outputWidth;

        @Keep
        public int sourceHeight;

        @Keep
        public int sourceWidth;

        @Keep
        public boolean success;

        @Keep
        public Result(boolean success, String errorMessage, int sourceWidth, int sourceHeight, int outputWidth, int outputHeight, boolean alphaUsed, boolean astcExported, int astcBlockX, int astcBlockY) {
            this.success = success;
            this.errorMessage = errorMessage;
            this.sourceWidth = sourceWidth;
            this.sourceHeight = sourceHeight;
            this.outputWidth = outputWidth;
            this.outputHeight = outputHeight;
            this.alphaUsed = alphaUsed;
            this.astcExported = astcExported;
            this.astcBlockX = astcBlockX;
            this.astcBlockY = astcBlockY;
        }
    }

    static {
        System.loadLibrary("native-texture-importer");
    }

    public static Result importTexture(String inputPath, String outputTexturePath, String outputAstcPath, TextureConfig config, boolean parallel) {
        String str;
        if (inputPath == null || inputPath.isEmpty()) {
            throw new IllegalArgumentException("inputPath can't be null or empty");
        }
        if (outputTexturePath == null || outputTexturePath.isEmpty()) {
            throw new IllegalArgumentException("outputTexturePath can't be null or empty");
        }
        if (config == null) {
            config = new TextureConfig();
        }
        return nativeImportTexture(inputPath, outputTexturePath, outputAstcPath != null ? outputAstcPath : "", X7.a.m().toJson(config), (!config.allowOpacity || (str = config.opacityTextureFile) == null) ? "" : str, !parallel ? 1 : Math.max(1, O9.b.a() - 1), Result.class);
    }

    private static native Result nativeImportTexture(String inputPath, String outputTexturePath, String outputAstcPath, String configJson, String opacityPath, int astcThreadCount, Class<Result> resultClass);
}
