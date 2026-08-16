package com.ardor3d.util.shader.uniformtypes;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.shader.ShaderVariable;
import java.io.IOException;
import java.nio.FloatBuffer;

public class ShaderVariableMatrix4Array extends ShaderVariable {
    public FloatBuffer matrixBuffer;
    public boolean rowMajor;

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.matrixBuffer = inputCapsule.readFloatBuffer("matrixBuffer", null);
        this.rowMajor = inputCapsule.readBoolean("rowMajor", false);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.matrixBuffer, "matrixBuffer", (FloatBuffer) null);
        outputCapsule.write(this.rowMajor, "rowMajor", false);
    }
}
