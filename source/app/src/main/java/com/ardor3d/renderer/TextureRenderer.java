package com.ardor3d.renderer;

import com.ardor3d.framework.Scene;
import com.ardor3d.image.Texture;
import com.ardor3d.image.Texture2D;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.Spatial;
import java.util.List;

public interface TextureRenderer {
    void cleanup();

    void clearEnforcedState(RenderState.StateType stateType);

    void clearEnforcedStates();

    void copyToTexture(Texture texture, int i10, int i11, int i12, int i13, int i14, int i15);

    void enforceState(RenderState renderState);

    ReadOnlyColorRGBA getBackgroundColor();

    Camera getCamera();

    int getHeight();

    int getWidth();

    void render(Scene scene, Texture texture, int i10);

    void render(Scene scene, List<Texture> list, int i10);

    void render(Spatial spatial, Texture texture, int i10);

    void render(Spatial spatial, List<Texture> list, int i10);

    void render(List<? extends Spatial> list, Texture texture, int i10);

    void render(List<? extends Spatial> list, List<Texture> list2, int i10);

    void setBackgroundColor(ReadOnlyColorRGBA readOnlyColorRGBA);

    void setMultipleTargets(boolean z10);

    void setupTexture(Texture2D texture2D);
}
