package com.ardor3d.scenegraph.visitor;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;
import java.util.Iterator;

public class DeleteVBOsVisitor implements Visitor {
    final Renderer _deleter;

    public DeleteVBOsVisitor(Renderer renderer) {
        this._deleter = renderer;
    }

    @Override
    public void visit(Spatial spatial) {
        if (spatial instanceof Mesh) {
            Mesh mesh = (Mesh) spatial;
            this._deleter.deleteVBOs(mesh.getMeshData().getVertexCoords());
            this._deleter.deleteVBOs(mesh.getMeshData().getIndices());
            this._deleter.deleteVBOs(mesh.getMeshData().getInterleavedData());
            this._deleter.deleteVBOs(mesh.getMeshData().getNormalCoords());
            this._deleter.deleteVBOs(mesh.getMeshData().getTangentCoords());
            Iterator<FloatBufferData> it = mesh.getMeshData().getTextureCoords().iterator();
            while (it.hasNext()) {
                this._deleter.deleteVBOs(it.next());
            }
            this._deleter.deleteVBOs(mesh.getMeshData().getColorCoords());
            this._deleter.deleteVBOs(mesh.getMeshData().getFogCoords());
        }
    }
}
