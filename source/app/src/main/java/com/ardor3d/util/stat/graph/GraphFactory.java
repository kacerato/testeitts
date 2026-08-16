package com.ardor3d.util.stat.graph;

import com.ardor3d.image.Texture;
import com.ardor3d.image.Texture2D;
import com.ardor3d.renderer.ContextCapabilities;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.renderer.state.BlendState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.scenegraph.hint.LightCombineMode;
import com.ardor3d.scenegraph.hint.TextureCombineMode;
import com.ardor3d.scenegraph.shape.Quad;
import com.ardor3d.util.stat.StatCollector;
import java.nio.FloatBuffer;

public abstract class GraphFactory {
    public static LineGrapher makeLineGraph(int i10, int i11, Quad quad, Renderer renderer, ContextCapabilities contextCapabilities) {
        LineGrapher lineGrapher = new LineGrapher(i10, i11, renderer, contextCapabilities);
        lineGrapher.setThreshold(1);
        StatCollector.addStatListener(lineGrapher);
        setupGraphQuad(quad, setupGraphTexture(lineGrapher), i10 / lineGrapher._textureRenderer.getWidth(), i11 / lineGrapher._textureRenderer.getHeight());
        return lineGrapher;
    }

    public static TabledLabelGrapher makeTabledLabelGraph(int i10, int i11, Quad quad, Renderer renderer, ContextCapabilities contextCapabilities) {
        TabledLabelGrapher tabledLabelGrapher = new TabledLabelGrapher(i10, i11, renderer, contextCapabilities);
        tabledLabelGrapher.setThreshold(1);
        StatCollector.addStatListener(tabledLabelGrapher);
        setupGraphQuad(quad, setupGraphTexture(tabledLabelGrapher), i10 / tabledLabelGrapher._textureRenderer.getWidth(), i11 / tabledLabelGrapher._textureRenderer.getHeight());
        return tabledLabelGrapher;
    }

    public static TimedAreaGrapher makeTimedGraph(int i10, int i11, Quad quad, Renderer renderer, ContextCapabilities contextCapabilities) {
        TimedAreaGrapher timedAreaGrapher = new TimedAreaGrapher(i10, i11, renderer, contextCapabilities);
        timedAreaGrapher.setThreshold(1);
        StatCollector.addStatListener(timedAreaGrapher);
        setupGraphQuad(quad, setupGraphTexture(timedAreaGrapher), i10 / timedAreaGrapher._textureRenderer.getWidth(), i11 / timedAreaGrapher._textureRenderer.getHeight());
        return timedAreaGrapher;
    }

    private static void setupGraphQuad(Quad quad, Texture2D texture2D, float f10, float f11) {
        quad.getSceneHints().setTextureCombineMode(TextureCombineMode.Replace);
        quad.getSceneHints().setLightCombineMode(LightCombineMode.Off);
        quad.getSceneHints().setRenderBucketType(RenderBucketType.Ortho);
        quad.getSceneHints().setOrthoOrder(-1);
        FloatBuffer buffer = quad.getMeshData().getTextureCoords(0).getBuffer();
        buffer.clear();
        buffer.put(0.0f).put(0.0f);
        buffer.put(0.0f).put(f11);
        buffer.put(f10).put(f11);
        buffer.put(f10).put(0.0f);
        buffer.rewind();
        TextureState textureState = new TextureState();
        textureState.setTexture(texture2D);
        quad.setRenderState(textureState);
        BlendState blendState = new BlendState();
        blendState.setBlendEnabled(true);
        blendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
        blendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
        quad.setRenderState(blendState);
    }

    private static Texture2D setupGraphTexture(AbstractStatGrapher abstractStatGrapher) {
        Texture2D texture2D = new Texture2D();
        texture2D.setMinificationFilter(Texture.MinificationFilter.NearestNeighborNoMipMaps);
        texture2D.setMagnificationFilter(Texture.MagnificationFilter.Bilinear);
        abstractStatGrapher.setTexture(texture2D);
        return texture2D;
    }
}
