package com.itsmagic.engine.Activities.Editor.Panels.AI;

import JAVARuntime.GizmoObject;
import JAVARuntime.Vertex;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ub.n;

public class d {

    public n f71197a;

    public GizmoObject f71198b;

    public ColorINT f71200d;

    public float f71199c = -9999999.0f;

    public float f71201e = 0.0f;

    public Transform f71202f = new Transform();

    public d(ColorINT paintColor, ColorINT textColor, float scale, float textScale) {
        this.f71200d = paintColor;
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.allowModifications = true;
        textureConfig.genMipmaps = false;
        this.f71197a = new n(256, 256, textureConfig);
        GizmoObject gizmoObject = new GizmoObject();
        this.f71198b = gizmoObject;
        gizmoObject.setVertex(Vertex.loadPrimitive(0));
        this.f71198b.setScale(scale, scale, 0.0f);
        this.f71198b.setDrawInFront(true);
        this.f71198b.setEnableTransparency(true);
    }

    public static float a(float angle1, float angle2) {
        float K12 = ((float) Nc.b.K1(angle2)) - ((float) Nc.b.K1(angle1));
        while (K12 > 3.1415927f) {
            K12 -= 6.2831855f;
        }
        while (K12 < -3.1415927f) {
            K12 += 6.2831855f;
        }
        return Nc.b.J1(K12);
    }

    public void b(float dislayAngle, Vector3 position) {
        if (dislayAngle != this.f71199c) {
            this.f71199c = dislayAngle;
            Vector2 vector2 = new Vector2();
            Vector2 vector22 = new Vector2(0.5f);
            Vector2 vector23 = new Vector2();
            for (int i10 = 0; i10 < this.f71197a.getWidth(); i10++) {
                for (int i11 = 0; i11 < this.f71197a.getHeight(); i11++) {
                    vector2.w0(i10 / (this.f71197a.getWidth() - 1), i11 / (this.f71197a.getHeight() - 1));
                    float distance = vector2.distance(vector22);
                    vector2.r0(vector22, vector23);
                    vector23.k0();
                    if (distance < 0.32f || distance > 0.45f) {
                        this.f71197a.Y(i10, i11, ColorINT.g0());
                    } else {
                        float f10 = this.f71199c;
                        if (f10 >= 360.0f || f10 <= -360.0f) {
                            this.f71197a.Y(i10, i11, this.f71200d);
                        } else if (f10 == 0.0f) {
                            this.f71197a.Y(i10, i11, ColorINT.h0());
                        } else {
                            float a10 = a(90.0f, Nc.b.t(-vector23.getX(), vector23.getY())) + 180.0f;
                            float f11 = this.f71199c;
                            if (f11 >= 0.0f) {
                                if (a10 <= f11) {
                                    this.f71197a.Y(i10, i11, this.f71200d);
                                } else {
                                    this.f71197a.Y(i10, i11, ColorINT.h0());
                                }
                            } else if (a10 >= f11 + 360.0f) {
                                this.f71197a.Y(i10, i11, this.f71200d);
                            } else {
                                this.f71197a.Y(i10, i11, ColorINT.h0());
                            }
                        }
                    }
                }
            }
            this.f71197a.apply();
        }
        this.f71198b.setPosition(position.toJAVARuntime());
        this.f71198b.setTexture(this.f71197a.p0());
        Ub.a.a(this.f71198b);
        this.f71198b.getRotation().instance.v(-90.0f, 0.0f, 0.0f);
        this.f71202f.Z();
    }
}
