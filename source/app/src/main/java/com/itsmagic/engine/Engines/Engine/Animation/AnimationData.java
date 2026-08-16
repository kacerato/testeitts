package com.itsmagic.engine.Engines.Engine.Animation;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.Serializable;
import java.util.List;

public class AnimationData extends K8.f implements Serializable {

    public int f72585b;

    @Expose
    public List<Keyframe> f72586f;

    @Expose
    @Deprecated
    private List<Keyframe> frames;

    @Expose
    private int length;

    @Expose
    private final List<Timeline> timelines = new SteppedArrayList();

    @Expose
    public int fps = 30;

    public static AnimationData f(String json) {
        AnimationData animationData;
        Timeline timeline;
        Frame frame;
        Timeline timeline2;
        Frame frame2;
        Timeline timeline3;
        Frame frame3;
        try {
            animationData = (AnimationData) X7.a.m().fromJson(json, AnimationData.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            animationData = null;
        }
        if (animationData != null) {
            if (animationData.frames != null) {
                if (animationData.f72586f == null) {
                    animationData.f72586f = new SteppedArrayList();
                }
                animationData.f72586f.addAll(animationData.frames);
                animationData.frames = null;
            }
            if (animationData.f72586f != null) {
                for (int i10 = 0; i10 < animationData.f72586f.size(); i10++) {
                    Keyframe keyframe = animationData.f72586f.get(i10);
                    if (keyframe != null) {
                        keyframe.e();
                    }
                }
                boolean z10 = false;
                for (int i11 = 0; i11 < animationData.f72586f.size(); i11++) {
                    Keyframe keyframe2 = animationData.f72586f.get(i11);
                    if (keyframe2 != null) {
                        for (int i12 = 0; i12 < keyframe2.f72592el.size(); i12++) {
                            FrameEntry frameEntry = keyframe2.f72592el.get(i12);
                            if (frameEntry.c().b() != null) {
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= animationData.timelines.size()) {
                                        timeline3 = null;
                                        break;
                                    }
                                    timeline3 = animationData.timelines.get(i13);
                                    if (timeline3.i().X(frameEntry.ou) && timeline3.e().equals(a.f72594b)) {
                                        break;
                                    }
                                    i13++;
                                }
                                if (timeline3 == null) {
                                    timeline3 = new Timeline();
                                    timeline3.n(new Ac.b(frameEntry.ou));
                                    timeline3.l(a.f72593a);
                                    timeline3.m(a.f72594b);
                                    timeline3.o(c.VEC3);
                                    animationData.timelines.add(timeline3);
                                }
                                int i14 = 0;
                                while (true) {
                                    if (i14 >= timeline3.f().size()) {
                                        frame3 = null;
                                        break;
                                    }
                                    frame3 = timeline3.f().get(i14);
                                    if (frame3.i() == keyframe2.frameTime) {
                                        break;
                                    }
                                    i14++;
                                }
                                if (frame3 == null) {
                                    frame3 = new Frame();
                                    frame3.x(keyframe2.frameTime);
                                    timeline3.f().add(frame3);
                                }
                                frame3.E(frameEntry.c().b().m1249clone());
                                z10 = true;
                            }
                            if (frameEntry.c().c() != null) {
                                int i15 = 0;
                                while (true) {
                                    if (i15 >= animationData.timelines.size()) {
                                        timeline2 = null;
                                        break;
                                    }
                                    timeline2 = animationData.timelines.get(i15);
                                    if (timeline2.i().X(frameEntry.ou) && timeline2.e().equals(a.f72595c)) {
                                        break;
                                    }
                                    i15++;
                                }
                                if (timeline2 == null) {
                                    timeline2 = new Timeline();
                                    timeline2.n(new Ac.b(frameEntry.ou));
                                    timeline2.l(a.f72593a);
                                    timeline2.m(a.f72595c);
                                    timeline2.o(c.QUAT);
                                    animationData.timelines.add(timeline2);
                                }
                                int i16 = 0;
                                while (true) {
                                    if (i16 >= timeline2.f().size()) {
                                        frame2 = null;
                                        break;
                                    }
                                    frame2 = timeline2.f().get(i16);
                                    if (frame2.i() == keyframe2.frameTime) {
                                        break;
                                    }
                                    i16++;
                                }
                                if (frame2 == null) {
                                    frame2 = new Frame();
                                    frame2.x(keyframe2.frameTime);
                                    timeline2.f().add(frame2);
                                }
                                frame2.B(frameEntry.c().c().clone());
                                z10 = true;
                            }
                            if (frameEntry.c().d() != null) {
                                int i17 = 0;
                                while (true) {
                                    if (i17 >= animationData.timelines.size()) {
                                        timeline = null;
                                        break;
                                    }
                                    timeline = animationData.timelines.get(i17);
                                    if (timeline.i().X(frameEntry.ou) && timeline.e().equals("s")) {
                                        break;
                                    }
                                    i17++;
                                }
                                if (timeline == null) {
                                    timeline = new Timeline();
                                    timeline.n(new Ac.b(frameEntry.ou));
                                    timeline.l(a.f72593a);
                                    timeline.m("s");
                                    timeline.o(c.VEC3);
                                    animationData.timelines.add(timeline);
                                }
                                int i18 = 0;
                                while (true) {
                                    if (i18 >= timeline.f().size()) {
                                        frame = null;
                                        break;
                                    }
                                    frame = timeline.f().get(i18);
                                    if (frame.i() == keyframe2.frameTime) {
                                        break;
                                    }
                                    i18++;
                                }
                                if (frame == null) {
                                    frame = new Frame();
                                    frame.x(keyframe2.frameTime);
                                    timeline.f().add(frame);
                                }
                                frame.E(frameEntry.c().d().m1249clone());
                                z10 = true;
                            }
                        }
                    }
                }
                animationData.f72586f.clear();
                animationData.f72586f = null;
                if (z10) {
                    animationData.m();
                }
            }
            animationData.d();
            animationData.f72585b = Nc.d.c();
        }
        return animationData;
    }

    public final void d() {
        for (int i10 = 0; i10 < this.timelines.size(); i10++) {
            this.timelines.get(i10).b();
        }
    }

    public void dump() {
        for (int i10 = 0; i10 < this.f72586f.size(); i10++) {
            this.f72586f.get(i10).d();
        }
    }

    public AnimationData e() {
        AnimationData animationData = new AnimationData();
        animationData.fps = this.fps;
        animationData.length = this.length;
        if (this.f72586f != null) {
            animationData.f72586f = new SteppedArrayList();
            for (int i10 = 0; i10 < this.f72586f.size(); i10++) {
                Keyframe keyframe = this.f72586f.get(i10);
                if (keyframe != null) {
                    animationData.f72586f.add(keyframe.a());
                }
            }
        }
        for (int i11 = 0; i11 < this.timelines.size(); i11++) {
            animationData.timelines.add(this.timelines.get(i11).c());
        }
        return animationData;
    }

    public int getFps() {
        return this.fps;
    }

    public int h() {
        return this.length;
    }

    public int i() {
        return this.f72585b;
    }

    public Timeline j(int index) {
        if (index < 0 || index >= this.timelines.size()) {
            return null;
        }
        return this.timelines.get(index);
    }

    public int k() {
        return this.timelines.size();
    }

    public List<Timeline> l() {
        return this.timelines;
    }

    public void m() {
        this.length = 0;
        for (int i10 = 0; i10 < this.timelines.size(); i10++) {
            Timeline timeline = this.timelines.get(i10);
            timeline.p();
            if (timeline.h() > this.length) {
                this.length = timeline.h();
            }
        }
    }

    public void setFps(int fps) {
        this.fps = fps;
    }

    public String toJson() {
        return X7.a.m().toJson(this);
    }
}
