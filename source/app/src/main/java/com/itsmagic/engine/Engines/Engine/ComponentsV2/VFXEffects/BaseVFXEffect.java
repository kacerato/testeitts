package com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects;

import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import da.C12894h;
import ib.InterfaceC13601h;
import java.io.Serializable;
import java.util.List;
import oc.C14497a;
import oc.c;
import pc.C14950b;
import pc.C14951c;
import pc.C14952d;
import pc.C14953e;
import pc.C14954f;
import qc.C15053a;
import qc.C15054b;
import qc.C15055c;
import qc.d;
import qc.e;

public abstract class BaseVFXEffect extends Component implements Serializable {

    public String f77385E;

    public long f77386F;

    public int f77387G;

    public final C14950b f77388H;

    public final C14951c f77389I;

    public final C14952d f77390J;

    public final C14953e f77391K;

    public final C14954f f77392L;

    public final InterfaceC13601h f77393M;

    public class a implements InterfaceC13601h {
        public a() {
        }

        @Override
        public void a(f globalMatrix) {
            BaseVFXEffect.this.onTransformChanged(globalMatrix);
        }
    }

    public BaseVFXEffect(String serializedComponentType) {
        super(serializedComponentType, true);
        this.f77388H = new C14950b();
        this.f77389I = new C14951c();
        this.f77390J = new C14952d();
        this.f77391K = new C14953e();
        this.f77392L = new C14954f();
        this.f77393M = new a();
    }

