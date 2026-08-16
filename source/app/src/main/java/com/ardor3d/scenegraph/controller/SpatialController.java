package com.ardor3d.scenegraph.controller;

import com.ardor3d.scenegraph.Spatial;

public interface SpatialController<T extends Spatial> {
    void update(double d10, T t10);
}
