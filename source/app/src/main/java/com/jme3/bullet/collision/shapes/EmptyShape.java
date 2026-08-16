package com.jme3.bullet.collision.shapes;

import com.jme3.export.JmeImporter;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;

public class EmptyShape extends CollisionShape {
    public static final Logger logger2 = Logger.getLogger(EmptyShape.class.getName());

    public EmptyShape() {
    }

    private void createShape() {
        setNativeId(createShapeNative());
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native long createShapeNative();

    @Override
    public boolean canSplit() {
        return true;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        createShape();
        copyShapeProperties((EmptyShape) obj);
    }

    @Override
    public float maxRadius() {
        return 0.0f;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        createShape();
        readShapeProperties(jmeImporter.getCapsule(this));
    }

    @Override
    public float scaledVolume() {
        return 0.0f;
    }

    public float unscaledVolume() {
        return 0.0f;
    }

    public EmptyShape(boolean z10) {
        createShape();
    }
}