    public static String loadAssetShader(String file) {
        return c.m(file);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
    
        r3.h(r6.f77387G, r7.D1(r0));
        r7 = r6.f77390J;
        r7.f103763a = r6.f77387G;
        r7.f103764b = r3;
        da.C12894h.g(r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onTransformChanged(f globalMatrix) {
        if (isHierarchyActive()) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            try {
                List<C15055c> h10 = C14497a.h(this);
                if (h10 == null) {
                    return;
                }
                int i10 = 0;
                while (true) {
                    if (i10 >= h10.size()) {
                        break;
                    }
                    C15055c c15055c = h10.get(i10);
                    if (c15055c.e() == qc.f.POSITION) {
                        break;
                    } else {
                        i10++;
                    }
                }
            } finally {
                JP.release(vector3);
            }
        }
    }

    public C15053a findF1Param(String simpleName) {
        List<C15053a> f10 = C14497a.f(this);
        if (f10 == null) {
            return null;
        }
        for (int i10 = 0; i10 < f10.size(); i10++) {
            C15053a c15053a = f10.get(i10);
            if (c15053a.b(simpleName, this)) {
                return c15053a;
            }
        }
        return null;
    }

    public C15054b findF2Param(String simpleName) {
        List<C15054b> g10 = C14497a.g(this);
        if (g10 == null) {
            return null;
        }
        for (int i10 = 0; i10 < g10.size(); i10++) {
            C15054b c15054b = g10.get(i10);
            if (c15054b.b(simpleName, this)) {
                return c15054b;
            }
        }
        return null;
    }

    public C15055c findF3Param(String simpleName) {
        List<C15055c> h10 = C14497a.h(this);
        if (h10 == null) {
            return null;
        }
        for (int i10 = 0; i10 < h10.size(); i10++) {
            C15055c c15055c = h10.get(i10);
            if (c15055c.b(simpleName, this)) {
                return c15055c;
            }
        }
        return null;
    }

    public d findF4Param(String simpleName) {
        List<d> i10 = C14497a.i(this);
        if (i10 == null) {
            return null;
        }
        for (int i11 = 0; i11 < i10.size(); i11++) {
            d dVar = i10.get(i11);
            if (dVar.b(simpleName, this)) {
                return dVar;
            }
        }
        return null;
    }

    public e findI1Param(String simpleName) {
        List<e> j10 = C14497a.j(this);
        if (j10 == null) {
            return null;
        }
        for (int i10 = 0; i10 < j10.size(); i10++) {
            e eVar = j10.get(i10);
            if (eVar.b(simpleName, this)) {
                return eVar;
            }
        }
        return null;
    }

    public C14950b getBindParamF1VFXEvent() {
        C14950b c14950b = this.f77388H;
        c14950b.f103759a = this.f77387G;
        return c14950b;
    }

    public C14951c getBindParamF2VFXEvent() {
        C14951c c14951c = this.f77389I;
        c14951c.f103761a = this.f77387G;
        return c14951c;
    }

    public C14952d getBindParamF3VFXEvent() {
        C14952d c14952d = this.f77390J;
        c14952d.f103763a = this.f77387G;
        return c14952d;
    }

    public C14953e getBindParamF4VFXEvent() {
        C14953e c14953e = this.f77391K;
        c14953e.f103765a = this.f77387G;
        return c14953e;
    }

    public C14954f getBindParamI1VFXEvent() {
        C14954f c14954f = this.f77392L;
        c14954f.f103767a = this.f77387G;
        return c14954f;
    }

    public c getConstructor() {
        return new c(getUID());
    }

    public int getIndex() {
        return this.f77387G;
    }

    public int getMaxSimultaneousEmitters() {
        return 6;
    }

    public String getUID() {
        return this.f77385E;
    }

    @Override
    public void onAttach() {
        Transform transform;
        super.onAttach();
        if (Component.isFullVersion()) {
            GameObject gameObject = this.f79250n;
            if (gameObject != null && (transform = gameObject.transform) != null) {
                transform.u(this.f77393M);
            }
            C14497a.p(this);
        }
    }

    @Override
    public void onDetach() {
        Transform transform;
        if (Component.isFullVersion()) {
            super.onDetach();
            GameObject gameObject = this.f79250n;
            if (gameObject != null && (transform = gameObject.transform) != null) {
                transform.O2(this.f77393M);
            }
            C14497a.q(this);
        }
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (Component.isFullVersion()) {
            if (enabled) {
                C14497a.p(this);
            } else {
                C14497a.q(this);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
    
        r3.h(r6.f77387G, r6.f79250n.transform.u0(r0));
        r1 = r6.f77390J;
        r1.f103763a = r6.f77387G;
        r1.f103764b = r3;
        da.C12894h.g(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void reuploadParams() {
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        try {
            List<C15055c> h10 = C14497a.h(this);
            if (h10 == null) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= h10.size()) {
                    break;
                }
                C15055c c15055c = h10.get(i10);
                if (c15055c.e() == qc.f.POSITION) {
                    break;
                } else {
                    i10++;
                }
            }
        } finally {
            JP.release(vector3);
        }
    }

    public void setF1Param(String simpleName, float value) {
        C15053a findF1Param = findF1Param(simpleName);
        if (findF1Param != null) {
            findF1Param.g(getIndex(), value);
            C14950b bindParamF1VFXEvent = getBindParamF1VFXEvent();
            bindParamF1VFXEvent.f103760b = findF1Param;
            C12894h.g(bindParamF1VFXEvent);
        }
    }

    public void setF2Param(String simpleName, Vector2 value) {
        C15054b findF2Param = findF2Param(simpleName);
        if (findF2Param != null) {
            findF2Param.h(getIndex(), value);
            C14951c bindParamF2VFXEvent = getBindParamF2VFXEvent();
            bindParamF2VFXEvent.f103762b = findF2Param;
            C12894h.g(bindParamF2VFXEvent);
        }
    }

    public void setF3Param(String simpleName, Vector3 value) {
        C15055c findF3Param = findF3Param(simpleName);
        if (findF3Param != null) {
            findF3Param.h(getIndex(), value);
            C14952d bindParamF3VFXEvent = getBindParamF3VFXEvent();
            bindParamF3VFXEvent.f103764b = findF3Param;
            C12894h.g(bindParamF3VFXEvent);
        }
    }

    public void setF4Param(String simpleName, Vector4 value) {
        d findF4Param = findF4Param(simpleName);
        if (findF4Param != null) {
            findF4Param.h(getIndex(), value);
            C14953e bindParamF4VFXEvent = getBindParamF4VFXEvent();
            bindParamF4VFXEvent.f103766b = findF4Param;
            C12894h.g(bindParamF4VFXEvent);
        }
    }

    public void setI1Param(String simpleName, int value) {
        e findI1Param = findI1Param(simpleName);
        if (findI1Param != null) {
            findI1Param.g(getIndex(), value);
            C14954f bindParamI1VFXEvent = getBindParamI1VFXEvent();
            bindParamI1VFXEvent.f103768b = findI1Param;
            C12894h.g(bindParamI1VFXEvent);
        }
    }

    public void setIndex(int index) {
        this.f77387G = index;
    }

    public void setUID(String uid) {
        this.f77385E = uid;
        this.f77386F = uid.hashCode();
    }

    public long shaderHash() {
        return this.f77386F;
    }

    public BaseVFXEffect(String serializedComponentType, String uid) {
        super(serializedComponentType, true);
        this.f77388H = new C14950b();
        this.f77389I = new C14951c();
        this.f77390J = new C14952d();
        this.f77391K = new C14953e();
        this.f77392L = new C14954f();
        this.f77393M = new a();
        this.f77385E = uid;
        this.f77386F = uid.hashCode();
    }
}
