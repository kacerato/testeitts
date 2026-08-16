package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvObjectReference;
import ga.C13308d;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;
import gb.C13317e;

public class RawObjectNode extends NoCodeNode implements z {

    public static final String f79140i = "RawObject";

    public transient GameObject f79141g;

    @Expose
    public String objectReferenceJson = "";

    @Expose
    public String value = C13308d.f88188b;

    public final NoCodeSlot[] f79142h = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawObjectNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawObjectNode.class;
        }

        @Override
        public String c() {
            return RawObjectNode.f79140i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawObjectNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return "Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawObjectNode() {
        this.serializedNodeType = f79140i;
    }

    public final String G0(GameObject gameObject) {
        if (!C13317e.J(gameObject)) {
            return "";
        }
        try {
            AdvObjectReference advObjectReference = new AdvObjectReference(gameObject);
            NoCodeData noCodeData = this.f79021a;
            advObjectReference.o(noCodeData != null ? noCodeData.h0() : null);
            advObjectReference.q();
            return advObjectReference.r();
        } catch (Exception unused) {
            return "";
        }
    }

    public GameObject H0() {
        return I0();
    }

    public final GameObject I0() {
        if (C13317e.J(this.f79141g)) {
            return this.f79141g;
        }
        GameObject J02 = J0(this.objectReferenceJson);
        if (C13317e.J(J02)) {
            this.f79141g = J02;
            this.value = J02.getName() != null ? J02.getName() : "";
            return J02;
        }
        String str = this.value;
        String trim = str != null ? str.trim() : "";
        if (trim.isEmpty() || C13308d.f88188b.equalsIgnoreCase(trim)) {
            NoCodeData noCodeData = this.f79021a;
            if (noCodeData != null) {
                return noCodeData.h0();
            }
            return null;
        }
        NoCodeData noCodeData2 = this.f79021a;
        if (noCodeData2 != null) {
            return noCodeData2.h0();
        }
        return null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79142h;
    }

    public final GameObject J0(String referenceJson) {
        if (referenceJson != null && !referenceJson.trim().isEmpty()) {
            try {
                AdvObjectReference advObjectReference = (AdvObjectReference) X7.a.m().fromJson(referenceJson, AdvObjectReference.class);
                if (advObjectReference == null) {
                    return null;
                }
                NoCodeData noCodeData = this.f79021a;
                advObjectReference.o(noCodeData != null ? noCodeData.h0() : null);
                return advObjectReference.k();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public void K0(GameObject gameObject) {
        if (!C13317e.J(gameObject)) {
            this.f79141g = null;
            this.objectReferenceJson = "";
            this.value = C13308d.f88188b;
            return;
        }
        this.f79141g = gameObject;
        this.value = gameObject.getName() != null ? gameObject.getName() : "";
        String G02 = G0(gameObject);
        this.objectReferenceJson = G02;
        if (G02 == null || G02.trim().isEmpty()) {
            this.objectReferenceJson = "";
            this.value = C13308d.f88188b;
            this.f79141g = null;
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Object";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void i0() {
        this.f79141g = null;
        I0();
    }

    @Override
    public void j0() {
        this.f79141g = null;
    }

    @Override
    public void m0() {
        y0(this.f79142h[0], I0());
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_OBJECT);
    }
}
