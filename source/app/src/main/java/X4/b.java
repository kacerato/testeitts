package X4;

import Ic.A;
import JAVARuntime.GizmoObject;
import JAVARuntime.Vertex;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ub.n;

public class b {

    public static final float f27929f = 3.0f;

    public static final float f27930g = 4.0E-4f;

    public static final float f27931h = 0.001f;

    public static final float f27932i = 0.006f;

    public n f27933a;

    public a f27934b;

    public GizmoObject f27935c;

    public float f27936d = -9999999.0f;

    public ColorINT f27937e;

    public b(ColorINT paintColor, a accumulator, EditorCamera editorCamera, GameObject gameObject, Panel3DView editor3DViewer) {
        this.f27937e = paintColor;
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.allowModifications = true;
        textureConfig.genMipmaps = false;
        this.f27933a = new n(128, 128, textureConfig);
        this.f27934b = accumulator;
        GizmoObject gizmoObject = new GizmoObject();
        this.f27935c = gizmoObject;
        gizmoObject.setVertex(Vertex.loadPrimitive(0));
        this.f27935c.setScale(0.001f, 0.001f, 0.001f);
        this.f27935c.setDrawInFront(true);
        this.f27935c.setScaleBasedCamera(false);
        this.f27935c.setEnableTransparency(true);
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

    public final float b(Transform axisTransform) {
        float b10 = A.b(axisTransform.M0());
        GameObject gameObject = axisTransform.getGameObject();
        if (gameObject != null && gameObject.D() > 0) {
            float b11 = A.b(gameObject.C(0).transform.M0());
            if (Float.isFinite(b11) && b11 > 0.0f) {
                b10 = b11;
            }
        }
        if (!Float.isFinite(b10) || b10 <= 0.0f) {
            return 1.0E-4f;
        }
        return b10;
    }

    public void c(Quaternion quaternion, Vector3 lookDirection) {
        this.f27935c.setRotation(quaternion.N0());
    }

    public void d(EditorCamera editorCamera, Transform axisTransform, Panel3DView editor3DViewer) {
        if (this.f27934b.d() != this.f27936d) {
            this.f27936d = this.f27934b.d();
            float c10 = this.f27934b.c() + 180.0f;
            Vector2 vector2 = new Vector2();
            Vector2 vector22 = new Vector2(0.5f);
            Vector2 vector23 = new Vector2();
            for (int i10 = 0; i10 < this.f27933a.getWidth(); i10++) {
                for (int i11 = 0; i11 < this.f27933a.getHeight(); i11++) {
                    vector2.w0(i10 / (this.f27933a.getWidth() - 1), i11 / (this.f27933a.getHeight() - 1));
                    float distance = vector2.distance(vector22);
                    vector2.r0(vector22, vector23);
                    vector23.k0();
                    if (distance <= 0.5f) {
                        float f10 = this.f27936d;
                        if (f10 < 360.0f && f10 > -360.0f) {
                            if (f10 != 0.0f) {
                                float a10 = a(c10, Nc.b.t(-vector23.getX(), vector23.getY())) + 180.0f;
                                float f11 = this.f27936d;
                                if (f11 < 0.0f) {
                                }
                            }
                        }
                        this.f27933a.Y(i10, i11, this.f27937e);
                    }
                    this.f27933a.Y(i10, i11, ColorINT.g0());
                }
            }
            this.f27933a.apply();
        }
        float b10 = b(axisTransform) * 3.0f;
        this.f27935c.setPosition(axisTransform.u0((Vector3) JP.acquire(Vector3.class)).toJAVARuntime());
        this.f27935c.setScale(b10, b10, Nc.b.E(0.001f, 4.0E-4f * b10, 0.006f));
        this.f27935c.setTexture(this.f27933a.p0());
        Ub.a.a(this.f27935c);
    }
}
