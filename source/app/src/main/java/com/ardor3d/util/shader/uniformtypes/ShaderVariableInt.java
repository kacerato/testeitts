package com.ardor3d.util.shader.uniformtypes;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.shader.ShaderVariable;
import java.io.IOException;

public class ShaderVariableInt extends ShaderVariable {
    public int value1;

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.value1 = inputCapsule.readInt("value1", 0);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.value1, "value1", 0);
    }
}
