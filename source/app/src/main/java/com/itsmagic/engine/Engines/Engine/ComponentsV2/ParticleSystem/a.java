package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem;

import JAVARuntime.Particle;
import Nc.b;
import Nc.d;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import s8.InterfaceC15237a;

public class a {

    public ParticleEmitter f74142l;

    public float f74143m;

    public float f74144n;

    public Particle f74151u;

    public final Vector3 f74131a = new Vector3();

    public final Vector3 f74132b = new Vector3();

    public final Vector3 f74133c = new Vector3();

    public final Vector3 f74134d = new Vector3();

    public final ColorINT f74135e = new ColorINT();

    public final ColorINT f74136f = new ColorINT();

    public final Vector3 f74137g = new Vector3();

    public final Vector3 f74138h = new Vector3();

    public float f74139i = 1.0f;

    public float f74140j = 0.0f;

    public float f74141k = 0.0f;

    public final Vector3 f74145o = new Vector3();

    public final Vector3 f74146p = new Vector3();

    public final Vector3 f74147q = new Vector3();

    public final Vector3 f74148r = new Vector3();

    public final Quaternion f74149s = new Quaternion();

    public final Vector3 f74150t = new Vector3();

    public static class C1216a {

        public static final int[] f74152a;

        public static final int[] f74153b;

        public static final int[] f74154c;

        public static final int[] f74155d;

        public static final int[] f74156e;

        public static final int[] f74157f;

        public static final int[] f74158g;

