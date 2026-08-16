package com.ardor3d.util.geom;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;

@Deprecated
public class SharedCopyLogic implements CopyLogic {
    private static final Logger logger = Logger.getLogger(SharedCopyLogic.class.getName());

    public Mesh clone(Mesh mesh) {
        try {
            Mesh mesh2 = (Mesh) mesh.getClass().newInstance();
            mesh2.setName(mesh.getName() + "_copy");
            mesh2.getSceneHints().set(mesh.getSceneHints());
            mesh2.setTransform(mesh.getTransform());
            mesh2.setDefaultColor(mesh.getDefaultColor());
            for (RenderState.StateType stateType : RenderState.StateType.values()) {
                RenderState localRenderState = mesh.getLocalRenderState(stateType);
                if (localRenderState != null) {
                    mesh2.setRenderState(localRenderState);
                }
            }
            return mesh2;
        } catch (IllegalAccessException e10) {
            logger.log(Level.SEVERE, "Could not access final constructor of class " + mesh.getClass().getCanonicalName(), (Throwable) e10);
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            logger.log(Level.SEVERE, "Could not access final constructor of class " + mesh.getClass().getCanonicalName(), (Throwable) e11);
            throw new RuntimeException(e11);
        }
    }

    @Override
    public Spatial copy(Spatial spatial, AtomicBoolean atomicBoolean) {
        atomicBoolean.set(false);
        if (spatial instanceof Node) {
            atomicBoolean.set(true);
            return clone((Node) spatial);
        }
        if (!(spatial instanceof Mesh)) {
            return null;
        }
        Mesh mesh = (Mesh) spatial;
        Mesh clone = clone(mesh);
        clone.setMeshData(mesh.getMeshData());
        clone.updateModelBound();
        return clone;
    }

    public Node clone(Node node) {
        try {
            Node node2 = (Node) node.getClass().newInstance();
            node2.setName(node.getName() + "_copy");
            node2.getSceneHints().set(node.getSceneHints());
            node2.setTransform(node.getTransform());
            for (RenderState.StateType stateType : RenderState.StateType.values()) {
                RenderState localRenderState = node.getLocalRenderState(stateType);
                if (localRenderState != null) {
                    node2.setRenderState(localRenderState);
                }
            }
            return node2;
        } catch (IllegalAccessException e10) {
            logger.log(Level.SEVERE, "Could not access final constructor of class " + node.getClass().getCanonicalName(), (Throwable) e10);
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            logger.log(Level.SEVERE, "Could not access final constructor of class " + node.getClass().getCanonicalName(), (Throwable) e11);
            throw new RuntimeException(e11);
        }
    }
}
