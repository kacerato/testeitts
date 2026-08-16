package com.ardor3d.scenegraph.hint;

public interface Hintable {
    Hintable getParentHintable();

    SceneHints getSceneHints();
}
