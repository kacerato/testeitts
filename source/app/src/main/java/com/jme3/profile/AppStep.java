package com.jme3.profile;

public enum AppStep {
    BeginFrame,
    QueuedTasks,
    ProcessInput,
    ProcessAudio,
    StateManagerUpdate,
    SpatialUpdate,
    StateManagerRender,
    RenderFrame,
    RenderPreviewViewPorts,
    RenderMainViewPorts,
    RenderPostViewPorts,
    EndFrame
}
