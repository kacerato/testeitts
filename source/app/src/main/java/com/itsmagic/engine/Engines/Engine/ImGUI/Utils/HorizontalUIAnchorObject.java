package com.itsmagic.engine.Engines.Engine.ImGUI.Utils;

import V9.p;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Enums.HorizontalConstraintTarget;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.io.Serializable;

public class HorizontalUIAnchorObject extends p implements Serializable {

    @Expose
    public HorizontalConstraintTarget constraintTarget;

    @Expose
    public int offset;

    public HorizontalUIAnchorObject() {
        this.constraintTarget = HorizontalConstraintTarget.Unfixed;
        this.offset = 0;
    }

    @Override
    public void j() {
        super.j();
    }

    @Override
    public HorizontalUIAnchorObject clone() {
        return new HorizontalUIAnchorObject(this.constraintTarget, this.guid, e());
    }

    public UIRect n() {
        if (this.constraintTarget == HorizontalConstraintTarget.Unfixed) {
            return null;
        }
        return l();
    }

    public HorizontalConstraintTarget o() {
        return this.constraintTarget;
    }

    public int p() {
        return this.offset;
    }

    public void q(HorizontalConstraintTarget constraintTarget) {
        this.constraintTarget = constraintTarget;
    }

    public void r(int offset) {
        this.offset = offset;
    }

    public HorizontalUIAnchorObject(HorizontalConstraintTarget constraintTarget, String guid, GameObject gameObject) {
        super(guid, gameObject);
        HorizontalConstraintTarget horizontalConstraintTarget = HorizontalConstraintTarget.Unfixed;
        this.offset = 0;
        this.constraintTarget = constraintTarget;
    }
}
