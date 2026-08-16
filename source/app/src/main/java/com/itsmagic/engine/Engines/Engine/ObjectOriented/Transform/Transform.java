package com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform;

import C5.b;
import H5.c;
import H5.e;
import Ic.C2634m;
import JAVARuntime.Runnable;
import android.content.Context;
import android.os.BatteryManager;
import android.view.View;
import android.widget.Toast;
import androidx.constraintlayout.motion.widget.Key;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Quaternion.b;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import dd.C12908b;
import dd.d;
import gb.C13317e;
import ib.C13595b;
import ib.C13596c;
import ib.C13597d;
import ib.C13599f;
import ib.InterfaceC13594a;
import ib.InterfaceC13601h;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;
import javax.vecmath.Quat4f;
import org.eclipse.jdt.core.Signature;
import r4.C15147a;

public class Transform extends C2634m implements Serializable {

    public final C13597d f79320A;

    public final com.itsmagic.engine.Engines.Engine.Vector.i f79321B;

    public final b f79322C;

    public final com.itsmagic.engine.Engines.Engine.Vector.i f79323D;

    public boolean f79324E;

    public final List<E> f79325F;

    public final List<E> f79326G;

    public transient boolean f79327H;

    public JAVARuntime.Transform f79328I;

    public final List<InterfaceC13601h> f79329b;

    public final List<D> f79330c;

    public GameObject f79331d;

    public transient TransformMiniJP f79332e;

    @Expose
    public InspectorEditor editor;

    public transient TransformMiniFloatArrayJP f79333g;

    public transient long f79334i;

    @Expose
    private boolean ignoreParentMatrix;

    public transient boolean f79335j;

    public transient int f79336k;

    public final C13597d f79337l;

    @Expose
    private boolean lockScale;

    public final C13595b f79338m;

    public final C13595b f79339n;

    public final C13596c f79340o;

    public final C13597d f79341p;

    @Expose
    private final Vector3 position;

    public final C13597d f79342q;

    public final C13597d f79343r;

    @Expose
    private final Quaternion rotation;

    public final C13597d f79344s;

    @Expose
    private final Vector3 scale;

    @Expose
    private G state;

    @Expose
    @Deprecated
    private boolean staticTransform;

    public final C13597d f79345t;

    public final C13597d f79346u;

    public class A implements D5.h {

        public class a implements Runnable {

            public final Variable f79348b;

