package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Custom;

import C5.b;
import D5.h;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public abstract class BaseCustomEventNode extends Fa.a {

    @Expose
    public String eventName = "";

    public final String f79062g;

    public class a implements h {
        public a() {
        }

        @Override
        public Variable get() {
            String str = BaseCustomEventNode.this.eventName;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            String str;
            BaseCustomEventNode baseCustomEventNode = BaseCustomEventNode.this;
            if (variable == null || (str = variable.str_value) == null) {
                str = "";
            }
            baseCustomEventNode.eventName = str;
            NoCodeData A10 = baseCustomEventNode.A();
            if (A10 != null) {
                A10.y0();
            }
        }
    }

    public BaseCustomEventNode(String serializedName, String title) {
        this.serializedNodeType = serializedName;
        this.f79062g = title;
    }

    public final void H0(String functionName, Object... args) {
        if (d0() && J0(functionName)) {
            I0(args);
        }
    }

    @Override
    public List<b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new b(new a(), "Event", b.a.SLString));
        return steppedArrayList;
    }

    public abstract void I0(Object... args);

    public boolean J0(String functionName) {
        String str = this.eventName;
        String trim = str != null ? str.trim() : "";
        return !trim.isEmpty() && trim.equalsIgnoreCase(functionName != null ? functionName.trim() : "");
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f79062g;
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
    }

    @Override
    public void m0() {
    }
}
