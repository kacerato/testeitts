package com.ardor3d.util.shader.uniformtypes;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.xml.XMLExporter;
import com.ardor3d.util.shader.ShaderVariable;
import java.io.IOException;
import java.nio.FloatBuffer;

public class ShaderVariableFloatArray extends ShaderVariable {
    public int size = 1;
    public FloatBuffer value;

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.value = inputCapsule.readFloatBuffer("value", null);
        this.size = inputCapsule.readInt(XMLExporter.ATTRIBUTE_SIZE, 1);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.value, "value", (FloatBuffer) null);
        outputCapsule.write(this.size, XMLExporter.ATTRIBUTE_SIZE, 1);
    }
}
