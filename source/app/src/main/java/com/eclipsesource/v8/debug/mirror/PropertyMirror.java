package com.eclipsesource.v8.debug.mirror;

import com.eclipsesource.v8.V8Object;

public class PropertyMirror extends Mirror {
    public PropertyMirror(V8Object v8Object) {
        super(v8Object);
    }

    public String getName() {
        return this.v8Object.executeStringFunction("name", null);
    }

    public Mirror getValue() {
        V8Object mirror = this.v8Object.executeObjectFunction("value", null);
        try {
            return createMirror(mirror);
        } finally {
            mirror.release();
        }
    }

    @Override
    public boolean isProperty() {
        return true;
    }
}
