package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera;

import JAVARuntime.GUIUtils;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import tc.h;
import v3.c;

public class RTS3DSlideController extends Component {

    public Panel3DView f71651E;

    public h f71652F;

    public RTS3DSlideController(Panel3DView editor3DViewer) {
        super(null);
        this.f71651E = editor3DViewer;
    }

    public h getSelectedTouch() {
        return this.f71652F;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        if (this.f71652F == null && this.f71651E.f71462c0 == null && (c.b() == null || !c.b().d())) {
            this.f71652F = this.f71651E.y(GUIUtils.TouchFilter.Down, true);
        }
        if (this.f71651E.f71462c0 != null) {
            this.f71652F = null;
        }
        h hVar = this.f71652F;
        if (hVar == null || !hVar.t()) {
            return;
        }
        this.f71652F = null;
    }
}
