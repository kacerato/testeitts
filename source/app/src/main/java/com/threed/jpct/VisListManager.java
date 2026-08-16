package com.threed.jpct;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

public class VisListManager implements Serializable {
    private static final long serialVersionUID = 2;
    private HashMap<Long, ArrayList<VisList>> buf2Vis = new HashMap<>();
    boolean isDisposed = false;

    public void dispose() {
        this.isDisposed = true;
    }

    public void finalize() {
        dispose();
    }

    public VisList getVisList(FrameBuffer frameBuffer, VisList visList) {
        VisList visList2;
        ArrayList<VisList> arrayList = this.buf2Vis.get(frameBuffer.getID());
        if (arrayList == null) {
            frameBuffer.register(this);
            ArrayList<VisList> arrayList2 = new ArrayList<>(3);
            arrayList2.add(visList);
            this.buf2Vis.put(frameBuffer.getID(), arrayList2);
            visList.lastCycle = frameBuffer.displayCycle;
            return visList;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList.size()) {
                visList2 = null;
                break;
            }
            VisList visList3 = arrayList.get(i10);
            if (visList3.lastCycle != frameBuffer.displayCycle) {
                visList2 = visList3;
                break;
            }
            i10++;
        }
        if (visList2 == null) {
            visList2 = new VisList(visList.getMaxSize());
            arrayList.add(visList2);
            Logger.log("Additional visibility list (" + arrayList.size() + ") created with size: " + visList.getMaxSize(), 2);
        }
        visList2.lastCycle = frameBuffer.displayCycle;
        return visList2;
    }

    public void remove(FrameBuffer frameBuffer) {
        if (this.buf2Vis.remove(frameBuffer.getID()) != null) {
            Logger.log("Visibility lists disposed!", 2);
        }
    }
}
