package com.threed.jpct;

import java.io.Serializable;

public interface IPaintListener extends Serializable {
    void finishedPainting();

    void startPainting();
}
