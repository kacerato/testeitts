package com.itsmagic.engine.Engines.Engine.NoCode;

import com.google.gson.annotations.Expose;

public class NoCodeAttributeState extends NoCodeStoredValue {

    @Expose
    public String attributeId = "";

    public static NoCodeAttributeState x(NoCodeAttribute attribute) {
        if (attribute == null) {
            return null;
        }
        NoCodeAttributeState noCodeAttributeState = new NoCodeAttributeState();
        String str = attribute.f78942id;
        if (str == null) {
            str = "";
        }
        noCodeAttributeState.attributeId = str;
        noCodeAttributeState.c(attribute);
        return noCodeAttributeState;
    }
}
