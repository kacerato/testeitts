package com.jme3.app;

import com.jme3.app.state.AbstractAppState;
import com.jme3.renderer.RenderManager;

public class ResetStatsState extends AbstractAppState {
    @Override
    public void render(RenderManager renderManager) {
        super.render(renderManager);
        renderManager.getRenderer().getStatistics().clearFrame();
    }
}