            public a(final Variable val$variable) {
                this.f79348b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.u3(this.f79348b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public A() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.d1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class B implements D5.l {
        public B() {
        }

        @Override
        public int a() {
            return Transform.this.y1(a.f72594b);
        }
    }

    public class C implements D5.h {

        public class a implements Runnable {

            public final Variable f79352b;

            public a(final Variable val$variable) {
                this.f79352b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.w3(this.f79352b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.e1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public final class D {

        public final long f79354a;

        public final Transform f79355b;

        public final InterfaceC13594a f79356c;

        public boolean f79357d;

        public boolean f79358e;

        public boolean f79359f;

        public float f79360g;

        public float f79361h;

        public float f79362i;

        public final f f79363j;

        public D(Transform transform, Transform transform2, InterfaceC13594a interfaceC13594a, boolean z10, boolean z11, boolean z12, float f10, float f11, float f12, k kVar) {
            this(transform2, interfaceC13594a, z10, z11, z12, f10, f11, f12);
        }

        public final void d() {
            TransformUpdateController.v(this);
        }

        public void e() {
            try {
                float[] acquire = Transform.this.f79333g.acquire(16);
                try {
                    TransformUpdateController.g(this.f79354a, acquire);
                    this.f79363j.y0(acquire);
                    this.f79356c.a(this.f79363j);
                    Transform.this.f79333g.release(acquire);
                } catch (Throwable th2) {
                    Transform.this.f79333g.release(acquire);
                    throw th2;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void f() {
            e();
        }

        public void g() {
            try {
                Transform.this.Q0(this.f79355b, this.f79363j);
                this.f79356c.a(this.f79363j);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public long h() {
            return Transform.this.T();
        }

        public float i() {
            return this.f79360g;
        }

        public long j() {
            return this.f79354a;
        }

        public float k() {
            return this.f79361h;
        }

        public float l() {
            return this.f79362i;
        }

        public long m() {
            return this.f79355b.T();
        }

        public boolean n() {
            return this.f79357d;
        }

        public boolean o() {
            return this.f79358e;
        }

        public boolean p() {
            return this.f79359f;
        }

        public void q() {
            TransformUpdateController.n(this);
        }

        public void r(boolean ignoreScaleOfScopeParent, boolean normalizeLikeColliderShape, boolean preserveChildScaleWhenScopeParentMatches, float positionTolerance, float rotationToleranceDegrees, float scaleTolerance) {
            this.f79357d = ignoreScaleOfScopeParent;
            this.f79358e = normalizeLikeColliderShape;
            this.f79359f = preserveChildScaleWhenScopeParentMatches;
            this.f79360g = positionTolerance;
            this.f79361h = rotationToleranceDegrees;
            this.f79362i = scaleTolerance;
            TransformUpdateController.n(this);
        }

        public D(Transform scopeParent, InterfaceC13594a listener, boolean ignoreScaleOfScopeParent, boolean normalizeLikeColliderShape, boolean preserveChildScaleWhenScopeParentMatches, float positionTolerance, float rotationToleranceDegrees, float scaleTolerance) {
            this.f79363j = new f();
            this.f79354a = TransformUpdateController.a();
            this.f79355b = scopeParent;
            this.f79356c = listener;
            this.f79357d = ignoreScaleOfScopeParent;
            this.f79358e = normalizeLikeColliderShape;
            this.f79359f = preserveChildScaleWhenScopeParentMatches;
            this.f79360g = positionTolerance;
            this.f79361h = rotationToleranceDegrees;
            this.f79362i = scaleTolerance;
        }
    }

    public static class E {

        public WeakReference<Object> f79365a;

        public String f79366b;

        public E(Object obj, String name) {
            this.f79365a = null;
            this.f79365a = new WeakReference<>(obj);
            this.f79366b = name;
        }

        public void a() {
            this.f79365a = null;
        }

        public Object b() {
            return this.f79365a.get();
        }

        public String c() {
            return this.f79366b;
        }

        public boolean d() {
            WeakReference<Object> weakReference = this.f79365a;
            return (weakReference == null || weakReference.get() == null) ? false : true;
        }
    }

    public enum F {
        Local,
        Global
    }

    public enum G {
        DYNAMIC,
        STATIC
    }

    public class C12807a implements D5.l {
        public C12807a() {
        }

        @Override
        public int a() {
            return Transform.this.y1(a.f72594b);
        }
    }

    public class C12808b implements D5.b {

        public final C5.b f79368a;

        public final Context f79369b;

        public class a implements d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                C12808b c12808b = C12808b.this;
                Transform.this.P2(c12808b.f79368a);
            }
        }

        public class C1342b implements d {
            public C1342b() {
            }

            @Override
            public void onSelected(View v10) {
                C12808b c12808b = C12808b.this;
                Transform.this.Q3(c12808b.f79369b);
            }
        }

        public class c implements d {

            public class a implements e.l {
                public a() {
                }

                @Override
                public void a(float value) {
                    Transform.this.w3(value);
                }

                @Override
                public void b(float value) {
                    Transform.this.u3(value);
                }

                @Override
                public void c(float value) {
                    Transform.this.t3(value);
                }

                @Override
                public float getX() {
                    return Transform.this.c1();
                }

                @Override
                public float getY() {
                    return Transform.this.d1();
                }

                @Override
                public float getZ() {
                    return Transform.this.e1();
                }
            }

            public c() {
            }

            @Override
            public void onSelected(View v10) {
                e.G1(v10, "position", new a());
            }
        }

        public C12808b(final C5.b val$rectPosVector, final Context val$context) {
            this.f79368a = val$rectPosVector;
            this.f79369b = val$context;
        }

        @Override
        public void a(View view) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.RESET), new a()));
            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() != null) {
                steppedArrayList.add(new C12908b(Lang.l(Lang.T.STORE_KEYFRAME), new C1342b()));
            }
            steppedArrayList.add(new C12908b("Open editor", new c()));
            Y6.a.F1(view, C15147a.e.Below, steppedArrayList);
        }
    }

    public class C12809c implements D5.h {

        public class a implements Runnable {

            public final Variable f79376b;

            public a(final Variable val$variable) {
                this.f79376b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.D3(this.f79376b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C12809c() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.j1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class C12810d implements D5.l {
        public C12810d() {
        }

        @Override
        public int a() {
            return Transform.this.y1(a.f72595c);
        }
    }

    public class C12811e implements D5.h {

        public class a implements Runnable {

            public final Variable f79380b;

            public a(final Variable val$variable) {
                this.f79380b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.E3(this.f79380b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C12811e() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.k1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class C12812f implements D5.l {
        public C12812f() {
        }

        @Override
        public int a() {
            return Transform.this.y1(a.f72595c);
        }
    }

    public class C12813g implements D5.h {

        public class a implements Runnable {

            public final Variable f79384b;

            public a(final Variable val$variable) {
                this.f79384b = val$variable;
            }

            @Override
            public void run() {
                Transform.this.F3(this.f79384b.float_value);
                Transform.this.I2();
            }
        }

        public C12813g() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.l1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class h implements D5.l {
        public h() {
        }

        @Override
        public int a() {
            return Transform.this.y1(a.f72595c);
        }
    }

    public class i implements D5.b {

        public final C5.b f79387a;

        public final Context f79388b;

        public class a implements d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                i iVar = i.this;
                Transform.this.Q2(iVar.f79387a);
            }
        }

        public class b implements d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                i iVar = i.this;
                Transform.this.S3(iVar.f79388b);
            }
        }

        public class c implements d {

            public class a implements c.l {

                public class C1343a implements Runnable {

                    public final float f79394b;

                    public C1343a(final float val$value) {
                        this.f79394b = val$value;
                    }

                    @Override
                    public void run() {
                        Transform.this.i0().i0(Quaternion.n(this.f79394b, 0.0f, 0.0f));
                        Transform.this.x2();
                    }
                }

                public class b implements Runnable {

                    public final float f79396b;

                    public b(final float val$value) {
                        this.f79396b = val$value;
                    }

                    @Override
                    public void run() {
                        Transform.this.i0().i0(Quaternion.n(0.0f, this.f79396b, 0.0f));
                        Transform.this.x2();
                    }
                }

                public class C1344c implements Runnable {

                    public final float f79398b;

                    public C1344c(final float val$value) {
                        this.f79398b = val$value;
                    }

                    @Override
                    public void run() {
                        Transform.this.i0().i0(Quaternion.n(0.0f, 0.0f, this.f79398b));
                        Transform.this.x2();
                    }
                }

                public a() {
                }

                @Override
                public void a(float value) {
                    K8.a.I(new C1343a(value));
                }

                @Override
                public void b(float value) {
                    K8.a.I(new C1344c(value));
                }

                @Override
                public void c(float value) {
                    K8.a.I(new b(value));
                }
            }

            public c() {
            }

            @Override
            public void onSelected(View v10) {
                H5.c.E1(v10, Key.ROTATION, new a());
            }
        }

        public i(final C5.b val$rectRotVector, final Context val$context) {
            this.f79387a = val$rectRotVector;
            this.f79388b = val$context;
        }

        @Override
        public void a(View view) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.RESET), new a()));
            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() != null) {
                steppedArrayList.add(new C12908b(Lang.l(Lang.T.STORE_KEYFRAME), new b()));
            }
            steppedArrayList.add(new C12908b("Open editor", new c()));
            Y6.a.F1(view, C15147a.e.Below, steppedArrayList);
        }
    }

    public class j implements D5.h {

        public class a implements Runnable {

            public final Variable f79401b;

            public a(final Variable val$variable) {
                this.f79401b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.K3(this.f79401b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public j() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.t1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class k extends com.itsmagic.engine.Engines.Engine.Vector.i {
        public k(Vector3 instance) {
            super(instance);
        }

        @Override
        public void d(float x10, float y10, float z10) {
            Transform.this.a4();
            Transform.this.setPosition(x10, y10, z10);
        }
    }

    public class l implements D5.l {
        public l() {
        }

        @Override
        public int a() {
            return Transform.this.y1("s");
        }
    }

    public class m implements D5.h {

        public class a implements Runnable {

            public final Variable f79406b;

            public a(final Variable val$variable) {
                this.f79406b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.L3(this.f79406b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public m() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.u1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class n implements D5.l {
        public n() {
        }

        @Override
        public int a() {
            return Transform.this.y1("s");
        }
    }

    public class o implements D5.h {

        public class a implements Runnable {

            public final Variable f79410b;

            public a(final Variable val$variable) {
                this.f79410b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.M3(this.f79410b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public o() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.v1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class p implements D5.l {
        public p() {
        }

        @Override
        public int a() {
            return Transform.this.y1("s");
        }
    }

    public class q implements D5.b {

        public final C5.b f79413a;

        public final Context f79414b;

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                q qVar = q.this;
                Transform.this.R2(qVar.f79413a);
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                q qVar = q.this;
                Transform.this.R3(qVar.f79414b);
            }
        }

        public class c implements dd.d {

            public class a implements e.l {
                public a() {
                }

                @Override
                public void a(float value) {
                    Transform.this.M3(value);
                }

                @Override
                public void b(float value) {
                    Transform.this.L3(value);
                }

                @Override
                public void c(float value) {
                    Transform.this.K3(value);
                }

                @Override
                public float getX() {
                    return Transform.this.t1();
                }

                @Override
                public float getY() {
                    return Transform.this.u1();
                }

                @Override
                public float getZ() {
                    return Transform.this.v1();
                }
            }

            public c() {
            }

            @Override
            public void onSelected(View v10) {
                e.G1(v10, BatteryManager.EXTRA_SCALE, new a());
            }
        }

        public class d implements dd.d {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    try {
                        Transform transform = Transform.this;
                        transform.setScale(transform.t1());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public d() {
            }

            @Override
            public void onSelected(View v10) {
                Transform.this.lockScale = !r2.lockScale;
                if (Transform.this.lockScale) {
                    K8.a.I(new a());
                }
                A5.a.y1();
            }
        }

        public q(final C5.b val$rectScaVector, final Context val$context) {
            this.f79413a = val$rectScaVector;
            this.f79414b = val$context;
        }

        @Override
        public void a(View view) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.RESET), new a()));
            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() != null) {
                steppedArrayList.add(new C12908b(Lang.l(Lang.T.STORE_KEYFRAME), new b()));
            }
            steppedArrayList.add(new C12908b("Open editor", new c()));
            steppedArrayList.add(new C12908b(Transform.this.lockScale ? "Unlock" : "Lock", new d()));
            Y6.a.F1(view, C15147a.e.Below, steppedArrayList);
        }
    }

    public class r implements D5.h {

        public class a implements Runnable {

            public final Variable f79423b;

            public a(final Variable val$variable) {
                this.f79423b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.setScale(this.f79423b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public r() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.t1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class s implements D5.l {
        public s() {
        }

        @Override
        public int a() {
            return Transform.this.y1("s");
        }
    }

    public class t implements D5.b {

        public final C5.b f79426a;

        public final Context f79427b;

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                t tVar = t.this;
                Transform.this.R2(tVar.f79426a);
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                t tVar = t.this;
                Transform.this.R3(tVar.f79427b);
            }
        }

        public class c implements dd.d {

            public class a implements e.l {
                public a() {
                }

                @Override
                public void a(float value) {
                    Transform.this.K3(value);
                }

                @Override
                public void b(float value) {
                    Transform.this.K3(value);
                }

                @Override
                public void c(float value) {
                    Transform.this.K3(value);
                }

                @Override
                public float getX() {
                    return Transform.this.t1();
                }

                @Override
                public float getY() {
                    return Transform.this.t1();
                }

                @Override
                public float getZ() {
                    return Transform.this.t1();
                }
            }

            public c() {
            }

            @Override
            public void onSelected(View v10) {
                e.G1(v10, BatteryManager.EXTRA_SCALE, new a());
            }
        }

        public class d implements dd.d {
            public d() {
            }

            @Override
            public void onSelected(View v10) {
                Transform.this.lockScale = !r2.lockScale;
                A5.a.y1();
            }
        }

        public t(final C5.b val$rectScaVector, final Context val$context) {
            this.f79426a = val$rectScaVector;
            this.f79427b = val$context;
        }

        @Override
        public void a(View view) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.RESET), new a()));
            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() != null) {
                steppedArrayList.add(new C12908b(Lang.l(Lang.T.STORE_KEYFRAME), new b()));
            }
            steppedArrayList.add(new C12908b("Open editor", new c()));
            steppedArrayList.add(new C12908b(Transform.this.lockScale ? "Unlock" : "Lock", new d()));
            Y6.a.F1(view, C15147a.e.Below, steppedArrayList);
        }
    }

    public class u implements D5.h {

        public class a implements Runnable {

            public final Variable f79435b;

            public a(final Variable val$variable) {
                this.f79435b = val$variable;
            }

            @Override
            public void run() {
                Transform.this.k3(this.f79435b.booolean_value.booleanValue());
            }
        }

        public u() {
        }

        @Override
        public Variable get() {
            return new Variable("", Transform.this.ignoreParentMatrix + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class v extends b {
        public v(Quaternion instance) {
            super(instance);
        }

        @Override
        public void Y0(float w10, float x10, float y10, float z10) {
            Transform.this.a4();
            Transform.this.setRotation(w10, x10, y10, z10);
        }
    }

    public class w extends com.itsmagic.engine.Engines.Engine.Vector.i {
        public w(Vector3 instance) {
            super(instance);
        }

        @Override
        public void d(float x10, float y10, float z10) {
            Transform.this.a4();
            Transform.this.setScale(x10, y10, z10);
        }
    }

    public class x implements D5.h {
        public x() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                if (i10 == 0) {
                    Transform.this.N3(G.DYNAMIC);
                } else if (i10 == 1) {
                    Transform.this.N3(G.STATIC);
                }
            }
        }
    }

    public class y implements D5.h {

        public class a implements Runnable {

            public final Variable f79441b;

            public a(final Variable val$variable) {
                this.f79441b = val$variable;
            }

            @Override
            public void run() {
                try {
                    Transform.this.t3(this.f79441b.float_value);
                    Transform.this.I2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public y() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", Transform.this.c1() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a(variable));
                } catch (Exception unused) {
                }
            }
        }
    }

    public class z implements D5.l {
        public z() {
        }

        @Override
        public int a() {
            return Transform.this.y1(a.f72594b);
        }
    }

    public Transform() {
        Vector3 vector3 = new Vector3();
        this.position = vector3;
        Quaternion quaternion = new Quaternion();
        this.rotation = quaternion;
        Vector3 vector32 = new Vector3(1.0f);
        this.scale = vector32;
        this.state = G.DYNAMIC;
        this.ignoreParentMatrix = false;
        this.lockScale = false;
        this.f79329b = new SteppedArrayList();
        this.f79330c = new SteppedArrayList();
        this.f79332e = new TransformMiniJP();
        this.f79333g = new TransformMiniFloatArrayJP();
        this.f79336k = -1;
        this.f79337l = new C13597d();
        this.f79338m = new C13595b();
        this.f79339n = new C13595b();
        this.f79340o = new C13596c();
        this.f79341p = new C13597d();
        this.f79342q = new C13597d();
        this.f79343r = new C13597d();
        this.f79344s = new C13597d();
        this.f79345t = new C13597d();
        this.f79346u = new C13597d();
        this.f79320A = new C13597d();
        this.f79321B = new k(vector3);
        this.f79322C = new v(quaternion);
        this.f79323D = new w(vector32);
        this.f79324E = false;
        this.f79325F = new SteppedArrayList();
        this.f79326G = new SteppedArrayList();
        onDeserialized();
    }

    public static void E(f out, GameObject gameObject, GameObject parent) {
        f fVar = new f();
        f fVar2 = new f();
        fVar.Q0(parent.transform, true, true, false);
        fVar.E();
        gameObject.transform.p0(fVar2);
        fVar.m0(fVar2, out);
    }

    public static void F(float[] out, GameObject gameObject, GameObject parent) {
        f fVar = new f();
        f fVar2 = new f();
        fVar.Q0(parent.transform, true, true, false);
        fVar.E();
        gameObject.transform.p0(fVar2);
        fVar.c0(fVar2, out);
    }

    public static void G(float[] out, float[] matrix, GameObject parent) {
        f fVar = new f();
        f fVar2 = new f();
        fVar.Q0(parent.transform, true, true, false);
        fVar.E();
        fVar2.x0(matrix);
        fVar.c0(fVar2, out);
    }

    public static void H(Vector3 out, GameObject gameObject, GameObject parent) {
        f fVar = new f();
        f fVar2 = new f();
        f fVar3 = new f();
        fVar.Q0(parent.transform, true, true, false);
        fVar.E();
        gameObject.transform.p0(fVar2);
        fVar.m0(fVar2, fVar3);
        fVar3.D1(out);
    }

    private static boolean W1(Vector3 value) {
        return value != null && Float.isFinite(value.getX()) && Float.isFinite(value.getY()) && Float.isFinite(value.getZ());
    }

    private String getTypeName(List<String> states) {
        G g10 = this.state;
        if (g10 != G.DYNAMIC && g10 == G.STATIC) {
            return states.get(1);
        }
        return states.get(0);
    }

    public void A(Vector3f vector3) {
        y(vector3.f81611x, vector3.f81612y, vector3.f81613z);
    }

    public float A1(GameObject gameObject) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).distance(gameObject.transform.u0(vector32));
        } finally {
            this.f79332e.release(vector32);
            this.f79332e.release(vector3);
        }
    }

    public void A2() {
        try {
            C2(o0());
            z2();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void A3(Quat4f v10) {
        if (v10 == null) {
            throw new NullPointerException("Rotation can't be null");
        }
        v10.normalize();
        setRotation(v10.getW(), v10.getX(), v10.getY(), v10.getZ());
    }

    public Vector3 B(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79343r;
        if (c13597d.f91650b == k10) {
            out.set(c13597d.f91649a);
            return out;
        }
        Quaternion quaternion = (Quaternion) this.f79332e.acquire(Quaternion.class);
        try {
            C0(quaternion);
            quaternion.o0(0.0f, 0.0f, -1.0f, out, true);
            this.f79343r.f91649a.set(out);
            this.f79343r.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(quaternion);
        }
    }

    public Quaternion B0() {
        return C0(new Quaternion());
    }

    public float B1(Transform transform) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).distance(transform.u0(vector32));
        } finally {
            this.f79332e.release(vector32);
            this.f79332e.release(vector3);
        }
    }

    public void B2(f sourceMatrix) {
        try {
            C2(sourceMatrix);
            z2();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void B3(float[] v10) {
        if (v10 == null) {
            throw new NullPointerException("Rotation can't be null");
        }
        setRotation(v10[0], v10[1], v10[2], v10[3]);
    }

    public float[] C(float[] out) {
        if (out == null) {
            out = new float[3];
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79343r;
        if (c13597d.f91650b == k10) {
            c13597d.f91649a.fillOut(out);
            return out;
        }
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            B(vector3);
            vector3.fillOut(out);
            this.f79343r.f91649a.set(out);
            this.f79343r.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public Quaternion C0(Quaternion out) {
        if (out == null) {
            out = new Quaternion();
        }
        int k10 = K8.a.k();
        C13596c c13596c = this.f79340o;
        if (c13596c.f91648b == k10) {
            out.u0(c13596c.f91647a);
            return out;
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.r1(this.f79340o.f91647a);
            out.u0(this.f79340o.f91647a);
            this.f79340o.f91648b = k10;
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public float C1(Vector3 position) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).distance(position);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public final void C2(f sourceMatrix) {
        for (int size = this.f79329b.size() - 1; size >= 0; size--) {
            this.f79329b.get(size).a(sourceMatrix);
        }
    }

    public void C3(float x10, float y10, float z10) {
        y4();
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        this.rotation.v(x10, y10, z10);
        L();
    }

    public final void D(GameObject gameObject, boolean validateThread) {
        if (validateThread) {
            y4();
        }
        this.f79331d = gameObject;
        if (K8.a.r()) {
            if (this.f79334i != 0 || gameObject != null) {
                Y3();
            }
            x2();
        }
    }

    public com.jme3.math.Quaternion D0(com.jme3.math.Quaternion out) {
        if (out == null) {
            out = new com.jme3.math.Quaternion();
        }
        int k10 = K8.a.k();
        C13596c c13596c = this.f79340o;
        if (c13596c.f91648b == k10) {
            out.set(c13596c.f91647a.getX(), this.f79340o.f91647a.getY(), this.f79340o.f91647a.getZ(), this.f79340o.f91647a.I());
            return out;
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.s1(out);
            this.f79340o.f91647a.v0(out);
            this.f79340o.f91648b = k10;
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public float D1(float x10, float y10, float z10) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).sqrtDistance(x10, y10, z10);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public void D2() {
    }

    public void D3(float v10) {
        y4();
        if (Float.isNaN(v10)) {
            throw new IllegalArgumentException("v argument can't be NaN");
        }
        this.rotation.x0(v10);
        L();
    }

    public float E0() {
        return C0(new Quaternion()).I();
    }

    public float E1(GameObject gameObject) {
        return F1(gameObject.transform);
    }

    public final boolean E2(Vector3 right, Vector3 up, Vector3 forward) {
        if (right == null || up == null || forward == null || forward.lengthSquared() < 1.0E-8f) {
            return false;
        }
        forward.normalizeLocal();
        if (right.lengthSquared() < 1.0E-8f) {
            return false;
        }
        float dot = right.dot(forward);
        right.set(right.getX() - (forward.getX() * dot), right.getY() - (forward.getY() * dot), right.getZ() - (forward.getZ() * dot));
        if (right.lengthSquared() < 1.0E-8f) {
            right.set(up).crossLocal(forward);
        }
        if (right.lengthSquared() < 1.0E-8f) {
            return false;
        }
        right.normalizeLocal();
        up.set(forward).crossLocal(right);
        if (up.lengthSquared() < 1.0E-8f) {
            return false;
        }
        up.normalizeLocal();
        right.set(up).crossLocal(forward);
        if (right.lengthSquared() < 1.0E-8f) {
            return false;
        }
        right.normalizeLocal();
        return true;
    }

    public void E3(float v10) {
        y4();
        if (Float.isNaN(v10)) {
            throw new IllegalArgumentException("v argument can't be NaN");
        }
        this.rotation.y0(v10);
        L();
    }

    public float F0() {
        return C0(new Quaternion()).getX();
    }

    public float F1(Transform transform) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).sqrtDistance(transform.u0(vector32));
        } finally {
            this.f79332e.release(vector32);
            this.f79332e.release(vector3);
        }
    }

    public final int F2() {
        S();
        return TransformUpdateController.t(TransformUpdateController.y(this.f79334i));
    }

    public void F3(float v10) {
        y4();
        if (Float.isNaN(v10)) {
            throw new IllegalArgumentException("v argument can't be NaN");
        }
        this.rotation.z0(v10);
        L();
    }

    public float G0() {
        return C0(new Quaternion()).getY();
    }

    public float G1(Vector3 position) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).sqrtDistance(position);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public final int G2() {
        S();
        return TransformUpdateController.u(TransformUpdateController.y(this.f79334i));
    }

    public void G3() {
        y4();
        setRotation(1.0f, 0.0f, 0.0f, 0.0f);
    }

    public float H0() {
        return C0(new Quaternion()).getZ();
    }

    public float H1(float x10, float y10, float z10) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).sqrtDistanceIgnoreY(x10, z10);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public final int H2() {
        S();
        return TransformUpdateController.t(TransformUpdateController.z(this.f79334i));
    }

    public void H3(f matrix4) {
        matrix4.u1(this.scale);
        if (!this.lockScale) {
            L();
            return;
        }
        Vector3 vector3 = this.scale;
        vector3.setY(vector3.getX());
        Vector3 vector32 = this.scale;
        vector32.setZ(vector32.getX());
        L();
    }

    public final void I() {
        for (int size = this.f79330c.size() - 1; size >= 0; size--) {
            this.f79330c.get(size).d();
        }
        this.f79330c.clear();
        K2();
    }

    public JAVARuntime.Vector3 I0(JAVARuntime.Vector3 out) {
        if (out == null) {
            throw new NullPointerException("Out vector can't be null");
        }
        if (out.instance == null) {
            throw new NullPointerException("Out vector can't be null");
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79341p;
        if (c13597d.f91650b == k10) {
            out.instance.set(c13597d.f91649a);
            return out;
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.u1(this.f79341p.f91649a);
            out.instance.set(this.f79341p.f91649a);
            this.f79341p.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public void I2() {
        y4();
        Y3();
        P1();
        TransformUpdateController.k(this.f79334i);
        x2();
    }

    public void I3(Vector3f v10) {
        if (v10 == null) {
            throw new NullPointerException("Vector can't be null");
        }
        setScale(v10.f81611x, v10.f81612y, v10.f81613z);
    }

    public Transform clone() {
        Transform transform = new Transform();
        transform.position.set(this.position);
        transform.rotation.u0(this.rotation);
        transform.scale.set(this.scale);
        transform.state = this.state;
        transform.onDeserialized();
        transform.ignoreParentMatrix = this.ignoreParentMatrix;
        transform.lockScale = this.lockScale;
        return transform;
    }

    public Vector3 J0() {
        return K0(new Vector3());
    }

    public float J1(GameObject gameObject) {
        return K1(gameObject.transform);
    }

    public void J2() {
        y4();
        Y3();
        P1();
        TransformUpdateController.l(this.f79334i);
        x2();
    }

    public void J3(float[] v10) {
        if (v10 == null) {
            throw new NullPointerException("Vector can't be null");
        }
        setScale(v10[0], v10[1], v10[2]);
    }

    public boolean K(float x10, float y10, float z10) {
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        return this.position.equally(x10, y10, z10);
    }

    public Vector3 K0(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79341p;
        if (c13597d.f91650b == k10) {
            out.set(c13597d.f91649a);
            return out;
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.u1(this.f79341p.f91649a);
            out.set(this.f79341p.f91649a);
            this.f79341p.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public float K1(Transform transform) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).sqrtDistanceIgnoreY(transform.u0(vector32));
        } finally {
            this.f79332e.release(vector32);
            this.f79332e.release(vector3);
        }
    }

    public final void K2() {
        boolean M12 = M1();
        if (this.f79327H == M12) {
            return;
        }
        if (M12) {
            TransformUpdateController.o(this);
        } else {
            TransformUpdateController.w(this);
        }
        this.f79327H = M12;
    }

    public void K3(float v10) {
        if (Float.isNaN(v10)) {
            throw new IllegalArgumentException("v argument can't be NaN");
        }
        this.scale.setX(v10);
        if (!this.lockScale) {
            L();
            return;
        }
        Vector3 vector3 = this.scale;
        vector3.setY(vector3.getX());
        Vector3 vector32 = this.scale;
        vector32.setZ(vector32.getX());
    }

    public final void L() {
        if (K8.a.r()) {
            x2();
        } else {
            y2();
        }
    }

    public float L0() {
        Vector3 K02 = K0(new Vector3());
        return Nc.b.S0(K02.getX(), Nc.b.S0(K02.getY(), K02.getZ()));
    }

    public float L1(Vector3 position) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).sqrtDistanceIgnoreY(position);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public void L2(Transform scopeParent, InterfaceC13594a listener) {
        if (scopeParent == null) {
            throw new NullPointerException("scopeParent can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        for (int size = this.f79330c.size() - 1; size >= 0; size--) {
            D d10 = this.f79330c.get(size);
            if (d10.f79355b == scopeParent && d10.f79356c == listener) {
                d10.d();
                this.f79330c.remove(size);
            }
        }
        K2();
    }

    public void L3(float v10) {
        if (this.lockScale) {
            K3(v10);
        } else {
            if (Float.isNaN(v10)) {
                throw new IllegalArgumentException("v argument can't be NaN");
            }
            this.scale.setY(v10);
            L();
        }
    }

    public void M() {
        if (this.f79329b.isEmpty()) {
            return;
        }
        C2(o0());
    }

    public float M0() {
        return K0(new Vector3()).getX();
    }

    public final boolean M1() {
        return (this.f79329b.isEmpty() && this.f79330c.isEmpty()) ? false : true;
    }

    public void M2(InterfaceC13594a listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        for (int size = this.f79330c.size() - 1; size >= 0; size--) {
            D d10 = this.f79330c.get(size);
            if (d10.f79356c == listener) {
                d10.d();
                this.f79330c.remove(size);
            }
        }
        K2();
    }

    public void M3(float v10) {
        if (this.lockScale) {
            K3(v10);
        } else {
            if (Float.isNaN(v10)) {
                throw new IllegalArgumentException("v argument can't be NaN");
            }
            this.scale.setZ(v10);
            L();
        }
    }

    public float N(Vector3 other) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            a0(vector3);
            return vector3.dot(other);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public float N0() {
        return K0(new Vector3()).getY();
    }

    public final boolean N1() {
        return this.f79331d != null;
    }

    public void N2(Object object) {
        y4();
        if (object == null) {
            throw new NullPointerException("Object can't be null");
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f79325F.size(); i10++) {
            E e10 = this.f79325F.get(i10);
            if (e10.d() && e10.b() == object) {
                e10.a();
                z10 = true;
            }
        }
        if (z10) {
            Z();
        }
    }

    public void N3(G state) {
        y4();
        if (this.state == state) {
            return;
        }
        this.state = state;
        x2();
    }

    public float O(Vector3 other) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            S2(vector3);
            return vector3.dot(other);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public float O0() {
        return K0(new Vector3()).getZ();
    }

    public boolean O1() {
        return !this.f79329b.isEmpty();
    }

    public void O2(InterfaceC13601h listener) {
        listener.getClass();
        this.f79329b.remove(listener);
        K2();
    }

    public void O3() {
        y4();
        N3(G.STATIC);
    }

    public float P(Vector3 other) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            r4(vector3);
            return vector3.dot(other);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public f P0(Transform scopeParent) {
        f fVar = new f();
        Q0(scopeParent, fVar);
        return fVar;
    }

    public final void P1() {
        this.f79337l.a();
        this.f79338m.a();
        this.f79339n.a();
        this.f79340o.a();
        this.f79341p.a();
        this.f79342q.a();
        this.f79343r.a();
        this.f79344s.a();
        this.f79345t.a();
        this.f79346u.a();
        this.f79320A.a();
    }

    public final void P2(C5.b rectPosVector) {
        try {
            setPosition(0.0f);
            I2();
            D5.f fVar = rectPosVector.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = rectPosVector.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
            D5.f fVar3 = rectPosVector.f2081p[2].f2076k;
            if (fVar3 != null) {
                fVar3.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void P3(boolean staticValue) {
        y4();
        if (staticValue) {
            N3(G.STATIC);
        } else {
            N3(G.DYNAMIC);
        }
    }

    public Vector3 Q(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79320A;
        if (c13597d.f91650b == k10) {
            out.set(c13597d.f91649a);
            return out;
        }
        Quaternion quaternion = (Quaternion) this.f79332e.acquire(Quaternion.class);
        try {
            C0(quaternion);
            quaternion.o0(0.0f, -1.0f, 0.0f, out, true);
            this.f79320A.f91649a.set(out);
            this.f79320A.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(quaternion);
        }
    }

    public void Q0(Transform scopeParent, f out) {
        if (scopeParent == null) {
            throw new NullPointerException("scopeParent can't be null");
        }
        if (out == null) {
            throw new NullPointerException("out can't be null");
        }
        if (N1() && scopeParent.N1()) {
            E(out, getGameObject(), scopeParent.getGameObject());
        } else {
            out.G();
        }
    }

    public Vector3 Q1(Vector3 dir) {
        return R1(dir, new Vector3());
    }

    public final void Q2(C5.b rectRotVector) {
        try {
            G3();
            I2();
            D5.f fVar = rectRotVector.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = rectRotVector.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
            D5.f fVar3 = rectRotVector.f2081p[2].f2076k;
            if (fVar3 != null) {
                fVar3.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void Q3(Context context) {
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
            Toast.makeText(context, "Available only at animation editor", 0).show();
        } else {
            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.l3(this.f79331d, Z0())) {
                return;
            }
            Toast.makeText(context, "Failed to find the keyframe", 0).show();
        }
    }

    public float[] R0(Transform scopeParent, float[] out) {
        if (scopeParent == null) {
            throw new NullPointerException("scopeParent can't be null");
        }
        if (out == null) {
            out = new float[16];
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            Q0(scopeParent, fVar);
            fVar.o(out);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public Vector3 R1(Vector3 dir, Vector3 out) {
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.E();
            float lengthF = dir.lengthF();
            fVar.g0(dir, out);
            out.mulLocal(lengthF);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public final void R2(C5.b rectScaVector) {
        try {
            setScale(1.0f);
            I2();
            D5.f fVar = rectScaVector.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = rectScaVector.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
            D5.f fVar3 = rectScaVector.f2081p[2].f2076k;
            if (fVar3 != null) {
                fVar3.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void R3(Context context) {
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
            Toast.makeText(context, "Available only at animation editor", 0).show();
        } else {
            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.p3(this.f79331d, j0())) {
                return;
            }
            Toast.makeText(context, "Failed to find the keyframe", 0).show();
        }
    }

    public final void S() {
        if (!this.f79324E && this.f79334i == 0) {
            this.f79334i = TransformUpdateController.b();
            this.f79335j = false;
            this.f79336k = -1;
        }
    }

    public Vector3 S1(Vector3 dir) {
        return T1(dir, new Vector3());
    }

    public Vector3 S2(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79345t;
        if (c13597d.f91650b == k10) {
            out.set(c13597d.f91649a);
            return out;
        }
        Quaternion quaternion = (Quaternion) this.f79332e.acquire(Quaternion.class);
        try {
            C0(quaternion);
            quaternion.o0(1.0f, 0.0f, 0.0f, out, true);
            this.f79345t.f91649a.set(out);
            this.f79345t.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(quaternion);
        }
    }

    public final void S3(Context context) {
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
            Toast.makeText(context, "Available only at animation editor", 0).show();
        } else {
            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.n3(this.f79331d, i0())) {
                return;
            }
            Toast.makeText(context, "Failed to find the keyframe", 0).show();
        }
    }

    public long T() {
        S();
        return this.f79334i;
    }

    public Vector3 T1(Vector3 vector3, Vector3 out) {
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.E();
            fVar.P(vector3, out);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public void T2(float x10, float y10, float z10) {
        U2(x10, y10, z10, F.Local);
    }

    public void T3(float x10, float y10, float z10) {
        y4();
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        if (x10 == 0.0f && y10 == 0.0f && z10 == 0.0f) {
            return;
        }
        this.position.subLocal(x10, y10, z10);
        L();
    }

    public final void U(f out) {
        S();
        int k10 = K8.a.k();
        C13595b c13595b = this.f79339n;
        if (c13595b.f91646b == k10) {
            out.s0(c13595b.f91645a);
            return;
        }
        float[] acquire = this.f79333g.acquire(16);
        try {
            TransformUpdateController.f(this.f79334i, acquire);
            out.y0(acquire);
            this.f79339n.f91645a.s0(out);
            this.f79339n.f91646b = k10;
        } finally {
            this.f79333g.release(acquire);
        }
    }

    public f U0() {
        f fVar = new f();
        V0(fVar);
        return fVar;
    }

    public boolean U1() {
        return this.state == G.DYNAMIC;
    }

    public void U2(float x10, float y10, float z10, F space) {
        Quaternion quaternion = (Quaternion) this.f79332e.acquire(Quaternion.class);
        try {
            if (space == F.Local) {
                if (x10 != 0.0f) {
                    q2(Quaternion.m(1.0f, 0.0f, 0.0f, x10, quaternion));
                }
                if (y10 != 0.0f) {
                    q2(Quaternion.m(0.0f, 1.0f, 0.0f, y10, quaternion));
                }
                if (z10 != 0.0f) {
                    q2(Quaternion.m(0.0f, 0.0f, 1.0f, z10, quaternion));
                }
            } else if (space == F.Global) {
                quaternion.v(x10, y10, z10);
                j4(quaternion);
            }
            this.f79332e.release(quaternion);
            w2();
        } catch (Throwable th2) {
            this.f79332e.release(quaternion);
            throw th2;
        }
    }

    public void U3(float a10) {
        y4();
        if (Float.isNaN(a10)) {
            throw new IllegalArgumentException("a argument can't be NaN");
        }
        if (a10 == 0.0f) {
            return;
        }
        this.scale.subLocal(a10);
        if (!this.lockScale) {
            L();
            return;
        }
        Vector3 vector3 = this.scale;
        vector3.setY(vector3.getX());
        Vector3 vector32 = this.scale;
        vector32.setZ(vector32.getX());
    }

    public final void V(float[] out) {
        S();
        int k10 = K8.a.k();
        C13595b c13595b = this.f79339n;
        if (c13595b.f91646b == k10) {
            c13595b.f91645a.o(out);
            return;
        }
        TransformUpdateController.f(this.f79334i, out);
        this.f79339n.f91645a.v0(out, false);
        this.f79339n.f91646b = k10;
    }

    public void V0(f out) {
        if (out == null) {
            throw new NullPointerException("Out matrix can't be null");
        }
        int k10 = K8.a.k();
        C13595b c13595b = this.f79338m;
        if (c13595b.f91646b == k10) {
            out.s0(c13595b.f91645a);
            return;
        }
        W(out);
        this.f79338m.f91645a.s0(out);
        this.f79338m.f91646b = k10;
    }

    public boolean V1() {
        if (this.f79325F.isEmpty()) {
            return this.ignoreParentMatrix;
        }
        boolean z10 = this.ignoreParentMatrix;
        if (!z10) {
            boolean z11 = false;
            for (int i10 = 0; i10 < this.f79325F.size(); i10++) {
                E e10 = this.f79325F.get(i10);
                if (e10.d()) {
                    z11 = true;
                } else {
                    this.f79326G.add(e10);
                }
            }
            z10 = z11;
        }
        if (!this.f79326G.isEmpty()) {
            this.f79325F.removeAll(this.f79326G);
            this.f79326G.clear();
        }
        return z10;
    }

    public void V2(Vector3 direction) {
        T2(direction.getX(), direction.getY(), direction.getZ());
    }

    public void V3(float x10, float y10, float z10) {
        y4();
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        if (x10 == 0.0f && y10 == 0.0f && z10 == 0.0f) {
            return;
        }
        this.scale.subLocal(x10, y10, z10);
        if (!this.lockScale) {
            L();
            return;
        }
        Vector3 vector3 = this.scale;
        vector3.setY(vector3.getX());
        Vector3 vector32 = this.scale;
        vector32.setZ(vector32.getX());
    }

    public final void W(f out) {
        S();
        int k10 = K8.a.k();
        C13595b c13595b = this.f79338m;
        if (c13595b.f91646b == k10) {
            out.s0(c13595b.f91645a);
            return;
        }
        float[] acquire = this.f79333g.acquire(16);
        try {
            TransformUpdateController.h(this.f79334i, acquire);
            out.y0(acquire);
            this.f79338m.f91645a.s0(out);
            this.f79338m.f91646b = k10;
        } finally {
            this.f79333g.release(acquire);
        }
    }

    public float[] W0(float[] out) {
        if (out == null) {
            out = new float[16];
        }
        int k10 = K8.a.k();
        C13595b c13595b = this.f79338m;
        if (c13595b.f91646b == k10) {
            c13595b.f91645a.o(out);
            return out;
        }
        X(out);
        this.f79338m.f91645a.v0(out, false);
        this.f79338m.f91646b = k10;
        return out;
    }

    public void W2(Vector3 direction, F space) {
        U2(direction.getX(), direction.getY(), direction.getZ(), space);
    }

    public long W3() {
        Y3();
        return this.f79334i;
    }

    public final void X(float[] out) {
        S();
        int k10 = K8.a.k();
        C13595b c13595b = this.f79338m;
        if (c13595b.f91646b == k10) {
            c13595b.f91645a.o(out);
            return;
        }
        TransformUpdateController.h(this.f79334i, out);
        this.f79338m.f91645a.v0(out, false);
        this.f79338m.f91646b = k10;
    }

    public long X0() {
        S();
        return this.f79334i;
    }

    public boolean X1() {
        return this.ignoreParentMatrix;
    }

    public void X2(float x10, float y10, float z10) {
        Y2(x10, y10, z10, F.Local);
    }

    public void X3() {
        Y3();
        this.f79335j = false;
        this.f79336k = -1;
        P1();
    }

    public final D Y(Transform scopeParent, InterfaceC13594a listener) {
        for (int size = this.f79330c.size() - 1; size >= 0; size--) {
            D d10 = this.f79330c.get(size);
            if (d10.f79355b == scopeParent && d10.f79356c == listener) {
                return d10;
            }
        }
        return null;
    }

    public final Transform Y0() {
        GameObject gameObject = this.f79331d;
        if (gameObject == null) {
            throw new RuntimeException("Invalid transform preparation! should be attached to an object.");
        }
        if (!C13317e.H(gameObject) && C13317e.J(this.f79331d.f79294k)) {
            return this.f79331d.f79294k.transform;
        }
        return null;
    }

    public boolean Y1() {
        return this.f79324E;
    }

    public void Y2(float x10, float y10, float z10, F space) {
        float f10;
        float f11;
        if (space == F.Local) {
            y(x10, y10, z10);
            return;
        }
        if (space == F.Global) {
            Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
            f fVar = (f) this.f79332e.acquire(f.class);
            try {
                Transform m02 = m0();
                float f12 = 1.0f;
                if (m02 != null) {
                    m02.p0(fVar);
                    float w12 = 1.0f / fVar.w1();
                    f11 = 1.0f / fVar.y1();
                    f12 = w12;
                    f10 = 1.0f / fVar.A1();
                } else {
                    f10 = 1.0f;
                    f11 = 1.0f;
                }
                z(S2(vector3).mulLocal(x10 * f12));
                z(r4(vector3).mulLocal(y10 * f11));
                z(a0(vector3).mulLocal(z10 * f10));
                this.f79332e.release(fVar);
                this.f79332e.release(vector3);
            } catch (Throwable th2) {
                this.f79332e.release(fVar);
                this.f79332e.release(vector3);
                throw th2;
            }
        }
    }

    public final void Y3() {
        S();
        Transform m02 = m0();
        long T10 = m02 != null ? m02.T() : 0L;
        boolean V12 = V1();
        GameObject gameObject = this.f79331d;
        boolean z10 = gameObject != null && gameObject.c1();
        G g10 = this.state;
        if (g10 == null) {
            g10 = G.DYNAMIC;
        }
        float x10 = this.position.getX();
        float y10 = this.position.getY();
        float z11 = this.position.getZ();
        float I10 = this.rotation.I();
        float x11 = this.rotation.getX();
        float y11 = this.rotation.getY();
        float z12 = this.rotation.getZ();
        float x12 = this.scale.getX();
        float y12 = this.scale.getY();
        float z13 = this.scale.getZ();
        long j10 = this.f79334i;
        int i10 = this.f79336k;
        if (i10 < 0) {
            i10 = K8.a.k();
        }
        TransformUpdateController.s(j10, i10, T10, g10 == G.STATIC ? 1 : 0, V12, z10, x10, y10, z11, I10, x11, y11, z12, x12, y12, z13);
    }

    public void Z() {
        y4();
        Y3();
        P1();
        TransformUpdateController.k(this.f79334i);
        x2();
    }

    public Vector3 Z0() {
        return this.position.m1249clone();
    }

    public boolean Z1() {
        return this.lockScale;
    }

    public void Z2(Vector3 offsetScale) {
        X2(offsetScale.getX(), offsetScale.getY(), offsetScale.getZ());
    }

    public C13599f Z3() {
        C13599f c13599f = new C13599f();
        c13599f.f91667a.set(this.position);
        c13599f.f91668b.u0(this.rotation);
        c13599f.f91669c.set(this.scale);
        return c13599f;
    }

    public Vector3 a0(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79342q;
        if (c13597d.f91650b == k10) {
            out.set(c13597d.f91649a);
            return out;
        }
        Quaternion quaternion = (Quaternion) this.f79332e.acquire(Quaternion.class);
        try {
            C0(quaternion);
            quaternion.o0(0.0f, 0.0f, 1.0f, out, true);
            this.f79342q.f91649a.set(out);
            this.f79342q.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(quaternion);
        }
    }

    public Vector3 a1(Vector3 out) {
        out.set(this.position);
        return out;
    }

    public boolean a2() {
        return this.state == G.STATIC;
    }

    public void a3(Vector3 offsetScale, F space) {
        Y2(offsetScale.getX(), offsetScale.getY(), offsetScale.getZ(), space);
    }

    public void a4() {
        if (this.state == G.STATIC) {
            throw new IllegalStateException("Can not modify values of a static transform");
        }
    }

    public Vector4 b0(Vector4 out) {
        if (out == null) {
            out = new Vector4();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79342q;
        if (c13597d.f91650b == k10) {
            c13597d.f91649a.fillOut(out);
            return out;
        }
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            a0(vector3);
            out.j(vector3.getX(), vector3.getY(), vector3.getZ(), 0.0f);
            this.f79342q.f91649a.set(out);
            this.f79342q.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public com.itsmagic.engine.Engines.Engine.Vector.i b1() {
        return this.f79321B;
    }

    public void b2() {
        y4();
        if (!this.f79324E) {
            Y3();
        }
        P1();
        if (this.f79324E) {
            return;
        }
        TransformUpdateController.m(this.f79334i);
        x2();
    }

    public void b3(Transform transform) {
        y4();
        p3(transform.Z0());
        x3(transform.h1());
        setScale(transform.getScale());
        this.state = transform.state;
        k3(transform.ignoreParentMatrix);
    }

    public JAVARuntime.Transform b4() {
        JAVARuntime.Transform transform = this.f79328I;
        if (transform != null) {
            return transform;
        }
        JAVARuntime.Transform transform2 = new JAVARuntime.Transform(this);
        this.f79328I = transform2;
        return transform2;
    }

    public Vector3 back() {
        return B(new Vector3());
    }

    public Vector4f c0(Vector4f out) {
        if (out == null) {
            out = new Vector4f();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79342q;
        if (c13597d.f91650b == k10) {
            c13597d.f91649a.fillOut(out);
            return out;
        }
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            a0(vector3);
            out.set(vector3.getX(), vector3.getY(), vector3.getZ(), 0.0f);
            this.f79342q.f91649a.set(out);
            this.f79342q.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public float c1() {
        return this.position.getX();
    }

    public Vector3 c2(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79344s;
        if (c13597d.f91650b == k10) {
            out.set(c13597d.f91649a);
            return out;
        }
        Quaternion quaternion = (Quaternion) this.f79332e.acquire(Quaternion.class);
        try {
            C0(quaternion);
            quaternion.o0(-1.0f, 0.0f, 0.0f, out, true);
            this.f79344s.f91649a.set(out);
            this.f79344s.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(quaternion);
        }
    }

    public void c3(f matrix4) {
        y4();
        if (matrix4 == null) {
            throw new NullPointerException("Matrix can't be null");
        }
        matrix4.D1(this.position);
        matrix4.r1(this.rotation);
        this.rotation.l0();
        matrix4.u1(this.scale);
        L();
    }

    public Vector3 c4(Vector3 dir) {
        return d4(dir, new Vector3());
    }

    public float[] d0(float[] out) {
        if (out == null) {
            out = new float[3];
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79342q;
        if (c13597d.f91650b == k10) {
            c13597d.f91649a.fillOut(out);
            return out;
        }
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            a0(vector3);
            out[0] = vector3.getX();
            out[1] = vector3.getY();
            out[2] = vector3.getZ();
            this.f79342q.f91649a.set(out);
            this.f79342q.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public float d1() {
        return this.position.getY();
    }

    public void d2(Vector3 to, float speed) {
        y4();
        if (Float.isNaN(to.getX())) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(to.getY())) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(to.getZ())) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        this.position.lerpLocal(to, speed);
        L();
    }

    public void d3(com.jme3.math.Transform transform) {
        y4();
        q3(transform.getTranslation());
        z3(transform.getRotation());
        I3(transform.getScale());
    }

    public Vector3 d4(Vector3 dir, Vector3 out) {
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            float lengthF = dir.lengthF();
            fVar.g0(dir, out);
            out.mulLocal(lengthF);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public void destroy() {
        I();
        TransformUpdateController.x(this);
        TransformUpdateController.w(this);
        this.f79327H = false;
        TransformUpdateController.c(this.f79334i);
        this.f79334i = 0L;
        this.f79335j = false;
        this.f79336k = -1;
        this.f79331d = null;
        this.f79332e.clear();
        this.f79333g.clear();
    }

    public Vector3 down() {
        return Q(new Vector3());
    }

    public float e0() {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            a0(vector3);
            return vector3.getX();
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public float e1() {
        return this.position.getZ();
    }

    public void e2(C13599f snapshop) {
        p3(snapshop.f91667a);
        x3(snapshop.f91668b);
        setScale(snapshop.f91669c);
    }

    public void e3(GameObject gameObject) {
        D(gameObject, false);
    }

    public void e4(float px, float py, float pz) {
        TransformMiniJP transformMiniJP = this.f79332e;
        Vector3 vector3 = (Vector3) transformMiniJP.acquire(Vector3.class);
        Quaternion quaternion = (Quaternion) transformMiniJP.acquire(Quaternion.class);
        Vector3 vector32 = (Vector3) transformMiniJP.acquire(Vector3.class);
        try {
            vector3.set(px, py, pz);
            quaternion.C0();
            vector32.set(1.0f);
            i4(vector3, quaternion, vector32);
        } finally {
            this.f79332e.release(vector32);
            this.f79332e.release(quaternion);
            this.f79332e.release(vector3);
        }
    }

    public float f0() {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            a0(vector3);
            return vector3.getY();
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public void f1(Transform ancestor, f out) {
        if (out == null) {
            throw new NullPointerException("Out matrix can't be null");
        }
        float[] acquire = this.f79333g.acquire(16);
        try {
            out.y0(g1(ancestor, acquire));
        } finally {
            this.f79333g.release(acquire);
        }
    }

    public void f2(Quaternion to, float blend) {
        y4();
        if (to == null) {
            throw new NullPointerException("To can't be null");
        }
        if (blend <= 0.0f) {
            return;
        }
        this.rotation.f(to, blend);
        L();
    }

    public boolean f3(float[] matrix) {
        y4();
        Transform m02 = m0();
        if (m02 == null) {
            f fVar = (f) JP.acquire(f.class);
            Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
            fVar.x0(matrix);
            setPosition(fVar.F1(), fVar.G1(), fVar.H1());
            x3(fVar.r1(quaternion));
            setScale(fVar.w1(), fVar.y1(), fVar.A1());
            JP.release(quaternion);
            JP.release(fVar);
            return true;
        }
        f fVar2 = (f) JP.acquire(f.class);
        f fVar3 = (f) JP.acquire(f.class);
        Quaternion quaternion2 = (Quaternion) JP.acquire(Quaternion.class);
        m02.p0(fVar2);
        fVar2.E();
        fVar3.x0(matrix);
        fVar2.L(fVar3, fVar3);
        setPosition(fVar3.F1(), fVar3.G1(), fVar3.H1());
        x3(fVar3.r1(quaternion2));
        setScale(fVar3.w1(), fVar3.y1(), fVar3.A1());
        JP.release(quaternion2);
        JP.release(fVar2);
        JP.release(fVar3);
        return true;
    }

    public void f4(float rw, float rx, float ry, float rz) {
        TransformMiniJP transformMiniJP = this.f79332e;
        Vector3 vector3 = (Vector3) transformMiniJP.acquire(Vector3.class);
        Quaternion quaternion = (Quaternion) transformMiniJP.acquire(Quaternion.class);
        Vector3 vector32 = (Vector3) transformMiniJP.acquire(Vector3.class);
        try {
            vector3.set(0.0f);
            quaternion.t0(rw, rx, ry, rz);
            vector32.set(1.0f);
            i4(vector3, quaternion, vector32);
        } finally {
            this.f79332e.release(vector32);
            this.f79332e.release(quaternion);
            this.f79332e.release(vector3);
        }
    }

    public Vector3 forward() {
        return a0(new Vector3());
    }

    public float g0() {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            a0(vector3);
            return vector3.getZ();
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public float[] g1(Transform ancestor, float[] out) {
        if (out == null) {
            out = new float[16];
        }
        TransformUpdateController.i(ancestor != null ? ancestor.X0() : 0L, X0(), out);
        return out;
    }

    public void g2(Vector3 to) {
        y4();
        if (to == null) {
            throw new NullPointerException("To can't be null");
        }
        this.rotation.U(to);
        L();
    }

    public void g3(float x10, float y10, float z10) {
        y4();
        Transform m02 = m0();
        if (m02 == null) {
            setPosition(x10, y10, z10);
            return;
        }
        f fVar = (f) JP.acquire(f.class);
        try {
            m02.p0(fVar);
            fVar.E();
            p3(fVar.M(x10, y10, z10));
        } finally {
            JP.release(fVar);
        }
    }

    public void g4(Quaternion offsetRotation) {
        TransformMiniJP transformMiniJP = this.f79332e;
        Vector3 vector3 = (Vector3) transformMiniJP.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) transformMiniJP.acquire(Vector3.class);
        try {
            vector3.set(0.0f);
            vector32.set(1.0f);
            i4(vector3, offsetRotation, vector32);
        } finally {
            this.f79332e.release(vector32);
            this.f79332e.release(vector3);
        }
    }

    public InspectorEditor getEditor() {
        if (this.editor == null) {
            this.editor = new InspectorEditor();
        }
        return this.editor;
    }

    public GameObject getGameObject() {
        return this.f79331d;
    }

    public List<C5.b> getInspectorEntries(Context context) {
        int i10;
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        if (!com.itsmagic.engine.Engines.Engine.World.a.y()) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(Lang.l(Lang.T.DYNAMIC));
            steppedArrayList.add(Lang.l(Lang.T.STATIC));
            linkedList.add(new C5.b(new x(), getTypeName(steppedArrayList), steppedArrayList, b.a.SLDropdown, Lang.l(Lang.T.STATE)));
        }
        String l10 = Lang.l(Lang.T.POSITION);
        b.a aVar = b.a.Vector;
        C5.b bVar = new C5.b(l10, aVar, new C5.b[4]);
        GameObject gameObject = this.f79331d;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.VEC3;
        C5.b e10 = bVar.e(gameObject, this, a.f72594b, cVar);
        C5.b[] bVarArr = e10.f2081p;
        y yVar = new y();
        b.a aVar2 = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(yVar, "X", aVar2, new z());
        e10.f2081p[1] = new C5.b(new A(), "Y", aVar2, new B());
        e10.f2081p[2] = new C5.b(new C(), Signature.SIG_BOOLEAN, aVar2, new C12807a());
        C5.b[] bVarArr2 = e10.f2081p;
        C12808b c12808b = new C12808b(e10, context);
        b.a aVar3 = b.a.Button;
        bVarArr2[3] = new C5.b(c12808b, b3.s.f32937c, aVar3).n(true);
        linkedList.add(e10);
        C5.b e11 = new C5.b(Lang.l(Lang.T.ROTATION), aVar, new C5.b[4]).e(this.f79331d, this, a.f72595c, com.itsmagic.engine.Engines.Engine.Animation.c.QUAT);
        e11.f2081p[0] = new C5.b(new C12809c(), "X", aVar2, 20.0f, new C12810d());
        e11.f2081p[1] = new C5.b(new C12811e(), "Y", aVar2, 20.0f, new C12812f());
        e11.f2081p[2] = new C5.b(new C12813g(), Signature.SIG_BOOLEAN, aVar2, 20.0f, new h());
        e11.f2081p[3] = new C5.b(new i(e11, context), b3.s.f32937c, aVar3).n(true);
        linkedList.add(e11);
        if (this.lockScale) {
            C5.b e12 = new C5.b((String) null, aVar, new C5.b[2]).e(this.f79331d, this, "s", cVar);
            i10 = 0;
            e12.f2081p[0] = new C5.b(new r(), "Scale", aVar2, new s());
            e12.f2081p[1] = new C5.b(new t(e12, context), "\u1f512\ufe0e", aVar3).n(true);
            linkedList.add(e12);
        } else {
            C5.b e13 = new C5.b(Lang.l(Lang.T.SCALE), aVar, new C5.b[4]).e(this.f79331d, this, "s", cVar);
            e13.f2081p[0] = new C5.b(new j(), "X", aVar2, new l());
            e13.f2081p[1] = new C5.b(new m(), "Y", aVar2, new n());
            e13.f2081p[2] = new C5.b(new o(), Signature.SIG_BOOLEAN, aVar2, new p());
            e13.f2081p[3] = new C5.b(new q(e13, context), b3.s.f32937c, aVar3).n(true);
            linkedList.add(e13);
            i10 = 0;
        }
        if (!com.itsmagic.engine.Engines.Engine.World.a.y()) {
            linkedList.add(new C5.b(new u(), Lang.l(Lang.T.IGNORE_PARENT), b.a.SLBoolean));
        }
        if (V1()) {
            int i11 = i10;
            while (true) {
                if (i11 >= this.f79325F.size()) {
                    break;
                }
                E e14 = this.f79325F.get(i11);
                if (e14.d()) {
                    linkedList.add(new C5.b(e14.c() + " is forcing this transform to ignore the parent", 12, R.color.theme_error));
                    break;
                }
                i11++;
            }
        }
        return linkedList;
    }

    public float getRotationY() {
        return this.rotation.getY();
    }

    public Vector3 getScale() {
        return this.scale.m1249clone();
    }

    public Vector3 h0() {
        return this.position;
    }

    public Quaternion h1() {
        return this.rotation.clone();
    }

    public void h2(float x10, float y10, float z10) {
        i2(x10, y10, z10, false, false);
    }

    public void h3(Vector3 pos) {
        y4();
        Transform m02 = m0();
        if (m02 == null) {
            p3(pos);
            return;
        }
        f fVar = (f) JP.acquire(f.class);
        try {
            m02.p0(fVar);
            fVar.E();
            p3(fVar.O(pos));
        } finally {
            JP.release(fVar);
        }
    }

    public void h4(Vector3 offsetPosition) {
        TransformMiniJP transformMiniJP = this.f79332e;
        Quaternion quaternion = (Quaternion) transformMiniJP.acquire(Quaternion.class);
        Vector3 vector3 = (Vector3) transformMiniJP.acquire(Vector3.class);
        try {
            quaternion.C0();
            vector3.set(1.0f);
            i4(offsetPosition, quaternion, vector3);
        } finally {
            this.f79332e.release(vector3);
            this.f79332e.release(quaternion);
        }
    }

    public Quaternion i0() {
        return this.rotation;
    }

    public Quaternion i1(Quaternion out) {
        out.u0(this.rotation);
        return out;
    }

    public void i2(float x10, float y10, float z10, boolean yaw, boolean pitch) {
        if (Float.isFinite(x10) && Float.isFinite(y10) && Float.isFinite(z10)) {
            TransformMiniJP transformMiniJP = this.f79332e;
            Vector3 vector3 = (Vector3) transformMiniJP.acquire(Vector3.class);
            Quaternion quaternion = (Quaternion) transformMiniJP.acquire(Quaternion.class);
            Vector3 vector32 = (Vector3) transformMiniJP.acquire(Vector3.class);
            f fVar = (f) transformMiniJP.acquire(f.class);
            try {
                u0(vector3);
                vector32.set(x10 - vector3.getX(), y10 - vector3.getY(), z10 - vector3.getZ());
                if (W1(vector32) && vector32.lengthSquared() >= 1.0E-8f) {
                    Transform m02 = m0();
                    if (m02 != null) {
                        m02.p0(fVar);
                        fVar.E();
                        fVar.g0(vector32, vector32);
                    }
                    if (W1(vector32) && vector32.lengthSquared() >= 1.0E-8f) {
                        if (!yaw && !pitch) {
                            quaternion.U(vector32);
                            x3(quaternion);
                            this.f79332e.release(fVar);
                            this.f79332e.release(vector32);
                            this.f79332e.release(quaternion);
                            this.f79332e.release(vector3);
                        }
                        quaternion.d0(vector32, yaw, pitch);
                        x3(quaternion);
                        this.f79332e.release(fVar);
                        this.f79332e.release(vector32);
                        this.f79332e.release(quaternion);
                        this.f79332e.release(vector3);
                    }
                }
            } finally {
                this.f79332e.release(fVar);
                this.f79332e.release(vector32);
                this.f79332e.release(quaternion);
                this.f79332e.release(vector3);
            }
        }
    }

    public void i3(Quaternion rotation) {
        y4();
        if (rotation == null) {
            throw new NullPointerException("Rotation can't be null");
        }
        if (!rotation.M()) {
            throw new RuntimeException("Invalid rotation [" + rotation.V0() + "]");
        }
        Transform m02 = m0();
        if (m02 == null) {
            x3(rotation);
            return;
        }
        f fVar = (f) JP.acquire(f.class);
        f fVar2 = (f) JP.acquire(f.class);
        f fVar3 = (f) JP.acquire(f.class);
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
        try {
            m02.p0(fVar);
            fVar.E();
            fVar2.R0(rotation);
            vector3.set(fVar2.f79883b, fVar2.f79887g, fVar2.f79891l);
            vector32.set(fVar2.f79884c, fVar2.f79888i, fVar2.f79892m);
            vector33.set(fVar2.f79885d, fVar2.f79889j, fVar2.f79893n);
            fVar.g0(vector3, vector3);
            fVar.g0(vector32, vector32);
            fVar.g0(vector33, vector33);
            if (!E2(vector3, vector32, vector33)) {
                x3(rotation);
                return;
            }
            fVar3.f79883b = vector3.getX();
            fVar3.f79887g = vector3.getY();
            fVar3.f79891l = vector3.getZ();
            fVar3.f79884c = vector32.getX();
            fVar3.f79888i = vector32.getY();
            fVar3.f79892m = vector32.getZ();
            fVar3.f79885d = vector33.getX();
            fVar3.f79889j = vector33.getY();
            fVar3.f79893n = vector33.getZ();
            fVar3.f79886e = 0.0f;
            fVar3.f79890k = 0.0f;
            fVar3.f79894o = 0.0f;
            fVar3.f79895p = 0.0f;
            fVar3.f79896q = 0.0f;
            fVar3.f79897r = 0.0f;
            fVar3.f79898s = 1.0f;
            x3(fVar3.q1());
        } finally {
            JP.release(vector33);
            JP.release(vector32);
            JP.release(vector3);
            JP.release(fVar3);
            JP.release(fVar2);
            JP.release(fVar);
        }
    }

    public void i4(Vector3 offsetPosition, Quaternion offsetRotation, Vector3 offsetScale) {
        y4();
        try {
            TransformMiniJP transformMiniJP = this.f79332e;
            f fVar = (f) transformMiniJP.acquire(f.class);
            f fVar2 = (f) transformMiniJP.acquire(f.class);
            f fVar3 = (f) transformMiniJP.acquire(f.class);
            try {
                p0(fVar2);
                if (N1()) {
                    Transform m02 = m0();
                    if (m02 == null) {
                        fVar.b1(offsetPosition, offsetScale, offsetRotation);
                        fVar.d0(fVar2);
                        c3(fVar);
                    } else {
                        m02.p0(fVar3);
                        fVar.b1(offsetPosition, offsetScale, offsetRotation);
                        fVar.d0(fVar2);
                        fVar3.E();
                        fVar3.d0(fVar);
                        c3(fVar3);
                    }
                }
                this.f79332e.release(fVar3);
                this.f79332e.release(fVar2);
                this.f79332e.release(fVar);
            } catch (Throwable th2) {
                this.f79332e.release(fVar3);
                this.f79332e.release(fVar2);
                this.f79332e.release(fVar);
                throw th2;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public Vector3 j0() {
        return this.scale;
    }

    public float j1() {
        return this.rotation.D();
    }

    public void j2(Transform transform) {
        if (transform == null) {
            throw new NullPointerException("Transform can't be null");
        }
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            lookTo(transform.u0(vector3));
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public void j3(Vector3 scale) {
        y4();
        Transform m02 = m0();
        if (m02 == null) {
            setScale(scale);
            return;
        }
        f fVar = (f) JP.acquire(f.class);
        f fVar2 = (f) JP.acquire(f.class);
        try {
            m02.p0(fVar);
            fVar.E();
            fVar2.E0(scale);
            fVar.L(fVar2, fVar2);
            setScale(fVar2.t1());
        } finally {
            JP.release(fVar2);
            JP.release(fVar);
        }
    }

    public void j4(Quaternion offsetRotation) {
        y4();
        try {
            TransformMiniJP transformMiniJP = this.f79332e;
            f fVar = (f) transformMiniJP.acquire(f.class);
            f fVar2 = (f) transformMiniJP.acquire(f.class);
            f fVar3 = (f) transformMiniJP.acquire(f.class);
            try {
                p0(fVar2);
                if (N1()) {
                    Transform m02 = m0();
                    if (m02 == null) {
                        fVar.R0(offsetRotation);
                        fVar.d0(fVar2);
                        y3(fVar);
                    } else {
                        m02.p0(fVar3);
                        fVar.R0(offsetRotation);
                        fVar.d0(fVar2);
                        fVar3.E();
                        fVar3.d0(fVar);
                        y3(fVar3);
                    }
                }
                this.f79332e.release(fVar3);
                this.f79332e.release(fVar2);
                this.f79332e.release(fVar);
            } catch (Throwable th2) {
                this.f79332e.release(fVar3);
                this.f79332e.release(fVar2);
                this.f79332e.release(fVar);
                throw th2;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int k0() {
        K8.a.G();
        return F2();
    }

    public float k1() {
        return this.rotation.E();
    }

    public void k2(Transform transform, boolean yaw, boolean pitch) {
        if (transform == null) {
            throw new NullPointerException("Transform can't be null");
        }
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            l2(transform.u0(vector3), yaw, pitch);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public void k3(boolean ignoreParentMatrix) {
        y4();
        if (this.ignoreParentMatrix == ignoreParentMatrix) {
            return;
        }
        this.ignoreParentMatrix = ignoreParentMatrix;
        Z();
    }

    public void k4(float sx, float sy, float sz) {
        TransformMiniJP transformMiniJP = this.f79332e;
        Vector3 vector3 = (Vector3) transformMiniJP.acquire(Vector3.class);
        Quaternion quaternion = (Quaternion) transformMiniJP.acquire(Quaternion.class);
        Vector3 vector32 = (Vector3) transformMiniJP.acquire(Vector3.class);
        try {
            vector3.set(0.0f);
            quaternion.C0();
            vector32.set(sx, sy, sz);
            i4(vector3, quaternion, vector32);
        } finally {
            this.f79332e.release(vector32);
            this.f79332e.release(quaternion);
            this.f79332e.release(vector3);
        }
    }

    public int l0() {
        K8.a.G();
        return H2();
    }

    public float l1() {
        return this.rotation.F();
    }

    public void l2(Vector3 target, boolean yaw, boolean pitch) {
        if (target == null) {
            throw new NullPointerException("Target can't be null");
        }
        i2(target.getX(), target.getY(), target.getZ(), yaw, pitch);
    }

    public void l3(boolean ignoreThreadCheck) {
        this.f79324E = ignoreThreadCheck;
    }

    public void l4(Vector3 offsetScale) {
        TransformMiniJP transformMiniJP = this.f79332e;
        Vector3 vector3 = (Vector3) transformMiniJP.acquire(Vector3.class);
        Quaternion quaternion = (Quaternion) transformMiniJP.acquire(Quaternion.class);
        try {
            vector3.set(0.0f);
            quaternion.C0();
            i4(vector3, quaternion, offsetScale);
        } finally {
            this.f79332e.release(quaternion);
            this.f79332e.release(vector3);
        }
    }

    public Vector3 left() {
        return c2(new Vector3());
    }

    public void lerpLookTo(Vector3 other, float lerpSpeed) {
        if (other == null) {
            throw new NullPointerException("Other object can't be null");
        }
        TransformMiniJP transformMiniJP = this.f79332e;
        Vector3 vector3 = (Vector3) transformMiniJP.acquire(Vector3.class);
        Quaternion quaternion = (Quaternion) transformMiniJP.acquire(Quaternion.class);
        Quaternion quaternion2 = (Quaternion) transformMiniJP.acquire(Quaternion.class);
        Vector3 vector32 = (Vector3) transformMiniJP.acquire(Vector3.class);
        f fVar = (f) transformMiniJP.acquire(f.class);
        try {
            u0(vector3);
            vector32.set(other.getX() - vector3.getX(), other.getY() - vector3.getY(), other.getZ() - vector3.getZ());
            if (vector32.lengthSquared() >= 1.0E-8f) {
                Transform m02 = m0();
                if (m02 != null) {
                    m02.p0(fVar);
                    fVar.E();
                    fVar.g0(vector32, vector32);
                }
                if (W1(vector32) && vector32.lengthSquared() >= 1.0E-8f) {
                    quaternion2.U(vector32);
                    if (com.itsmagic.engine.Engines.Engine.Quaternion.c.a(quaternion2, 0.0f)) {
                        quaternion2.C0();
                    }
                    quaternion.u0(this.rotation);
                    quaternion.f(quaternion2, lerpSpeed);
                    if (com.itsmagic.engine.Engines.Engine.Quaternion.c.a(quaternion, 0.0f)) {
                        quaternion.C0();
                    }
                    x3(quaternion);
                    this.f79332e.release(fVar);
                    this.f79332e.release(vector32);
                    this.f79332e.release(quaternion2);
                    this.f79332e.release(quaternion);
                    this.f79332e.release(vector3);
                }
            }
        } finally {
            this.f79332e.release(fVar);
            this.f79332e.release(vector32);
            this.f79332e.release(quaternion2);
            this.f79332e.release(quaternion);
            this.f79332e.release(vector3);
        }
    }

    public void lookTo(Vector3 target) {
        l2(target, false, false);
    }

    public final Transform m0() {
        if (!N1() || V1()) {
            return null;
        }
        return Y0();
    }

    public void m2(GameObject gameObject) {
        if (gameObject == null) {
            throw new NullPointerException("gameObject can't be null");
        }
        n2(gameObject.transform);
    }

    public void m3(boolean lockScale) {
        y4();
        this.lockScale = lockScale;
        if (lockScale) {
            setScale(t1());
        }
    }

    public Vector3 m4(Vector3 dir) {
        return n4(dir, new Vector3());
    }

    public long n0() {
        return this.f79334i;
    }

    public com.itsmagic.engine.Engines.Engine.Quaternion.b n1() {
        return this.f79322C;
    }

    public void n2(Transform transform) {
        if (transform == null) {
            throw new NullPointerException("transform can't be null");
        }
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            transform.u0(vector3);
            vector3.setY(t0().getY());
            lookTo(vector3);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public void n3(GameObject gameObject) {
        gameObject.transform.u0(this.position);
        L();
    }

    public Vector3 n4(Vector3 vector3, Vector3 out) {
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.P(vector3, out);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public f o0() {
        f fVar = new f();
        p0(fVar);
        return fVar;
    }

    public float o1() {
        return this.rotation.I();
    }

    public void o2(Vector3 target) {
        if (target == null) {
            throw new NullPointerException("target can't be null");
        }
        Vector3 m1249clone = target.m1249clone();
        m1249clone.setY(x0());
        lookTo(m1249clone);
    }

    public void o3(f matrix4) {
        matrix4.D1(this.position);
        L();
    }

    public void o4(float x10, float y10, float z10) {
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        p4(x10, y10, z10, F.Local);
    }

    public void onDeserialized() {
        TransformMiniJP transformMiniJP = this.f79332e;
        if (transformMiniJP == null) {
            this.f79332e = new TransformMiniJP();
        } else {
            transformMiniJP.clear();
        }
        TransformMiniFloatArrayJP transformMiniFloatArrayJP = this.f79333g;
        if (transformMiniFloatArrayJP == null) {
            this.f79333g = new TransformMiniFloatArrayJP();
        } else {
            transformMiniFloatArrayJP.clear();
        }
        if (this.f79334i != 0) {
            TransformUpdateController.x(this);
            TransformUpdateController.w(this);
            TransformUpdateController.c(this.f79334i);
        }
        this.f79334i = 0L;
        this.f79335j = false;
        this.f79336k = -1;
        this.f79327H = false;
        if (this.state == null) {
            this.state = G.DYNAMIC;
        }
        this.f79321B.e(this.position);
        this.f79322C.Z0(this.rotation);
        this.f79323D.e(this.scale);
    }

    public void p0(f out) {
        if (out == null) {
            throw new NullPointerException("Out matrix can't be null");
        }
        int k10 = K8.a.k();
        C13595b c13595b = this.f79339n;
        if (c13595b.f91646b == k10) {
            out.s0(c13595b.f91645a);
            return;
        }
        U(out);
        this.f79339n.f91645a.s0(out);
        this.f79339n.f91646b = k10;
    }

    public float p1() {
        return this.rotation.getX();
    }

    public void p2(float w10, float x10, float y10, float z10) {
        y4();
        if (Float.isNaN(w10)) {
            throw new IllegalArgumentException("w argument can't be NaN");
        }
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        float I10 = this.rotation.I();
        float x11 = this.rotation.getX();
        float y11 = this.rotation.getY();
        float z11 = this.rotation.getZ();
        this.rotation.h0(w10, x10, y10, z10);
        if (this.rotation.l0() && this.rotation.M()) {
            L();
        } else {
            this.rotation.t0(I10, x11, y11, z11);
            throw new RuntimeException("Invalid quaternion");
        }
    }

    public void p3(Vector3 v10) {
        if (v10 == null) {
            throw new NullPointerException("Vector can't be null");
        }
        setPosition(v10.getX(), v10.getY(), v10.getZ());
    }

    public void p4(float x10, float y10, float z10, F space) {
        float f10;
        float f11;
        float f12;
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        if (space != F.Local) {
            if (space == F.Global) {
                e4(x10, y10, z10);
                return;
            }
            return;
        }
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            if (m0() != null) {
                Quaternion clone = this.rotation.clone();
                Vector3 m1249clone = this.scale.m1249clone();
                if (x10 != 0.0f) {
                    S2(vector3);
                    f10 = (vector3.getX() * x10) + 0.0f;
                    f11 = (vector3.getY() * x10) + 0.0f;
                    f12 = (vector3.getZ() * x10) + 0.0f;
                } else {
                    f10 = 0.0f;
                    f11 = 0.0f;
                    f12 = 0.0f;
                }
                if (y10 != 0.0f) {
                    r4(vector3);
                    f10 += vector3.getX() * y10;
                    f11 += vector3.getY() * y10;
                    f12 += vector3.getZ() * y10;
                }
                if (z10 != 0.0f) {
                    a0(vector3);
                    f10 += vector3.getX() * z10;
                    f11 += vector3.getY() * z10;
                    f12 += vector3.getZ() * z10;
                }
                e4(f10, f11, f12);
                this.rotation.u0(clone);
                this.scale.set(m1249clone);
            } else {
                S2(vector3);
                v(vector3.getX() * x10, vector3.getY() * x10, vector3.getZ() * x10);
                r4(vector3);
                v(vector3.getX() * y10, vector3.getY() * y10, vector3.getZ() * y10);
                a0(vector3);
                v(vector3.getX() * z10, vector3.getY() * z10, vector3.getZ() * z10);
            }
            this.f79332e.release(vector3);
        } catch (Throwable th2) {
            this.f79332e.release(vector3);
            throw th2;
        }
    }

    public void q0(Matrix4f out) {
        float[] acquire = this.f79333g.acquire(16);
        try {
            r0(acquire);
            out.set(acquire, false);
        } finally {
            this.f79333g.release(acquire);
        }
    }

    public float q1() {
        return this.rotation.getZ();
    }

    public void q2(Quaternion quaternion) {
        y4();
        if (quaternion == null) {
            throw new NullPointerException("Quaternion can't be null");
        }
        if (Float.isNaN(quaternion.I())) {
            throw new IllegalArgumentException("w argument can't be NaN");
        }
        if (Float.isNaN(quaternion.getX())) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(quaternion.getY())) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(quaternion.getZ())) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        if (!quaternion.M()) {
            throw new RuntimeException("Invalid rotation [" + quaternion.V0() + "]");
        }
        float I10 = this.rotation.I();
        float x10 = this.rotation.getX();
        float y10 = this.rotation.getY();
        float z10 = this.rotation.getZ();
        this.rotation.i0(quaternion);
        if (this.rotation.l0() && this.rotation.M()) {
            L();
        } else {
            this.rotation.t0(I10, x10, y10, z10);
            throw new RuntimeException("Invalid quaternion");
        }
    }

    public void q3(Vector3f v10) {
        if (v10 == null) {
            throw new NullPointerException("Vector can't be null");
        }
        setPosition(v10.f81611x, v10.f81612y, v10.f81613z);
    }

    public void q4(Vector3 d10) {
        o4(d10.getX(), d10.getY(), d10.getZ());
    }

    public void r(Transform scopeParent, InterfaceC13594a listener, boolean ignoreScaleOfScopeParent, boolean normalizeLikeColliderShape, boolean preserveChildScaleWhenScopeParentMatches, float positionTolerance, float rotationToleranceDegrees, float scaleTolerance) {
        if (scopeParent == null) {
            throw new NullPointerException("scopeParent can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        L2(scopeParent, listener);
        D d10 = new D(this, scopeParent, listener, ignoreScaleOfScopeParent, normalizeLikeColliderShape, preserveChildScaleWhenScopeParentMatches, positionTolerance, rotationToleranceDegrees, scaleTolerance, null);
        this.f79330c.add(d10);
        d10.q();
        K2();
        d10.g();
    }

    public float[] r0(float[] out) {
        if (out == null) {
            out = new float[16];
        }
        int k10 = K8.a.k();
        C13595b c13595b = this.f79339n;
        if (c13595b.f91646b == k10) {
            c13595b.f91645a.o(out);
            return out;
        }
        V(out);
        this.f79339n.f91645a.v0(out, false);
        this.f79339n.f91646b = k10;
        return out;
    }

    public Vector3 r1(Vector3 out) {
        out.set(this.scale);
        return out;
    }

    public f r2(f matrix4, f out) {
        if (matrix4 == null) {
            throw new NullPointerException("Matrix can't be null");
        }
        if (out == null) {
            out = new f();
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.L(matrix4, out);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public void r3(javax.vecmath.Vector3f v10) {
        if (v10 == null) {
            throw new NullPointerException("Vector can't be null");
        }
        setPosition(v10.f92836x, v10.f92837y, v10.f92838z);
    }

    public Vector3 r4(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        int k10 = K8.a.k();
        C13597d c13597d = this.f79346u;
        if (c13597d.f91650b == k10) {
            out.set(c13597d.f91649a);
            return out;
        }
        Quaternion quaternion = (Quaternion) this.f79332e.acquire(Quaternion.class);
        try {
            C0(quaternion);
            quaternion.o0(0.0f, 1.0f, 0.0f, out, true);
            this.f79346u.f91649a.set(out);
            this.f79346u.f91650b = k10;
            return out;
        } finally {
            this.f79332e.release(quaternion);
        }
    }

    public Vector3 right() {
        return S2(new Vector3());
    }

    public void s(Object object, String name) {
        y4();
        if (object == null) {
            throw new NullPointerException("Object can't be null");
        }
        this.f79325F.add(new E(object, name));
        Z();
    }

    public JAVARuntime.Vector3 s0(JAVARuntime.Vector3 out) {
        if (out == null) {
            throw new NullPointerException("Out vector can't be null");
        }
        Vector3 vector3 = out.instance;
        if (vector3 == null) {
            throw new NullPointerException("Out vector can't be null");
        }
        u0(vector3);
        return out;
    }

    public com.itsmagic.engine.Engines.Engine.Vector.i s1() {
        return this.f79323D;
    }

    public Vector3 s2(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.p0(out, out);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public void s3(float[] v10) {
        if (v10 == null) {
            throw new NullPointerException("Vector can't be null");
        }
        setPosition(v10[0], v10[1], v10[2]);
    }

    public boolean s4(int id2) {
        return F2() == id2;
    }

    public void set(float[] mat4) {
        y4();
        if (mat4 == null) {
            throw new NullPointerException("Matrix can't be null");
        }
        f fVar = (f) JP.acquire(f.class);
        try {
            fVar.y0(mat4);
            fVar.D1(this.position);
            fVar.r1(this.rotation);
            this.rotation.l0();
            fVar.u1(this.scale);
            L();
        } finally {
            JP.release(fVar);
        }
    }

    public void setGameObject(GameObject gameObject) {
        D(gameObject, true);
    }

    public void setPosition(float x10, float y10, float z10) {
        if (!Float.isNaN(x10)) {
            if (!Float.isNaN(y10)) {
                if (!Float.isNaN(z10)) {
                    this.position.set(x10, y10, z10);
                    L();
                    return;
                }
                throw new IllegalArgumentException("z argument can't be NaN");
            }
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        throw new IllegalArgumentException("x argument can't be NaN");
    }

    public void setRotation(Vector3 euler) {
        if (euler != null) {
            setRotation(euler.getX(), euler.getY(), euler.getZ());
            return;
        }
        throw new NullPointerException("euler can't be null");
    }

    public void setScale(Vector3 v10) {
        if (v10 != null) {
            setScale(v10.getX(), v10.getY(), v10.getZ());
            return;
        }
        throw new NullPointerException("Vector can't be null");
    }

    public Vector3 t0() {
        return u0(new Vector3());
    }

    public float t1() {
        return this.scale.getX();
    }

    public float[] t2(f matrix4, float[] out) {
        if (matrix4 == null) {
            throw new NullPointerException("Matrix can't be null");
        }
        if (out == null) {
            out = new float[16];
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.c0(matrix4, out);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public void t3(float v10) {
        if (Float.isNaN(v10)) {
            throw new IllegalArgumentException("v argument can't be NaN");
        }
        this.position.setX(v10);
        L();
    }

    public boolean t4(int id2) {
        return H2() == id2;
    }

    public void u(InterfaceC13601h listener) {
        listener.getClass();
        this.f79329b.add(listener);
        K2();
    }

    public Vector3 u0(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        if (this.f79337l.f91650b == K8.a.k()) {
            out.set(this.f79337l.f91649a);
            return out;
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.D1(this.f79337l.f91649a);
            out.set(this.f79337l.f91649a);
            this.f79337l.f91650b = K8.a.k();
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public float u1() {
        return this.scale.getY();
    }

    public Vector3 u2(Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.g0(out, out);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public void u3(float v10) {
        if (Float.isNaN(v10)) {
            throw new IllegalArgumentException("v argument can't be NaN");
        }
        this.position.setY(v10);
        L();
    }

    public int u4() {
        return F2();
    }

    public Vector3 up() {
        return r4(new Vector3());
    }

    public void v(float x10, float y10, float z10) {
        y4();
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        if (x10 == 0.0f && y10 == 0.0f && z10 == 0.0f) {
            return;
        }
        this.position.addLocal(x10, y10, z10);
        L();
    }

    public Vector3f v0(Vector3f out) {
        if (out == null) {
            out = new Vector3f();
        }
        if (this.f79337l.f91650b == K8.a.k()) {
            out.set(this.f79337l.f91649a.getX(), this.f79337l.f91649a.getY(), this.f79337l.f91649a.getZ());
            return out;
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.D1(this.f79337l.f91649a);
            out.set(this.f79337l.f91649a.getX(), this.f79337l.f91649a.getY(), this.f79337l.f91649a.getZ());
            this.f79337l.f91650b = K8.a.k();
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public float v1() {
        return this.scale.getZ();
    }

    public f v2(f matrix4, f out) {
        if (matrix4 == null) {
            throw new NullPointerException("Matrix can't be null");
        }
        if (out == null) {
            out = new f();
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            W(fVar);
            fVar.L(matrix4, out);
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public int v4() {
        return H2();
    }

    public void w(Vector3 v10) {
        v(v10.getX(), v10.getY(), v10.getZ());
    }

    public float w0() {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).getX();
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public G w1() {
        return this.state;
    }

    public void w2() {
        y4();
        this.rotation.l0();
        L();
    }

    public void w3(float v10) {
        if (Float.isNaN(v10)) {
            throw new IllegalArgumentException("v argument can't be NaN");
        }
        this.position.setZ(v10);
        L();
    }

    public boolean w4(Transform scopeParent, InterfaceC13594a listener, boolean ignoreScaleOfScopeParent, boolean normalizeLikeColliderShape, boolean preserveChildScaleWhenScopeParentMatches, float positionTolerance, float rotationToleranceDegrees, float scaleTolerance) {
        if (scopeParent == null) {
            throw new NullPointerException("scopeParent can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        D Y10 = Y(scopeParent, listener);
        if (Y10 == null) {
            return false;
        }
        Y10.r(ignoreScaleOfScopeParent, normalizeLikeColliderShape, preserveChildScaleWhenScopeParentMatches, positionTolerance, rotationToleranceDegrees, scaleTolerance);
        return true;
    }

    public void x(float a10) {
        y4();
        if (Float.isNaN(a10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (a10 == 0.0f) {
            return;
        }
        this.scale.addLocal(a10);
        if (!this.lockScale) {
            L();
            return;
        }
        Vector3 vector3 = this.scale;
        vector3.setY(vector3.getX());
        Vector3 vector32 = this.scale;
        vector32.setZ(vector32.getX());
    }

    public float x0() {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).getY();
        } finally {
            this.f79332e.release(vector3);
        }
    }

    @Deprecated
    public float[] x1() {
        return r0(new float[16]);
    }

    public final void x2() {
        S();
        if (this.f79336k < 0) {
            this.f79336k = K8.a.k();
        }
        if (this.f79335j) {
            return;
        }
        this.f79335j = true;
        if (this.f79324E) {
            return;
        }
        TransformUpdateController.p(this);
    }

    public void x3(Quaternion v10) {
        if (v10 == null) {
            throw new NullPointerException("Rotation can't be null");
        }
        if (v10.M()) {
            setRotation(v10.I(), v10.getX(), v10.getY(), v10.getZ());
            return;
        }
        throw new RuntimeException("Invalid rotation [" + v10.V0() + "]");
    }

    public int x4(float[] out, int currentID) {
        int G22 = G2();
        if (G22 == currentID) {
            return currentID;
        }
        if (out != null) {
            r0(out);
        }
        return G22;
    }

    public void y(float x10, float y10, float z10) {
        y4();
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("z argument can't be NaN");
        }
        if (x10 == 0.0f && y10 == 0.0f && z10 == 0.0f) {
            return;
        }
        this.scale.addLocal(x10, y10, z10);
        if (!this.lockScale) {
            L();
            return;
        }
        Vector3 vector3 = this.scale;
        vector3.setY(vector3.getX());
        Vector3 vector32 = this.scale;
        vector32.setZ(vector32.getX());
    }

    public float y0() {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).getZ();
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public final int y1(String entryName) {
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
            return 0;
        }
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.z2(this.f79331d, entryName)) {
            return R.drawable.editor3d_v2_input_text_background_keyframe;
        }
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.A2(this.f79331d, entryName)) {
            return R.drawable.editor3d_v2_input_text_background_keyframe_interpolated;
        }
        return 0;
    }

    public final void y2() {
        if (this.f79336k < 0) {
            this.f79336k = K8.a.k();
        }
        if (this.f79335j) {
            return;
        }
        this.f79335j = true;
        TransformUpdateController.q(this);
    }

    public void y3(f matrix4) {
        matrix4.r1(this.rotation);
        L();
    }

    public final void y4() {
        if (this.f79324E) {
            return;
        }
        K8.a.G();
    }

    public void z(Vector3 vector3) {
        y(vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public JAVARuntime.Quaternion z0(JAVARuntime.Quaternion out) {
        if (out == null) {
            throw new NullPointerException("Out quaternion can't be null");
        }
        if (out.instance == null) {
            throw new NullPointerException("Out quaternion can't be null");
        }
        int k10 = K8.a.k();
        C13596c c13596c = this.f79340o;
        if (c13596c.f91648b == k10) {
            out.instance.u0(c13596c.f91647a);
            return out;
        }
        f fVar = (f) this.f79332e.acquire(f.class);
        try {
            U(fVar);
            fVar.r1(out.instance);
            this.f79340o.f91647a.u0(out.instance);
            this.f79340o.f91648b = k10;
            return out;
        } finally {
            this.f79332e.release(fVar);
        }
    }

    public float z1(float x10, float y10, float z10) {
        Vector3 vector3 = (Vector3) this.f79332e.acquire(Vector3.class);
        try {
            return u0(vector3).distance(x10, y10, z10);
        } finally {
            this.f79332e.release(vector3);
        }
    }

    public final void z2() {
        for (int size = this.f79330c.size() - 1; size >= 0; size--) {
            this.f79330c.get(size).g();
        }
    }

    public void z3(com.jme3.math.Quaternion v10) {
        if (v10 == null) {
            throw new NullPointerException("Rotation can't be null");
        }
        setRotation(v10.getW(), v10.getX(), v10.getY(), v10.getZ());
    }

    public void setRotation(float x10, float y10, float z10) {
        if (!Float.isNaN(x10)) {
            if (!Float.isNaN(y10)) {
                if (!Float.isNaN(z10)) {
                    this.rotation.v(x10, y10, z10);
                    L();
                    return;
                }
                throw new IllegalArgumentException("z argument can't be NaN");
            }
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        throw new IllegalArgumentException("x argument can't be NaN");
    }

    public void setScale(float x10, float y10, float z10) {
        if (this.lockScale) {
            setScale(x10);
            return;
        }
        if (!Float.isNaN(x10)) {
            if (!Float.isNaN(y10)) {
                if (!Float.isNaN(z10)) {
                    if (this.scale.equally(x10, y10, z10)) {
                        return;
                    }
                    this.scale.set(x10, y10, z10);
                    L();
                    return;
                }
                throw new IllegalArgumentException("z argument can't be NaN");
            }
            throw new IllegalArgumentException("y argument can't be NaN");
        }
        throw new IllegalArgumentException("x argument can't be NaN");
    }

    public void setPosition(float a10) {
        if (!Float.isNaN(a10)) {
            this.position.set(a10);
            L();
            return;
        }
        throw new IllegalArgumentException("a argument can't be NaN");
    }

    public void setRotation(float w10, float x10, float y10, float z10) {
        if (!Float.isNaN(w10)) {
            if (!Float.isNaN(x10)) {
                if (!Float.isNaN(y10)) {
                    if (!Float.isNaN(z10)) {
                        this.rotation.t0(w10, x10, y10, z10);
                        L();
                        return;
                    }
                    throw new IllegalArgumentException("z argument can't be NaN");
                }
                throw new IllegalArgumentException("y argument can't be NaN");
            }
            throw new IllegalArgumentException("x argument can't be NaN");
        }
        throw new IllegalArgumentException("w argument can't be NaN");
    }

    public void setScale(float a10) {
        if (!Float.isNaN(a10)) {
            if (this.scale.equally(a10)) {
                return;
            }
            this.scale.set(a10);
            L();
            return;
        }
        throw new IllegalArgumentException("a argument can't be NaN");
    }

    public Transform(GameObject gameObject) {
        Vector3 vector3 = new Vector3();
        this.position = vector3;
        Quaternion quaternion = new Quaternion();
        this.rotation = quaternion;
        Vector3 vector32 = new Vector3(1.0f);
        this.scale = vector32;
        this.state = G.DYNAMIC;
        this.ignoreParentMatrix = false;
        this.lockScale = false;
        this.f79329b = new SteppedArrayList();
        this.f79330c = new SteppedArrayList();
        this.f79332e = new TransformMiniJP();
        this.f79333g = new TransformMiniFloatArrayJP();
        this.f79336k = -1;
        this.f79337l = new C13597d();
        this.f79338m = new C13595b();
        this.f79339n = new C13595b();
        this.f79340o = new C13596c();
        this.f79341p = new C13597d();
        this.f79342q = new C13597d();
        this.f79343r = new C13597d();
        this.f79344s = new C13597d();
        this.f79345t = new C13597d();
        this.f79346u = new C13597d();
        this.f79320A = new C13597d();
        this.f79321B = new k(vector3);
        this.f79322C = new v(quaternion);
        this.f79323D = new w(vector32);
        this.f79324E = false;
        this.f79325F = new SteppedArrayList();
        this.f79326G = new SteppedArrayList();
        onDeserialized();
        e3(gameObject);
    }

    public Transform(Vector3 position) {
        Vector3 vector3 = new Vector3();
        this.position = vector3;
        Quaternion quaternion = new Quaternion();
        this.rotation = quaternion;
        Vector3 vector32 = new Vector3(1.0f);
        this.scale = vector32;
        this.state = G.DYNAMIC;
        this.ignoreParentMatrix = false;
        this.lockScale = false;
        this.f79329b = new SteppedArrayList();
        this.f79330c = new SteppedArrayList();
        this.f79332e = new TransformMiniJP();
        this.f79333g = new TransformMiniFloatArrayJP();
        this.f79336k = -1;
        this.f79337l = new C13597d();
        this.f79338m = new C13595b();
        this.f79339n = new C13595b();
        this.f79340o = new C13596c();
        this.f79341p = new C13597d();
        this.f79342q = new C13597d();
        this.f79343r = new C13597d();
        this.f79344s = new C13597d();
        this.f79345t = new C13597d();
        this.f79346u = new C13597d();
        this.f79320A = new C13597d();
        this.f79321B = new k(vector3);
        this.f79322C = new v(quaternion);
        this.f79323D = new w(vector32);
        this.f79324E = false;
        this.f79325F = new SteppedArrayList();
        this.f79326G = new SteppedArrayList();
        p3(position);
        onDeserialized();
    }

    public Transform(Vector3 position, G state) {
        Vector3 vector3 = new Vector3();
        this.position = vector3;
        Quaternion quaternion = new Quaternion();
        this.rotation = quaternion;
        Vector3 vector32 = new Vector3(1.0f);
        this.scale = vector32;
        this.state = G.DYNAMIC;
        this.ignoreParentMatrix = false;
        this.lockScale = false;
        this.f79329b = new SteppedArrayList();
        this.f79330c = new SteppedArrayList();
        this.f79332e = new TransformMiniJP();
        this.f79333g = new TransformMiniFloatArrayJP();
        this.f79336k = -1;
        this.f79337l = new C13597d();
        this.f79338m = new C13595b();
        this.f79339n = new C13595b();
        this.f79340o = new C13596c();
        this.f79341p = new C13597d();
        this.f79342q = new C13597d();
        this.f79343r = new C13597d();
        this.f79344s = new C13597d();
        this.f79345t = new C13597d();
        this.f79346u = new C13597d();
        this.f79320A = new C13597d();
        this.f79321B = new k(vector3);
        this.f79322C = new v(quaternion);
        this.f79323D = new w(vector32);
        this.f79324E = false;
        this.f79325F = new SteppedArrayList();
        this.f79326G = new SteppedArrayList();
        p3(position);
        this.state = state;
        onDeserialized();
    }

    public Transform(Vector3 position, Quaternion rotation) {
        Vector3 vector3 = new Vector3();
        this.position = vector3;
        Quaternion quaternion = new Quaternion();
        this.rotation = quaternion;
        Vector3 vector32 = new Vector3(1.0f);
        this.scale = vector32;
        this.state = G.DYNAMIC;
        this.ignoreParentMatrix = false;
        this.lockScale = false;
        this.f79329b = new SteppedArrayList();
        this.f79330c = new SteppedArrayList();
        this.f79332e = new TransformMiniJP();
        this.f79333g = new TransformMiniFloatArrayJP();
        this.f79336k = -1;
        this.f79337l = new C13597d();
        this.f79338m = new C13595b();
        this.f79339n = new C13595b();
        this.f79340o = new C13596c();
        this.f79341p = new C13597d();
        this.f79342q = new C13597d();
        this.f79343r = new C13597d();
        this.f79344s = new C13597d();
        this.f79345t = new C13597d();
        this.f79346u = new C13597d();
        this.f79320A = new C13597d();
        this.f79321B = new k(vector3);
        this.f79322C = new v(quaternion);
        this.f79323D = new w(vector32);
        this.f79324E = false;
        this.f79325F = new SteppedArrayList();
        this.f79326G = new SteppedArrayList();
        p3(position);
        x3(rotation);
        onDeserialized();
    }

    public Transform(Vector3 position, Quaternion rotation, Vector3 scale) {
        Vector3 vector3 = new Vector3();
        this.position = vector3;
        Quaternion quaternion = new Quaternion();
        this.rotation = quaternion;
        Vector3 vector32 = new Vector3(1.0f);
        this.scale = vector32;
        this.state = G.DYNAMIC;
        this.ignoreParentMatrix = false;
        this.lockScale = false;
        this.f79329b = new SteppedArrayList();
        this.f79330c = new SteppedArrayList();
        this.f79332e = new TransformMiniJP();
        this.f79333g = new TransformMiniFloatArrayJP();
        this.f79336k = -1;
        this.f79337l = new C13597d();
        this.f79338m = new C13595b();
        this.f79339n = new C13595b();
        this.f79340o = new C13596c();
        this.f79341p = new C13597d();
        this.f79342q = new C13597d();
        this.f79343r = new C13597d();
        this.f79344s = new C13597d();
        this.f79345t = new C13597d();
        this.f79346u = new C13597d();
        this.f79320A = new C13597d();
        this.f79321B = new k(vector3);
        this.f79322C = new v(quaternion);
        this.f79323D = new w(vector32);
        this.f79324E = false;
        this.f79325F = new SteppedArrayList();
        this.f79326G = new SteppedArrayList();
        p3(position);
        x3(rotation);
        setScale(scale);
        onDeserialized();
    }

    public Transform(Vector3 position, Quaternion rotation, Vector3 scale, G state) {
        Vector3 vector3 = new Vector3();
        this.position = vector3;
        Quaternion quaternion = new Quaternion();
        this.rotation = quaternion;
        Vector3 vector32 = new Vector3(1.0f);
        this.scale = vector32;
        this.state = G.DYNAMIC;
        this.ignoreParentMatrix = false;
        this.lockScale = false;
        this.f79329b = new SteppedArrayList();
        this.f79330c = new SteppedArrayList();
        this.f79332e = new TransformMiniJP();
        this.f79333g = new TransformMiniFloatArrayJP();
        this.f79336k = -1;
        this.f79337l = new C13597d();
        this.f79338m = new C13595b();
        this.f79339n = new C13595b();
        this.f79340o = new C13596c();
        this.f79341p = new C13597d();
        this.f79342q = new C13597d();
        this.f79343r = new C13597d();
        this.f79344s = new C13597d();
        this.f79345t = new C13597d();
        this.f79346u = new C13597d();
        this.f79320A = new C13597d();
        this.f79321B = new k(vector3);
        this.f79322C = new v(quaternion);
        this.f79323D = new w(vector32);
        this.f79324E = false;
        this.f79325F = new SteppedArrayList();
        this.f79326G = new SteppedArrayList();
        p3(position);
        x3(rotation);
        setScale(scale);
        this.state = state;
        onDeserialized();
    }
}
