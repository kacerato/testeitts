package com.ardor3d.renderer.state;

import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyMatrix3;
import com.ardor3d.math.type.ReadOnlyMatrix4;
import com.ardor3d.math.type.ReadOnlyQuaternion;
import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.math.type.ReadOnlyVector4;
import com.ardor3d.renderer.ContextCapabilities;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.ShaderObjectsStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import com.ardor3d.util.shader.ShaderVariable;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableFloat;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableFloat2;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableFloat3;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableFloat4;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableFloatArray;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableInt;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableInt2;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableInt3;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableInt4;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableIntArray;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableMatrix3;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableMatrix4;
import com.ardor3d.util.shader.uniformtypes.ShaderVariableMatrix4Array;
import com.ardor3d.util.shader.uniformtypes.ShaderVariablePointerByte;
import com.ardor3d.util.shader.uniformtypes.ShaderVariablePointerFloat;
import com.ardor3d.util.shader.uniformtypes.ShaderVariablePointerFloatMatrix;
import com.ardor3d.util.shader.uniformtypes.ShaderVariablePointerInt;
import com.ardor3d.util.shader.uniformtypes.ShaderVariablePointerShort;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GLSLShaderObjectsState extends RenderState {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(GLSLShaderObjectsState.class.getName());
    public Mesh _mesh;
    public GLSLShaderDataLogic _shaderDataLogic;
    protected ByteBuffer fragShader;
    protected ByteBuffer geomShader;
    protected ByteBuffer vertShader;
    protected List<ShaderVariable> shaderUniforms = new ArrayList();
    protected List<ShaderVariable> shaderAttributes = new ArrayList();
    public boolean _needSendShader = true;
    public int _programID = -1;
    public int _vertexShaderID = -1;
    public int _fragmentShaderID = -1;
    public int _geometryShaderID = -1;

    private <T extends ShaderVariable> T getShaderAttribute(String str, Class<T> cls) {
        T t10 = (T) getShaderVariable(str, cls, this.shaderAttributes);
        checkAttributeSizeLimits();
        return t10;
    }

    private <T extends ShaderVariable> T getShaderUniform(String str, Class<T> cls) {
        return (T) getShaderVariable(str, cls, this.shaderUniforms);
    }

    private <T extends ShaderVariable> T getShaderVariable(String str, Class<T> cls, List<ShaderVariable> list) {
        T t10;
        int size = list.size();
        do {
            size--;
            if (size < 0) {
                try {
                    T newInstance = cls.newInstance();
                    newInstance.name = str;
                    list.add(newInstance);
                    return newInstance;
                } catch (IllegalAccessException e10) {
                    logger.logp(Level.SEVERE, getClass().toString(), "getShaderVariable(name, classz, shaderVariableList)", "Exception", (Throwable) e10);
                    return null;
                } catch (InstantiationException e11) {
                    logger.logp(Level.SEVERE, getClass().toString(), "getShaderVariable(name, classz, shaderVariableList)", "Exception", (Throwable) e11);
                    return null;
                }
            }
            t10 = (T) list.get(size);
        } while (!str.equals(t10.name));
        t10.needsRefresh = true;
        return t10;
    }

    private ByteBuffer stringToByteBuffer(String str) {
        byte[] bytes = str.getBytes();
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(bytes.length);
        createByteBuffer.put(bytes);
        createByteBuffer.rewind();
        return createByteBuffer;
    }

    public void checkAttributeSizeLimits() {
        ContextCapabilities capabilities = ContextManager.getCurrentContext().getCapabilities();
        if (this.shaderAttributes.size() > capabilities.getMaxGLSLVertexAttributes()) {
            logger.severe("Too many shader attributes(standard+defined): " + this.shaderAttributes.size() + " maximum: " + capabilities.getMaxGLSLVertexAttributes());
        }
    }

    public void clearAttributes() {
        this.shaderAttributes.clear();
    }

    public void clearUniforms() {
        this.shaderUniforms.clear();
    }

    @Override
    public StateRecord createStateRecord() {
        return new ShaderObjectsStateRecord();
    }

    public ShaderVariable getAttributeByName(String str) {
        for (ShaderVariable shaderVariable : this.shaderAttributes) {
            if (shaderVariable.name.equals(str)) {
                return shaderVariable;
            }
        }
        return null;
    }

    public ByteBuffer getFragmentShader() {
        return this.fragShader;
    }

    public ByteBuffer getGeometryShader() {
        return this.geomShader;
    }

    public List<ShaderVariable> getShaderAttributes() {
        return this.shaderAttributes;
    }

    public GLSLShaderDataLogic getShaderDataLogic() {
        return this._shaderDataLogic;
    }

    public List<ShaderVariable> getShaderUniforms() {
        return this.shaderUniforms;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.GLSLShader;
    }

    public ShaderVariable getUniformByName(String str) {
        for (ShaderVariable shaderVariable : this.shaderUniforms) {
            if (shaderVariable.name.equals(str)) {
                return shaderVariable;
            }
        }
        return null;
    }

    public ByteBuffer getVertexShader() {
        return this.vertShader;
    }

    public ByteBuffer load(InputStream inputStream) throws IOException {
        Throwable th2;
        DataInputStream dataInputStream;
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            dataInputStream = new DataInputStream(bufferedInputStream);
            try {
                int available = bufferedInputStream.available();
                byte[] bArr = new byte[available];
                dataInputStream.readFully(bArr);
                bufferedInputStream.close();
                dataInputStream.close();
                ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(available);
                createByteBuffer.put(bArr);
                createByteBuffer.rewind();
                try {
                    dataInputStream.close();
                } catch (IOException e10) {
                    logger.log(Level.WARNING, "Failed to close the shader object", (Throwable) e10);
                }
                return createByteBuffer;
            } catch (Throwable th3) {
                th2 = th3;
                if (dataInputStream != null) {
                    try {
                        dataInputStream.close();
                    } catch (IOException e11) {
                        logger.log(Level.WARNING, "Failed to close the shader object", (Throwable) e11);
                    }
                }
                throw th2;
            }
        } catch (Throwable th4) {
            th2 = th4;
            dataInputStream = null;
        }
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.shaderUniforms = inputCapsule.readSavableList("shaderUniforms", new ArrayList());
        this.shaderAttributes = inputCapsule.readSavableList("shaderAttributes", new ArrayList());
        this.vertShader = inputCapsule.readByteBuffer("vertShader", null);
        this.fragShader = inputCapsule.readByteBuffer("fragShader", null);
        this.geomShader = inputCapsule.readByteBuffer("geomShader", null);
        Savable readSavable = inputCapsule.readSavable("shaderDataLogic", null);
        if (readSavable != null) {
            if (readSavable instanceof GLSLShaderDataLogic) {
                this._shaderDataLogic = (GLSLShaderDataLogic) readSavable;
                return;
            }
            logger.warning("Deserialized shaderDataLogic is not of type GLSLShaderDataLogic. " + readSavable.getClass().getName());
        }
    }

    public void setAttributePointer(String str, int i10, boolean z10, int i11, FloatBuffer floatBuffer) {
        ShaderVariablePointerFloat shaderVariablePointerFloat = (ShaderVariablePointerFloat) getShaderAttribute(str, ShaderVariablePointerFloat.class);
        shaderVariablePointerFloat.size = i10;
        shaderVariablePointerFloat.normalized = z10;
        shaderVariablePointerFloat.stride = i11;
        shaderVariablePointerFloat.data = floatBuffer;
        setNeedsRefresh(true);
    }

    public void setAttributePointerMatrix(String str, int i10, boolean z10, FloatBuffer floatBuffer) {
        ShaderVariablePointerFloatMatrix shaderVariablePointerFloatMatrix = (ShaderVariablePointerFloatMatrix) getShaderAttribute(str, ShaderVariablePointerFloatMatrix.class);
        shaderVariablePointerFloatMatrix.size = i10;
        shaderVariablePointerFloatMatrix.normalized = z10;
        shaderVariablePointerFloatMatrix.data = floatBuffer;
        setNeedsRefresh(true);
    }

    public void setFragmentShader(InputStream inputStream) throws IOException {
        setFragmentShader(load(inputStream));
    }

    public void setGeometryShader(InputStream inputStream) throws IOException {
        setGeometryShader(load(inputStream));
    }

    public void setMesh(Mesh mesh) {
        this._mesh = mesh;
    }

    public void setShaderDataLogic(GLSLShaderDataLogic gLSLShaderDataLogic) {
        this._shaderDataLogic = gLSLShaderDataLogic;
    }

    public void setUniform(String str, boolean z10) {
        ((ShaderVariableInt) getShaderUniform(str, ShaderVariableInt.class)).value1 = z10 ? 1 : 0;
        setNeedsRefresh(true);
    }

    public void setUniformMatrix4(String str, FloatBuffer floatBuffer) {
        ShaderVariableMatrix4 shaderVariableMatrix4 = (ShaderVariableMatrix4) getShaderUniform(str, ShaderVariableMatrix4.class);
        shaderVariableMatrix4.matrixBuffer.rewind();
        shaderVariableMatrix4.matrixBuffer.put(floatBuffer);
        shaderVariableMatrix4.matrixBuffer.rewind();
        floatBuffer.rewind();
        shaderVariableMatrix4.rowMajor = true;
        setNeedsRefresh(true);
    }

    public void setVertexShader(InputStream inputStream) throws IOException {
        setVertexShader(load(inputStream));
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.writeSavableList(this.shaderUniforms, "shaderUniforms", new ArrayList());
        outputCapsule.writeSavableList(this.shaderAttributes, "shaderAttributes", new ArrayList());
        outputCapsule.write(this.vertShader, "vertShader", (ByteBuffer) null);
        outputCapsule.write(this.fragShader, "fragShader", (ByteBuffer) null);
        outputCapsule.write(this.geomShader, "geomShader", (ByteBuffer) null);
        GLSLShaderDataLogic gLSLShaderDataLogic = this._shaderDataLogic;
        if (gLSLShaderDataLogic instanceof Savable) {
            outputCapsule.write((Savable) gLSLShaderDataLogic, "shaderDataLogic", (Savable) null);
        }
    }

    public void setFragmentShader(ByteBuffer byteBuffer) {
        this.fragShader = byteBuffer;
    }

    public void setGeometryShader(ByteBuffer byteBuffer) {
        this.geomShader = byteBuffer;
    }

    public void setVertexShader(ByteBuffer byteBuffer) {
        this.vertShader = byteBuffer;
    }

    public void setFragmentShader(String str) {
        this.fragShader = stringToByteBuffer(str);
    }

    public void setGeometryShader(String str) {
        this.geomShader = stringToByteBuffer(str);
    }

    public void setVertexShader(String str) {
        this.vertShader = stringToByteBuffer(str);
    }

    public void setUniform(String str, int i10) {
        ((ShaderVariableInt) getShaderUniform(str, ShaderVariableInt.class)).value1 = i10;
        setNeedsRefresh(true);
    }

    public void setAttributePointer(String str, int i10, boolean z10, boolean z11, int i11, ByteBuffer byteBuffer) {
        ShaderVariablePointerByte shaderVariablePointerByte = (ShaderVariablePointerByte) getShaderAttribute(str, ShaderVariablePointerByte.class);
        shaderVariablePointerByte.size = i10;
        shaderVariablePointerByte.normalized = z10;
        shaderVariablePointerByte.unsigned = z11;
        shaderVariablePointerByte.stride = i11;
        shaderVariablePointerByte.data = byteBuffer;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, float f10) {
        ((ShaderVariableFloat) getShaderUniform(str, ShaderVariableFloat.class)).value1 = f10;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, boolean z10, boolean z11) {
        ShaderVariableInt2 shaderVariableInt2 = (ShaderVariableInt2) getShaderUniform(str, ShaderVariableInt2.class);
        shaderVariableInt2.value1 = z10 ? 1 : 0;
        shaderVariableInt2.value2 = z11 ? 1 : 0;
        setNeedsRefresh(true);
    }

    public void setAttributePointer(String str, int i10, boolean z10, boolean z11, int i11, IntBuffer intBuffer) {
        ShaderVariablePointerInt shaderVariablePointerInt = (ShaderVariablePointerInt) getShaderAttribute(str, ShaderVariablePointerInt.class);
        shaderVariablePointerInt.size = i10;
        shaderVariablePointerInt.normalized = z10;
        shaderVariablePointerInt.unsigned = z11;
        shaderVariablePointerInt.stride = i11;
        shaderVariablePointerInt.data = intBuffer;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, int i10, int i11) {
        ShaderVariableInt2 shaderVariableInt2 = (ShaderVariableInt2) getShaderUniform(str, ShaderVariableInt2.class);
        shaderVariableInt2.value1 = i10;
        shaderVariableInt2.value2 = i11;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, float f10, float f11) {
        ShaderVariableFloat2 shaderVariableFloat2 = (ShaderVariableFloat2) getShaderUniform(str, ShaderVariableFloat2.class);
        shaderVariableFloat2.value1 = f10;
        shaderVariableFloat2.value2 = f11;
        setNeedsRefresh(true);
    }

    public void setAttributePointer(String str, int i10, boolean z10, boolean z11, int i11, ShortBuffer shortBuffer) {
        ShaderVariablePointerShort shaderVariablePointerShort = (ShaderVariablePointerShort) getShaderAttribute(str, ShaderVariablePointerShort.class);
        shaderVariablePointerShort.size = i10;
        shaderVariablePointerShort.normalized = z10;
        shaderVariablePointerShort.unsigned = z11;
        shaderVariablePointerShort.stride = i11;
        shaderVariablePointerShort.data = shortBuffer;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, boolean z10, boolean z11, boolean z12) {
        ShaderVariableInt3 shaderVariableInt3 = (ShaderVariableInt3) getShaderUniform(str, ShaderVariableInt3.class);
        shaderVariableInt3.value1 = z10 ? 1 : 0;
        shaderVariableInt3.value2 = z11 ? 1 : 0;
        shaderVariableInt3.value3 = z12 ? 1 : 0;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, int i10, int i11, int i12) {
        ShaderVariableInt3 shaderVariableInt3 = (ShaderVariableInt3) getShaderUniform(str, ShaderVariableInt3.class);
        shaderVariableInt3.value1 = i10;
        shaderVariableInt3.value2 = i11;
        shaderVariableInt3.value3 = i12;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, float f10, float f11, float f12) {
        ShaderVariableFloat3 shaderVariableFloat3 = (ShaderVariableFloat3) getShaderUniform(str, ShaderVariableFloat3.class);
        shaderVariableFloat3.value1 = f10;
        shaderVariableFloat3.value2 = f11;
        shaderVariableFloat3.value3 = f12;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, boolean z10, boolean z11, boolean z12, boolean z13) {
        ShaderVariableInt4 shaderVariableInt4 = (ShaderVariableInt4) getShaderUniform(str, ShaderVariableInt4.class);
        shaderVariableInt4.value1 = z10 ? 1 : 0;
        shaderVariableInt4.value2 = z11 ? 1 : 0;
        shaderVariableInt4.value3 = z12 ? 1 : 0;
        shaderVariableInt4.value4 = z13 ? 1 : 0;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, int i10, int i11, int i12, int i13) {
        ShaderVariableInt4 shaderVariableInt4 = (ShaderVariableInt4) getShaderUniform(str, ShaderVariableInt4.class);
        shaderVariableInt4.value1 = i10;
        shaderVariableInt4.value2 = i11;
        shaderVariableInt4.value3 = i12;
        shaderVariableInt4.value4 = i13;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, float f10, float f11, float f12, float f13) {
        ShaderVariableFloat4 shaderVariableFloat4 = (ShaderVariableFloat4) getShaderUniform(str, ShaderVariableFloat4.class);
        shaderVariableFloat4.value1 = f10;
        shaderVariableFloat4.value2 = f11;
        shaderVariableFloat4.value3 = f12;
        shaderVariableFloat4.value4 = f13;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, FloatBuffer floatBuffer, int i10) {
        ShaderVariableFloatArray shaderVariableFloatArray = (ShaderVariableFloatArray) getShaderUniform(str, ShaderVariableFloatArray.class);
        shaderVariableFloatArray.value = floatBuffer;
        shaderVariableFloatArray.size = i10;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, float[] fArr) {
        ((ShaderVariableFloatArray) getShaderUniform(str, ShaderVariableFloatArray.class)).value = BufferUtils.createFloatBuffer(fArr);
        setNeedsRefresh(true);
    }

    public void setUniform(String str, IntBuffer intBuffer) {
        ((ShaderVariableIntArray) getShaderUniform(str, ShaderVariableIntArray.class)).value = intBuffer;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, int[] iArr) {
        ((ShaderVariableIntArray) getShaderUniform(str, ShaderVariableIntArray.class)).value = BufferUtils.createIntBuffer(iArr);
        setNeedsRefresh(true);
    }

    public void setUniform(String str, ReadOnlyVector2 readOnlyVector2) {
        ShaderVariableFloat2 shaderVariableFloat2 = (ShaderVariableFloat2) getShaderUniform(str, ShaderVariableFloat2.class);
        shaderVariableFloat2.value1 = (float) readOnlyVector2.getX();
        shaderVariableFloat2.value2 = (float) readOnlyVector2.getY();
        setNeedsRefresh(true);
    }

    public void setUniform(String str, ReadOnlyVector3 readOnlyVector3) {
        ShaderVariableFloat3 shaderVariableFloat3 = (ShaderVariableFloat3) getShaderUniform(str, ShaderVariableFloat3.class);
        shaderVariableFloat3.value1 = (float) readOnlyVector3.getX();
        shaderVariableFloat3.value2 = (float) readOnlyVector3.getY();
        shaderVariableFloat3.value3 = (float) readOnlyVector3.getZ();
        setNeedsRefresh(true);
    }

    public void setUniform(String str, ReadOnlyVector4 readOnlyVector4) {
        ShaderVariableFloat4 shaderVariableFloat4 = (ShaderVariableFloat4) getShaderUniform(str, ShaderVariableFloat4.class);
        shaderVariableFloat4.value1 = (float) readOnlyVector4.getX();
        shaderVariableFloat4.value2 = (float) readOnlyVector4.getY();
        shaderVariableFloat4.value3 = (float) readOnlyVector4.getZ();
        shaderVariableFloat4.value4 = (float) readOnlyVector4.getW();
        setNeedsRefresh(true);
    }

    public void setUniform(String str, ReadOnlyColorRGBA readOnlyColorRGBA) {
        ShaderVariableFloat4 shaderVariableFloat4 = (ShaderVariableFloat4) getShaderUniform(str, ShaderVariableFloat4.class);
        shaderVariableFloat4.value1 = readOnlyColorRGBA.getRed();
        shaderVariableFloat4.value2 = readOnlyColorRGBA.getGreen();
        shaderVariableFloat4.value3 = readOnlyColorRGBA.getBlue();
        shaderVariableFloat4.value4 = readOnlyColorRGBA.getAlpha();
        setNeedsRefresh(true);
    }

    public void setUniform(String str, ReadOnlyQuaternion readOnlyQuaternion) {
        ShaderVariableFloat4 shaderVariableFloat4 = (ShaderVariableFloat4) getShaderUniform(str, ShaderVariableFloat4.class);
        shaderVariableFloat4.value1 = (float) readOnlyQuaternion.getX();
        shaderVariableFloat4.value2 = (float) readOnlyQuaternion.getY();
        shaderVariableFloat4.value3 = (float) readOnlyQuaternion.getZ();
        shaderVariableFloat4.value4 = (float) readOnlyQuaternion.getW();
        setNeedsRefresh(true);
    }

    public void setUniform(String str, ReadOnlyMatrix3 readOnlyMatrix3, boolean z10) {
        ShaderVariableMatrix3 shaderVariableMatrix3 = (ShaderVariableMatrix3) getShaderUniform(str, ShaderVariableMatrix3.class);
        shaderVariableMatrix3.matrixBuffer.rewind();
        readOnlyMatrix3.toFloatBuffer(shaderVariableMatrix3.matrixBuffer);
        shaderVariableMatrix3.matrixBuffer.rewind();
        shaderVariableMatrix3.rowMajor = z10;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, ReadOnlyMatrix4 readOnlyMatrix4, boolean z10) {
        ShaderVariableMatrix4 shaderVariableMatrix4 = (ShaderVariableMatrix4) getShaderUniform(str, ShaderVariableMatrix4.class);
        shaderVariableMatrix4.matrixBuffer.rewind();
        readOnlyMatrix4.toFloatBuffer(shaderVariableMatrix4.matrixBuffer);
        shaderVariableMatrix4.matrixBuffer.rewind();
        shaderVariableMatrix4.rowMajor = z10;
        setNeedsRefresh(true);
    }

    public void setUniform(String str, ReadOnlyMatrix4[] readOnlyMatrix4Arr, boolean z10) {
        ShaderVariableMatrix4Array shaderVariableMatrix4Array = (ShaderVariableMatrix4Array) getShaderUniform(str, ShaderVariableMatrix4Array.class);
        FloatBuffer floatBuffer = shaderVariableMatrix4Array.matrixBuffer;
        if (floatBuffer == null || floatBuffer.capacity() < readOnlyMatrix4Arr.length * 16) {
            floatBuffer = BufferUtils.createFloatBuffer(readOnlyMatrix4Arr.length * 16);
            shaderVariableMatrix4Array.matrixBuffer = floatBuffer;
        }
        floatBuffer.clear();
        for (ReadOnlyMatrix4 readOnlyMatrix4 : readOnlyMatrix4Arr) {
            readOnlyMatrix4.toFloatBuffer(floatBuffer);
        }
        floatBuffer.flip();
        shaderVariableMatrix4Array.rowMajor = z10;
        setNeedsRefresh(true);
    }
}
