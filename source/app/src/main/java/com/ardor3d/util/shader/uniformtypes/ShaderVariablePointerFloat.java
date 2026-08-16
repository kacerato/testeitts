package com.ardor3d.util.shader.uniformtypes;

import android.media.MediaFormat;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.xml.XMLExporter;
import com.ardor3d.util.shader.ShaderVariable;
import java.io.IOException;
import java.nio.FloatBuffer;

public class ShaderVariablePointerFloat extends ShaderVariable {
    public FloatBuffer data;
    public boolean normalized;
    public int size;
    public int stride;

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.size = inputCapsule.readInt(XMLExporter.ATTRIBUTE_SIZE, 0);
        this.stride = inputCapsule.readInt(MediaFormat.KEY_STRIDE, 0);
        this.normalized = inputCapsule.readBoolean("normalized", false);
        this.data = inputCapsule.readFloatBuffer("data", null);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.size, XMLExporter.ATTRIBUTE_SIZE, 0);
        outputCapsule.write(this.stride, MediaFormat.KEY_STRIDE, 0);
        outputCapsule.write(this.normalized, "normalized", false);
        outputCapsule.write(this.data, "data", (FloatBuffer) null);
    }
}
