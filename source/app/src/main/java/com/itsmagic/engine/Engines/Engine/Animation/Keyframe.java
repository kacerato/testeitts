package com.itsmagic.engine.Engines.Engine.Animation;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

@Deprecated
class Keyframe implements Serializable {

    @Expose
    public List<FrameEntry> f72592el = new SteppedArrayList();

    @Expose
    @Deprecated
    private List<FrameEntry> entryList;

    @Expose
    public int frameTime;

    public Keyframe(int frameTime) {
        this.frameTime = frameTime;
    }

    public Keyframe a() {
        Keyframe keyframe = new Keyframe(this.frameTime);
        if (this.f72592el != null) {
            for (int i10 = 0; i10 < this.f72592el.size(); i10++) {
                keyframe.f72592el.add(this.f72592el.get(i10).a());
            }
        }
        return keyframe;
    }

    public FrameEntry b(String GUID) {
        for (int i10 = 0; i10 < this.f72592el.size(); i10++) {
            FrameEntry frameEntry = this.f72592el.get(i10);
            if (frameEntry != null && frameEntry.ou.equals(GUID)) {
                return frameEntry;
            }
        }
        return null;
    }

    public FrameEntry c(String GUID) {
        FrameEntry b10 = b(GUID);
        if (b10 != null) {
            return b10;
        }
        FrameEntry frameEntry = new FrameEntry(GUID);
        this.f72592el.add(frameEntry);
        return frameEntry;
    }

    public void d() {
        System.out.println("KEYFRAME (" + this.frameTime + ")");
        Iterator<FrameEntry> it = this.f72592el.iterator();
        while (it.hasNext()) {
            System.out.println(it.next().toString());
        }
    }

    public void e() {
        if (this.entryList != null) {
            if (this.f72592el == null) {
                this.f72592el = new SteppedArrayList();
            }
            this.f72592el.addAll(this.entryList);
            this.entryList = null;
        }
        for (int i10 = 0; i10 < this.f72592el.size(); i10++) {
            this.f72592el.get(i10).h();
        }
    }
}
