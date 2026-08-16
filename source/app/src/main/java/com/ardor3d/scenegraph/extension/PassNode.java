package com.ardor3d.scenegraph.extension;

import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PassNode extends Node {
    private static final long serialVersionUID = 1;
    private List<PassNodeState> _passNodeStates;

    public PassNode(String str) {
        super(str);
        this._passNodeStates = new ArrayList();
    }

    public void addPass(PassNodeState passNodeState) {
        this._passNodeStates.add(passNodeState);
    }

    public void clearAll() {
        this._passNodeStates.clear();
    }

    public boolean containsPass(PassNodeState passNodeState) {
        return this._passNodeStates.contains(passNodeState);
    }

    @Override
    public void draw(Renderer renderer) {
        if (this._children == null) {
            return;
        }
        RenderContext currentContext = ContextManager.getCurrentContext();
        renderer.getQueue().pushBuckets();
        for (PassNodeState passNodeState : this._passNodeStates) {
            if (passNodeState.isEnabled()) {
                passNodeState.applyPassNodeStates(currentContext);
                int size = this._children.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Spatial spatial = this._children.get(i10);
                    if (spatial != null) {
                        spatial.onDraw(renderer);
                    }
                }
                renderer.renderBuckets();
                currentContext.popEnforcedStates();
            }
        }
        renderer.getQueue().popBuckets();
    }

    public PassNodeState getPass(int i10) {
        return this._passNodeStates.get(i10);
    }

    public void insertPass(PassNodeState passNodeState, int i10) {
        this._passNodeStates.add(i10, passNodeState);
    }

    public int nrPasses() {
        return this._passNodeStates.size();
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._passNodeStates = inputCapsule.readSavableList("passNodeStates", null);
    }

    public boolean removePass(PassNodeState passNodeState) {
        return this._passNodeStates.remove(passNodeState);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.writeSavableList(this._passNodeStates, "passNodeStates", null);
    }

    public PassNode() {
        this._passNodeStates = new ArrayList();
    }
}
