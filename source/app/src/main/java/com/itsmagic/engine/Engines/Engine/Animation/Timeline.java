package com.itsmagic.engine.Engines.Engine.Animation;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.List;

public class Timeline {

    @Expose
    private Ac.b componentUID;

    @Expose
    private String entryName;

    @Expose
    private final List<Frame> frameList = new SteppedArrayList();

    @Expose
    private Ac.b instantFrameID;

    @Expose
    private int length;

    @Expose
    private Ac.b objectUID;

    @Expose
    private c type;

    public static int k(Frame frame, Frame frame2) {
        return Float.compare(frame.i(), frame2.i());
    }

    public void b() {
        if (this.objectUID == null || this.componentUID == null || this.entryName == null) {
            return;
        }
        this.instantFrameID = new Ac.b(this.objectUID.toString() + "-" + this.componentUID.toString() + "-" + this.entryName);
    }

    public Timeline c() {
        Timeline timeline = new Timeline();
        timeline.instantFrameID = Ac.b.J(this.instantFrameID);
        timeline.objectUID = Ac.b.J(this.objectUID);
        timeline.componentUID = Ac.b.J(this.componentUID);
        timeline.entryName = this.entryName;
        timeline.type = this.type;
        for (int i10 = 0; i10 < this.frameList.size(); i10++) {
            timeline.frameList.add(this.frameList.get(i10).b());
        }
        return timeline;
    }

    public Ac.b d() {
        return this.componentUID;
    }

    public String e() {
        return this.entryName;
    }

    public List<Frame> f() {
        return this.frameList;
    }

    public Ac.b g() {
        return this.instantFrameID;
    }

    public int h() {
        return this.length;
    }

    public Ac.b i() {
        return this.objectUID;
    }

    public c j() {
        return this.type;
    }

    public void l(Ac.b componentUID) {
        this.componentUID = componentUID;
        if (this.objectUID == null || componentUID == null || this.entryName == null) {
            return;
        }
        this.instantFrameID = new Ac.b(this.objectUID.toString() + "-" + componentUID.toString() + "-" + this.entryName);
    }

    public void m(String entryName) {
        this.entryName = entryName;
        if (this.objectUID == null || this.componentUID == null || entryName == null) {
            return;
        }
        this.instantFrameID = new Ac.b(this.objectUID.toString() + "-" + this.componentUID.toString() + "-" + entryName);
    }

    public void n(Ac.b objectUID) {
        this.objectUID = objectUID;
        if (objectUID == null || this.componentUID == null || this.entryName == null) {
            return;
        }
        this.instantFrameID = new Ac.b(objectUID.toString() + "-" + this.componentUID.toString() + "-" + this.entryName);
    }

    public void o(c type) {
        this.type = type;
    }

    public void p() {
        try {
            Collections.sort(this.frameList, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int k10;
                    k10 = Timeline.k((Frame) obj, (Frame) obj2);
                    return k10;
                }
            });
        } catch (IndexOutOfBoundsException | NullPointerException | ConcurrentModificationException e10) {
            e10.printStackTrace();
        }
        this.length = 0;
        if (this.frameList.isEmpty()) {
            return;
        }
        this.length = this.frameList.get(r0.size() - 1).i();
    }
}
