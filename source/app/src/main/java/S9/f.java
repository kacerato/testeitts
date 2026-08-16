package S9;

import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;

public interface f {
    boolean acceptsMultiTouch();

    boolean allowCaptureNewTouchs();

    boolean dispatchTouchWhenOutSideRect();

    UIController getController();

    W9.c getControllerRect();

    int getLayer();

    W9.c getScreenRect();

    boolean isSelectedTouch(tc.h touch);

    boolean onTouchEnter(tc.h touch, int idx, c callbacks);

    boolean onTouchExit(tc.h touch, int idx, c callbacks);

    boolean onlyDownInside();
}
