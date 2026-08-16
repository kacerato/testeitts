package Wa;

import JAVARuntime.Color;
import JAVARuntime.Quaternion;
import JAVARuntime.Vector2;
import JAVARuntime.Vector3;
import JAVARuntime.Vector4;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;

public abstract class a extends NoCodeNode {

    public final String f27347g;

    public final NoCodeSlot[] f27348h = {new NoCodeSlot("Vector", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_VECTOR))};

    public final NoCodeSlot[] f27349i;

    public final H f27350j;

    public final String f27351k;

    public a(String serializedName, String title, H outputType, String swizzle) {
        this.f27347g = title;
        this.f27350j = outputType;
        this.f27351k = swizzle;
        this.f27349i = new NoCodeSlot[]{new NoCodeSlot("Out", outputType).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = serializedName;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27348h;
    }

    public final float G0(Object value, char component) {
        if (value == null) {
            return 0.0f;
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            if (component == 'x') {
                return vector2.getX();
            }
            if (component != 'y') {
                return 0.0f;
            }
            return vector2.getY();
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            switch (component) {
                case 'x':
                    return vector3.getX();
                case 'y':
                    return vector3.getY();
                case 'z':
                    return vector3.getZ();
                default:
                    return 0.0f;
            }
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            switch (component) {
                case 'w':
                    return vector4.getW();
                case 'x':
                    return vector4.getX();
                case 'y':
                    return vector4.getY();
                case 'z':
                    return vector4.getZ();
                default:
                    return 0.0f;
            }
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            switch (component) {
                case 'w':
                    return quaternion.getQW();
                case 'x':
                    return quaternion.getQX();
                case 'y':
                    return quaternion.getQY();
                case 'z':
                    return quaternion.getQZ();
                default:
                    return 0.0f;
            }
        }
        if (value instanceof Color) {
            ColorINT colorINT = ((Color) value).instance;
            switch (component) {
                case 'w':
                    return colorINT.r();
                case 'x':
                    return colorINT.w();
                case 'y':
                    return colorINT.u();
                case 'z':
                    return colorINT.s();
                default:
                    return 0.0f;
            }
        }
        H k10 = m.k(value);
        if (k10 == H.NUMBER || k10 == H.NUMBER01 || k10 == H.BIG_NUMBER) {
            if (component == 'x') {
                return m.V(value);
            }
            return 0.0f;
        }
        if (k10 == H.FLOAT2) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector2 l02 = m.l0(value);
            if (component == 'x') {
                return l02.f79838x;
            }
            if (component != 'y') {
                return 0.0f;
            }
            return l02.f79839y;
        }
        if (k10 == H.FLOAT3 || k10 == H.DIRECTION) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector3 n02 = m.n0(value);
            switch (component) {
                case 'x':
                    return n02.getX();
                case 'y':
                    return n02.getY();
                case 'z':
                    return n02.getZ();
                default:
                    return 0.0f;
            }
        }
        if (k10 == H.FLOAT4) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector4 p02 = m.p0(value);
            switch (component) {
                case 'w':
                    return p02.f();
                case 'x':
                    return p02.getX();
                case 'y':
                    return p02.getY();
                case 'z':
                    return p02.getZ();
                default:
                    return 0.0f;
            }
        }
        if (k10 == H.QUATERNION) {
            com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion f02 = m.f0(value);
            switch (component) {
                case 'w':
                    return f02.I();
                case 'x':
                    return f02.getX();
                case 'y':
                    return f02.getY();
                case 'z':
                    return f02.getZ();
                default:
                    return 0.0f;
            }
        }
        if (k10 != H.COLOR) {
            return 0.0f;
        }
        ColorINT Q10 = m.Q(value);
        switch (component) {
            case 'w':
                return m.h(Q10, 3);
            case 'x':
                return m.h(Q10, 0);
            case 'y':
                return m.h(Q10, 1);
            case 'z':
                return m.h(Q10, 2);
            default:
                return 0.0f;
        }
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27349i;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f27347g;
    }

    @Override
    public void m0() {
        Object Q10 = Q(this.f27348h[0]);
        if (this.f27350j == H.FLOAT3) {
            y0(this.f27349i[0], new com.itsmagic.engine.Engines.Engine.Vector.Vector3(G0(Q10, this.f27351k.charAt(0)), G0(Q10, this.f27351k.charAt(1)), G0(Q10, this.f27351k.charAt(2))));
        } else {
            y0(this.f27349i[0], new com.itsmagic.engine.Engines.Engine.Vector.Vector2(G0(Q10, this.f27351k.charAt(0)), G0(Q10, this.f27351k.charAt(1))));
        }
        u(this.f27349i[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return this.f27350j;
    }
}
