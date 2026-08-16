package com.itsmagic.engine.Engines.Engine.NoCode;

import Tc.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;

public class NoCodeAttribute extends NoCodeStoredValue {

    @Expose
    public String f78942id = b.L();

    @Expose
    public String name = "Attribute";

    @Expose
    public boolean visible = true;

    @Override
    public void e() {
        super.e();
        String str = this.f78942id;
        if (str == null || str.trim().isEmpty()) {
            this.f78942id = b.L();
        }
        String str2 = this.name;
        if (str2 == null || str2.trim().isEmpty()) {
            this.name = "Attribute";
        }
    }

    public NoCodeAttribute x() {
        NoCodeAttribute noCodeAttribute = new NoCodeAttribute();
        noCodeAttribute.type = this.type;
        noCodeAttribute.listItemType = this.listItemType;
        noCodeAttribute.number = this.number;
        noCodeAttribute.booleanValue = this.booleanValue;
        noCodeAttribute.vector2.x0(this.vector2);
        noCodeAttribute.vector3.set(this.vector3);
        noCodeAttribute.vector4.l(this.vector4);
        noCodeAttribute.color.K(this.color);
        noCodeAttribute.gradient.r(this.gradient);
        noCodeAttribute.text = this.text;
        noCodeAttribute.file = this.file;
        noCodeAttribute.referenceJson = this.referenceJson;
        noCodeAttribute.listItems = new SteppedArrayList();
        Iterator<NoCodeStoredValue> it = this.listItems.iterator();
        while (it.hasNext()) {
            NoCodeStoredValue next = it.next();
            noCodeAttribute.listItems.add(next != null ? next.b() : null);
        }
        noCodeAttribute.f78942id = this.f78942id;
        noCodeAttribute.name = this.name;
        noCodeAttribute.visible = this.visible;
        noCodeAttribute.e();
        return noCodeAttribute;
    }
}
