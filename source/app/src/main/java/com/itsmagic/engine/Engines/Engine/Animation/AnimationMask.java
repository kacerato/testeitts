package com.itsmagic.engine.Engines.Engine.Animation;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AnimationMask implements Serializable {

    public JAVARuntime.AnimationMask f72588c;

    @Expose
    private final List<ObjectWeight> objectWeights = new SteppedArrayList();

    public final transient Map<Ac.b, ObjectWeight> f72587b = new HashMap();

    public static AnimationMask d(String json) {
        if (json == null || json.trim().isEmpty()) {
            return new AnimationMask();
        }
        try {
            AnimationMask animationMask = (AnimationMask) X7.a.m().fromJson(json, AnimationMask.class);
            if (animationMask != null) {
                animationMask.h();
                return animationMask;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return new AnimationMask();
    }

    public void a() {
        this.objectWeights.clear();
        this.f72587b.clear();
    }

    public boolean b(Ac.b objectUID) {
        return c(objectUID) != null;
    }

    public final ObjectWeight c(Ac.b objectUID) {
        if (objectUID == null) {
            return null;
        }
        ObjectWeight objectWeight = this.f72587b.get(objectUID);
        if (objectWeight != null) {
            return objectWeight;
        }
        for (int i10 = 0; i10 < this.objectWeights.size(); i10++) {
            ObjectWeight objectWeight2 = this.objectWeights.get(i10);
            if (objectWeight2 != null && objectUID.W(objectWeight2.b())) {
                this.f72587b.put(objectUID, objectWeight2);
                return objectWeight2;
            }
        }
        return null;
    }

    public boolean contains(String objectUID) {
        if (objectUID == null) {
            return false;
        }
        return b(new Ac.b(objectUID));
    }

    public List<ObjectWeight> e() {
        return this.objectWeights;
    }

    public float f(Ac.b objectUID) {
        ObjectWeight c10 = c(objectUID);
        if (c10 != null) {
            return c10.c();
        }
        return 1.0f;
    }

    public float g(String objectUID) {
        if (objectUID == null) {
            return 1.0f;
        }
        return f(new Ac.b(objectUID));
    }

    public final void h() {
        this.f72587b.clear();
        for (int i10 = 0; i10 < this.objectWeights.size(); i10++) {
            ObjectWeight objectWeight = this.objectWeights.get(i10);
            if (objectWeight != null) {
                this.f72587b.put(objectWeight.objectUID, objectWeight);
            }
        }
    }

    public void i(Ac.b objectUID) {
        ObjectWeight c10;
        if (objectUID == null || (c10 = c(objectUID)) == null) {
            return;
        }
        this.objectWeights.remove(c10);
        this.f72587b.remove(objectUID);
    }

    public void j(String objectUID) {
        if (objectUID == null) {
            return;
        }
        i(new Ac.b(objectUID));
    }

    public void k(Ac.b objectUID, float weight) {
        if (objectUID == null || objectUID.L0().g0()) {
            return;
        }
        ObjectWeight c10 = c(objectUID);
        if (c10 != null) {
            c10.e(weight);
            return;
        }
        ObjectWeight objectWeight = new ObjectWeight(objectUID, weight);
        this.objectWeights.add(objectWeight);
        this.f72587b.put(objectUID, objectWeight);
    }

    public void l(String objectUID, float weight) {
        if (objectUID == null) {
            return;
        }
        k(new Ac.b(objectUID), weight);
    }

    public int m() {
        return this.objectWeights.size();
    }

    public JAVARuntime.AnimationMask n() {
        JAVARuntime.AnimationMask animationMask = this.f72588c;
        if (animationMask != null) {
            return animationMask;
        }
        JAVARuntime.AnimationMask animationMask2 = new JAVARuntime.AnimationMask(this);
        this.f72588c = animationMask2;
        return animationMask2;
    }

    public String o() {
        return X7.a.m().toJson(this);
    }

    public static class ObjectWeight implements Serializable {

        @Expose
        private Ac.b objectUID;

        @Expose
        private float weight;

        public ObjectWeight() {
            this.weight = 1.0f;
        }

        public Ac.b b() {
            return this.objectUID;
        }

        public float c() {
            return this.weight;
        }

        public void d(Ac.b objectUID) {
            this.objectUID = objectUID;
        }

        public void e(float weight) {
            this.weight = Nc.b.I(weight);
        }

        public ObjectWeight(Ac.b objectUID, float weight) {
            this.weight = 1.0f;
            this.objectUID = objectUID;
            this.weight = Nc.b.I(weight);
        }
    }
}
