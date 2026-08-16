package com.jme3.effect.shapes;

import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.JmeCloneable;

public interface EmitterShape extends Savable, JmeCloneable {
    EmitterShape deepClone();

    void getRandomPoint(Vector3f vector3f);

    void getRandomPointAndNormal(Vector3f vector3f, Vector3f vector3f2);
}
