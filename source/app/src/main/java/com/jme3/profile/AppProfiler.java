package com.jme3.profile;

import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;

public interface AppProfiler {
    void appStep(AppStep appStep);

    void appSubStep(String... strArr);

    void spStep(SpStep spStep, String... strArr);

    void vpStep(VpStep vpStep, ViewPort viewPort, RenderQueue.Bucket bucket);
}
