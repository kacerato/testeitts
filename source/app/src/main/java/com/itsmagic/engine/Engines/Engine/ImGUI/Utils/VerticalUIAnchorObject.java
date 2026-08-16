package com.itsmagic.engine.Engines.Engine.ImGUI.Utils;

import V9.p;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Enums.VerticalConstraintTarget;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.io.Serializable;

public class VerticalUIAnchorObject extends p implements Serializable {

    @Expose
    public VerticalConstraintTarget constraintTarget;

    @Expose
    public int offset;

    public VerticalUIAnchorObject() {
        this.constraintTarget = VerticalConstraintTarget.Unfixed;
        this.offset = 0;
    }

    @Override
    public void j() {
        super.j();
    }

    @Override
    public VerticalUIAnchorObject clone() {
        return new VerticalUIAnchorObject(this.constraintTarget, this.guid, e());
    }

    public UIRect n() {
        if (this.constraintTarget == VerticalConstraintTarget.Unfixed) {
            return null;
        }
        return l();
    }

    public VerticalConstraintTarget o() {
        return this.constraintTarget;
    }

    public int p() {
        return this.offset;
    }

    public void q(VerticalConstraintTarget constraintTarget) {
        this.constraintTarget = constraintTarget;
    }

    public void r(int offset) {
        this.offset = offset;
    }

    public VerticalUIAnchorObject(VerticalConstraintTarget constraintTarget, String guid, GameObject object) {
        super(guid, object);
        VerticalConstraintTarget verticalConstraintTarget = VerticalConstraintTarget.Unfixed;
        this.offset = 0;
        this.constraintTarget = constraintTarget;
    }
}
