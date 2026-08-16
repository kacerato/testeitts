package com.ardor3d.util.shader.uniformtypes;

import android.media.MediaFormat;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.xml.XMLExporter;
import com.ardor3d.util.shader.ShaderVariable;
import java.io.IOException;
import java.nio.ShortBuffer;

public class ShaderVariablePointerShort extends ShaderVariable {
    public ShortBuffer data;
    public boolean normalized;
    public int size;
    public int stride;
    public boolean unsigned;

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.size = inputCapsule.readInt(XMLExporter.ATTRIBUTE_SIZE, 0);
        this.stride = inputCapsule.readInt(MediaFormat.KEY_STRIDE, 0);
        this.normalized = inputCapsule.readBoolean("normalized", false);
        this.unsigned = inputCapsule.readBoolean("unsigned", false);
        this.data = inputCapsule.readShortBuffer("data", null);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.size, XMLExporter.ATTRIBUTE_SIZE, 0);
        outputCapsule.write(this.stride, MediaFormat.KEY_STRIDE, 0);
        outputCapsule.write(this.normalized, "normalized", false);
        outputCapsule.write(this.unsigned, "unsigned", false);
        outputCapsule.write(this.data, "data", (ShortBuffer) null);
    }
}
