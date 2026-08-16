package com.ardor3d.util.shader;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;

public class ShaderVariable implements Savable {
    public String name;
    public int variableID = -1;
    public boolean needsRefresh = true;
    public boolean errorLogged = false;

    public boolean equals(Object obj) {
        return (obj instanceof ShaderVariable) && this.name.equals(((ShaderVariable) obj).name);
    }

    @Override
    public Class<? extends ShaderVariable> getClassTag() {
        return getClass();
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this.name = inputCapsule.readString("name", "");
        this.variableID = inputCapsule.readInt("variableID", -1);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this.name, "name", "");
        outputCapsule.write(this.variableID, "variableID", -1);
    }
}