        static {
            int[] iArr = new int[ParticleEmitter.t.values().length];
            f74158g = iArr;
            try {
                iArr[ParticleEmitter.t.Cone.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74158g[ParticleEmitter.t.Sphere.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74158g[ParticleEmitter.t.Rectangle.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ParticleEmitter.z.values().length];
            f74157f = iArr2;
            try {
                iArr2[ParticleEmitter.z.Global.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f74157f[ParticleEmitter.z.Local.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[ParticleEmitter.q.values().length];
            f74156e = iArr3;
            try {
                iArr3[ParticleEmitter.q.AlphaOverLifetime.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f74156e[ParticleEmitter.q.BySpeed.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr4 = new int[ParticleEmitter.u.values().length];
            f74155d = iArr4;
            try {
                iArr4[ParticleEmitter.u.Constant.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f74155d[ParticleEmitter.u.EmissiveOverLifetime.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f74155d[ParticleEmitter.u.BySpeed.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr5 = new int[ParticleEmitter.r.values().length];
            f74154c = iArr5;
            try {
                iArr5[ParticleEmitter.r.Constant.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f74154c[ParticleEmitter.r.ColorOverLifetime.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f74154c[ParticleEmitter.r.BySpeed.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr6 = new int[ParticleEmitter.v.values().length];
            f74153b = iArr6;
            try {
                iArr6[ParticleEmitter.v.SizeOverLifetime.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f74153b[ParticleEmitter.v.BySpeed.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f74153b[ParticleEmitter.v.Constant.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr7 = new int[ParticleEmitter.w.values().length];
            f74152a = iArr7;
            try {
                iArr7[ParticleEmitter.w.SpeedOverLifetime.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public void a(ParticleEmitter emitter) {
        this.f74142l = emitter;
        this.f74137g.set(0.0f);
        this.f74134d.set(0.0f);
        this.f74139i = 1.0f;
        this.f74140j = 0.0f;
        this.f74141k = 0.0f;
        emitter.copyCachedSpawnTransform(this.f74145o, this.f74149s, this.f74146p, this.f74147q, this.f74148r);
        int i10 = C1216a.f74157f[emitter.worldSpace.ordinal()];
        if (i10 == 1) {
            this.f74133c.set(this.f74145o);
        } else if (i10 == 2) {
            this.f74133c.set(0.0f);
        }
        if (C1216a.f74153b[emitter.sizeBased.ordinal()] == 3) {
            this.f74139i = emitter.startSize;
        }
        int i11 = C1216a.f74158g[emitter.emissionShape.ordinal()];
        if (i11 == 1) {
            float f10 = emitter.getConeShapeOptions().maxAngle;
            float f11 = emitter.getConeShapeOptions().minAngle;
            float f12 = emitter.getConeShapeOptions().radius;
            float h10 = d.h(90.0f - f10, 90.0f - f11);
            float h11 = d.h(0.0f, 360.0f);
            float d02 = b.d0(h11);
            float m12 = b.m1(h11);
            float m13 = b.m1(h10);
            float f13 = 1.0f - m13;
            this.f74134d.set(d02 * f13, f13 * m12, m13);
            this.f74134d.normalizeLocal();
            if (emitter.worldSpace == ParticleEmitter.z.Global) {
                Quaternion quaternion = this.f74149s;
                Vector3 vector3 = this.f74134d;
                quaternion.q0(vector3, vector3);
                this.f74133c.addLocal(this.f74148r, d02 * f12);
                this.f74133c.addLocal(this.f74147q, m12 * f12);
            } else {
                this.f74133c.addLocal(d02 * f12, m12 * f12, 0.0f);
            }
            this.f74134d.mulLocal(emitter.startSpeed);
        } else if (i11 == 2) {
            Vector3 vector32 = this.f74150t;
            float e10 = emitter.getSphereShapeOptions().e();
            float b10 = emitter.getSphereShapeOptions().b();
            d.r(b10, b10 - (e10 * b10), vector32);
            this.f74133c.addLocal(vector32);
            this.f74134d.set(0.0f);
            vector32.normalizeLocal();
            this.f74134d.addLocal(vector32, emitter.getSphereShapeOptions().d());
            this.f74134d.addLocal(d.h(-1.0f, 1.0f), d.h(-1.0f, 1.0f), d.h(-1.0f, 1.0f), emitter.getSphereShapeOptions().c());
            this.f74140j += d.h(0.0f, emitter.getSphereShapeOptions().c() * 360.0f);
            this.f74134d.mulLocal(emitter.startSpeed);
        } else if (i11 == 3) {
            Vector3 vector33 = this.f74150t;
            d.e(emitter.getRectangleShapeOptions().f(), emitter.getRectangleShapeOptions().b(), emitter.getRectangleShapeOptions().c(), vector33);
            this.f74133c.addLocal(vector33);
            this.f74134d.set(0.0f);
            vector33.normalizeLocal();
            this.f74134d.addLocal(vector33, emitter.getRectangleShapeOptions().e());
            this.f74134d.addLocal(d.h(-1.0f, 1.0f), d.h(-1.0f, 1.0f), d.h(-1.0f, 1.0f), emitter.getRectangleShapeOptions().d());
            this.f74140j += d.h(0.0f, emitter.getRectangleShapeOptions().d() * 360.0f);
            this.f74134d.mulLocal(emitter.startSpeed);
        }
        this.f74138h.set(this.f74134d);
        this.f74138h.normalizeLocal();
        o(emitter);
    }

    @InterfaceC15237a
    public ColorINT b() {
        return this.f74135e;
    }

    @InterfaceC15237a
    public float c() {
        return this.f74141k;
    }

    @InterfaceC15237a
    public Vector3 d() {
        return this.f74134d;
    }

    @InterfaceC15237a
    public Vector3 e() {
        return this.f74133c;
    }

    @InterfaceC15237a
    public float f() {
        return this.f74140j;
    }

    @InterfaceC15237a
    public float g() {
        return this.f74139i;
    }

    @InterfaceC15237a
    public void h(ColorINT color) {
        this.f74135e.K(color);
    }

    @InterfaceC15237a
    public void i(float liteTime) {
        this.f74141k = liteTime;
    }

    @InterfaceC15237a
    public void j(Vector3 movement) {
        this.f74134d.set(movement);
    }

    @InterfaceC15237a
    public void k(Vector3 position) {
        this.f74133c.set(position);
    }

    @InterfaceC15237a
    public void l(float rotation) {
        this.f74140j = rotation;
    }

    public void m(Particle run) {
        this.f74151u = run;
    }

    @InterfaceC15237a
    public void n(float scale) {
        this.f74139i = scale;
    }

    public void o(ParticleEmitter emitter) {
        this.f74131a.set(this.f74133c);
        this.f74132b.set(this.f74133c);
        float lengthF = this.f74134d.lengthF();
        int i10 = C1216a.f74153b[emitter.sizeBased.ordinal()];
        if (i10 == 1) {
            this.f74139i = b.I(emitter.sizeOverLifeTimeCurve.p(0.0f)) * emitter.startSize;
        } else if (i10 == 2) {
            this.f74139i = emitter.startSize * lengthF;
        } else if (i10 == 3) {
            this.f74139i = emitter.startSize;
        }
        int i11 = C1216a.f74154c[emitter.colorBased.ordinal()];
        if (i11 == 1) {
            this.f74135e.K(emitter.color);
        } else if (i11 == 2) {
            emitter.colorGradient.l(0.0f, this.f74135e);
        } else if (i11 == 3) {
            this.f74135e.K(emitter.color);
            float f10 = emitter.maxSpeed;
            if (f10 > 0.0f) {
                emitter.colorGradient.l(b.I(lengthF / f10), this.f74135e);
            }
        }
        int i12 = C1216a.f74155d[emitter.emissiveBased.ordinal()];
        if (i12 == 1) {
            this.f74136f.K(emitter.emissive);
        } else if (i12 == 2) {
            emitter.emissiveGradient.l(0.0f, this.f74136f);
        } else if (i12 == 3) {
            this.f74136f.K(emitter.emissive);
            float f11 = emitter.maxSpeed;
            if (f11 > 0.0f) {
                emitter.emissiveGradient.l(b.I(lengthF / f11), this.f74136f);
            }
        }
        int i13 = C1216a.f74156e[emitter.alphaBased.ordinal()];
        if (i13 == 1) {
            this.f74135e.N(b.I(emitter.alphaOverLifeTimeCurve.p(0.0f)) * this.f74135e.r());
        } else {
            if (i13 != 2) {
                return;
            }
            ColorINT colorINT = this.f74135e;
            colorINT.N(lengthF * colorINT.r());
        }
    }

    public Particle p() {
        Particle particle = this.f74151u;
        if (particle != null) {
            return particle;
        }
        Particle particle2 = new Particle(this);
        this.f74151u = particle2;
        return particle2;
    }

    public void q(float deltaTime, ParticleEmitter emitter) {
        if (com.itsmagic.engine.Engines.Engine.World.a.f80030c == null) {
            return;
        }
        this.f74142l = emitter;
        float f10 = this.f74141k + deltaTime;
        this.f74141k = f10;
        float I10 = b.I(f10 / emitter.maxLifeSeconds);
        if (C1216a.f74152a[emitter.speedBased.ordinal()] == 1) {
            float p10 = emitter.speedOverLifeTimeCurve.p(I10);
            this.f74134d.set(this.f74138h);
            this.f74134d.mulLocal(emitter.startSpeed * p10);
            this.f74134d.addLocal(this.f74137g);
        }
        this.f74137g.addLocal(com.itsmagic.engine.Engines.Engine.World.a.f80030c.r().b(), emitter.gravityMultiplier * deltaTime);
        this.f74134d.addLocal(com.itsmagic.engine.Engines.Engine.World.a.f80030c.r().b(), emitter.gravityMultiplier * deltaTime);
        Vector3 vector3 = this.f74134d;
        vector3.setX(b.J(vector3.getX(), emitter.maxSpeed));
        Vector3 vector32 = this.f74134d;
        vector32.setY(b.J(vector32.getY(), emitter.maxSpeed));
        Vector3 vector33 = this.f74134d;
        vector33.setZ(b.J(vector33.getZ(), emitter.maxSpeed));
        float lengthF = this.f74134d.lengthF();
        this.f74133c.addLocal(this.f74134d, deltaTime);
        int i10 = C1216a.f74153b[emitter.sizeBased.ordinal()];
        if (i10 == 1) {
            this.f74139i = b.I(emitter.sizeOverLifeTimeCurve.p(I10)) * emitter.startSize;
        } else if (i10 == 2) {
            this.f74139i = emitter.startSize * lengthF;
        }
        int i11 = C1216a.f74154c[emitter.colorBased.ordinal()];
        if (i11 == 1) {
            this.f74135e.K(emitter.color);
        } else if (i11 == 2) {
            emitter.colorGradient.l(I10, this.f74135e);
        } else if (i11 == 3) {
            emitter.colorGradient.l(lengthF / emitter.maxSpeed, this.f74135e);
        }
        int i12 = C1216a.f74155d[emitter.emissiveBased.ordinal()];
        if (i12 == 1) {
            this.f74136f.K(emitter.emissive);
        } else if (i12 == 2) {
            emitter.emissiveGradient.l(I10, this.f74136f);
        } else if (i12 == 3) {
            emitter.emissiveGradient.l(lengthF / emitter.maxSpeed, this.f74136f);
        }
        int i13 = C1216a.f74156e[emitter.alphaBased.ordinal()];
        if (i13 == 1) {
            float I11 = b.I(emitter.alphaOverLifeTimeCurve.p(I10));
            ColorINT colorINT = this.f74135e;
            colorINT.N(I11 * colorINT.r());
        } else if (i13 == 2) {
            ColorINT colorINT2 = this.f74135e;
            colorINT2.N(lengthF * colorINT2.r());
        }
        this.f74131a.set(this.f74132b);
        int i14 = C1216a.f74157f[emitter.worldSpace.ordinal()];
        if (i14 == 1) {
            this.f74132b.set(this.f74133c);
        } else {
            if (i14 != 2) {
                return;
            }
            this.f74132b.set(this.f74133c);
        }
    }
}
