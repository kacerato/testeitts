package com.ardor3d.ui.text;

import com.ardor3d.math.Matrix3;
import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.renderer.state.BlendState;
import com.ardor3d.renderer.state.CullState;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.ZBufferState;
import com.ardor3d.scenegraph.hint.LightCombineMode;
import com.ardor3d.scenegraph.hint.TextureCombineMode;
import com.ardor3d.ui.text.BMText;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.ardor3d.util.resource.URLResourceSource;
import java.util.logging.Logger;

public class BasicText extends BMText {
    public static BMFont DEFAULT_FONT;
    static Logger logger = Logger.getLogger(BasicText.class.getName());
    public static double DEFAULT_FONT_SIZE = 24.0d;

    static {
        try {
            DEFAULT_FONT = new BMFont(new URLResourceSource(ResourceLocatorTool.getClassPathResource(BasicText.class, "com/ardor3d/ui/text/arial-24-bold-regular.fnt")), true);
        } catch (Exception e10) {
            logger.throwing(BasicText.class.getCanonicalName(), "static font init", e10);
        }
    }

    public BasicText(String str, String str2, BMFont bMFont, double d10) {
        super(str, str2, bMFont);
        getSceneHints().setRenderBucketType(RenderBucketType.Ortho);
        setFontScale(d10);
        setAutoFade(BMText.AutoFade.Off);
        setAutoScale(BMText.AutoScale.Off);
        setAutoRotate(false);
        setRotation(new Matrix3().fromAngles(-1.5707963267948966d, 0.0d, 0.0d));
        ZBufferState zBufferState = new ZBufferState();
        zBufferState.setEnabled(false);
        zBufferState.setWritable(false);
        setRenderState(zBufferState);
        RenderState cullState = new CullState();
        cullState.setEnabled(false);
        setRenderState(cullState);
        BlendState blendState = new BlendState();
        blendState.setBlendEnabled(true);
        blendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
        blendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
        blendState.setTestEnabled(true);
        blendState.setReference(0.0f);
        blendState.setTestFunction(BlendState.TestFunction.GreaterThan);
        setRenderState(blendState);
        getSceneHints().setLightCombineMode(LightCombineMode.Off);
        getSceneHints().setTextureCombineMode(TextureCombineMode.Replace);
        updateModelBound();
    }

    public static BasicText createDefaultTextLabel(String str, String str2, double d10) {
        return new BasicText(str, str2, DEFAULT_FONT, d10);
    }

    public static BasicText createDefaultTextLabel(String str, String str2) {
        return new BasicText(str, str2, DEFAULT_FONT, DEFAULT_FONT_SIZE);
    }
}
