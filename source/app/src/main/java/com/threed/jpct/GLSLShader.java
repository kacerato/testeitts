package com.threed.jpct;

import android.opengl.GLES20;
import com.ardor3d.util.resource.ResourceLocatorTool;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.JavaCore;

public class GLSLShader {
    int additionalColorHandle;
    int alphaHandle;
    int ambientColorHandle;
    int attenuationHandle;
    int blendingModeHandle;
    int colorHandle;
    int diffuseColorsHandle;
    boolean directMode;
    int fogColorHandle;
    int fogEndHandle;
    int fogStartHandle;
    private String frgSource;

    int f83616id;
    boolean init;
    private List<String> keyTemp;
    private int lastContext;
    int lightCountHandle;
    int lightPositionsHandle;
    int mvMatrixHandle;
    int mvpMatrixHandle;
    boolean needsTangents;
    private boolean newUniforms;
    int normalHandle;
    int pMatrixHandle;
    private int program;
    int shininessHandle;
    int specularColorsHandle;
    int tangentHandle;
    int texMatrixHandle;
    int textureCountHandle;
    int[] textureHandle;
    int[] textureUnitHandle;
    private Matrix tmp;
    private float[] tmpFloats;
    private Uniform tmpUniform;
    private List<String> toRemove;
    private UniformMap uniforms;
    int useColorsHandle;
    int vertexHandle;
    private String vtxSource;
    private static Map<String, String> REPLACEMENTS = new HashMap();
    private static int NEXT = 0;
    private static ShaderLocator locator = null;

    public static class Uniform {
        public static final int FLOAT = 1;
        public static final int FLOAT_ARRAY = 2;
        public static final int INT = 0;
        public static final int MATRIX = 3;
        public static final int SINGLE_FLOAT_ARRAY = 6;
        public static final int VECTOR = 4;
        public static final int VECTOR_ARRAY = 5;
        private float fValue;
        private float[] faValue;
        private int handle;
        private int iValue;
        private FloatBuffer mValue;
        private String name;
        private SimpleVector sValue;
        private float[] saData;
        private boolean staticUniform;
        private int type;

        public Uniform() {
            this(0, "--tmp--");
        }

        public float[] getFloatArrayValue() {
            return this.faValue;
        }

        public float getFloatValue() {
            return this.fValue;
        }

        public int getHandle() {
            return this.handle;
        }

        public int getIntValue() {
            return this.iValue;
        }

        public FloatBuffer getMatrixValue() {
            return this.mValue;
        }

        public String getName() {
            return this.name;
        }

        public int getType() {
            return this.type;
        }

        public float[] getVectorArrayValue() {
            return this.saData;
        }

        public SimpleVector getVectorValue() {
            return this.sValue;
        }

        public boolean hasHandle() {
            return this.handle != -1;
        }

        public boolean isStaticUniform() {
            return this.staticUniform;
        }

        public void setHandle(int i10) {
            this.handle = i10;
        }

        public void setStaticUniform(boolean z10) {
            this.staticUniform = z10;
        }

        public void setType(int i10) {
            this.type = i10;
        }

        public void setValue(int i10) {
            this.iValue = i10;
        }

        public Uniform(int i10, String str) {
            this.iValue = 0;
            this.fValue = 0.0f;
            this.faValue = null;
            this.mValue = null;
            this.sValue = null;
            this.saData = null;
            this.handle = -1;
            this.staticUniform = false;
            this.type = i10;
            this.name = str;
        }

        public void setValue(float f10) {
            this.fValue = f10;
        }

        public void setValue(float[] fArr) {
            this.faValue = fArr;
        }

        public void setValue(FloatBuffer floatBuffer) {
            this.mValue = floatBuffer;
        }

        public void setValue(SimpleVector simpleVector) {
            this.sValue = simpleVector;
        }

        public void setValue(SimpleVector[] simpleVectorArr) {
            if (this.saData == null) {
                this.saData = new float[simpleVectorArr.length * 3];
            }
            int i10 = 0;
            for (SimpleVector simpleVector : simpleVectorArr) {
                float[] fArr = this.saData;
                fArr[i10] = simpleVector.f83625x;
                int i11 = i10 + 2;
                fArr[i10 + 1] = simpleVector.f83626y;
                i10 += 3;
                fArr[i11] = simpleVector.f83627z;
            }
        }
    }

    public GLSLShader(String str, String str2) {
        this.colorHandle = -1;
        this.vertexHandle = -1;
        this.normalHandle = -1;
        this.tangentHandle = -1;
        this.textureHandle = new int[4];
        this.textureUnitHandle = new int[4];
        this.mvpMatrixHandle = -1;
        this.pMatrixHandle = -1;
        this.mvMatrixHandle = -1;
        this.texMatrixHandle = -1;
        this.textureCountHandle = -1;
        this.blendingModeHandle = -1;
        this.useColorsHandle = -1;
        this.additionalColorHandle = -1;
        this.ambientColorHandle = -1;
        this.lightPositionsHandle = -1;
        this.diffuseColorsHandle = -1;
        this.specularColorsHandle = -1;
        this.attenuationHandle = -1;
        this.shininessHandle = -1;
        this.lightCountHandle = -1;
        this.fogStartHandle = -1;
        this.fogEndHandle = -1;
        this.fogColorHandle = -1;
        this.alphaHandle = -1;
        this.needsTangents = false;
        this.init = false;
        int i10 = NEXT;
        NEXT = i10 + 1;
        this.f83616id = i10;
        this.directMode = false;
        this.lastContext = -1;
        this.program = 0;
        this.frgSource = null;
        this.vtxSource = null;
        this.newUniforms = false;
        this.uniforms = new UniformMap(null);
        this.toRemove = null;
        this.keyTemp = null;
        this.tmp = new Matrix();
        this.tmpFloats = new float[16];
        this.tmpUniform = new Uniform();
        this.frgSource = str2;
        this.vtxSource = str;
        this.needsTangents = str.indexOf("attribute vec4 tangent") != -1;
        this.init = false;
    }

    public static void addReplacement(String str, String str2) {
        REPLACEMENTS.put(str, str2);
    }

    private void check20() {
        if (FrameBuffer.versionHint == 1) {
            Logger.log("Shaders are not supported when using OpenGL ES 1.x!", 0);
        }
    }

    private void checkError(String str) {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                return;
            }
            Logger.log(String.valueOf(str) + ": glError " + glGetError, 0);
        }
    }

    private int createProgram(int i10, int i11) {
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram == 0) {
            return glCreateProgram;
        }
        GLES20.glAttachShader(glCreateProgram, i10);
        checkError("glAttachShader - vertex shader");
        GLES20.glAttachShader(glCreateProgram, i11);
        checkError("glAttachShader -  fragment shader");
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return glCreateProgram;
        }
        Logger.log("Could not link shader program: " + GLES20.glGetProgramInfoLog(glCreateProgram), 0);
        GLES20.glDeleteProgram(glCreateProgram);
        return 0;
    }

    private int getLocation(String str) {
        return GLES20.glGetUniformLocation(this.program, str);
    }

    private void init() {
        this.vertexHandle = GLES20.glGetAttribLocation(this.program, "position");
        this.mvpMatrixHandle = GLES20.glGetUniformLocation(this.program, "modelViewProjectionMatrix");
        this.pMatrixHandle = GLES20.glGetUniformLocation(this.program, "projectionMatrix");
        this.colorHandle = GLES20.glGetAttribLocation(this.program, "color");
        this.tangentHandle = GLES20.glGetAttribLocation(this.program, "tangent");
        this.normalHandle = GLES20.glGetAttribLocation(this.program, JavaCore.NORMAL);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.textureHandle;
            if (i11 >= iArr.length) {
                break;
            }
            iArr[i11] = GLES20.glGetAttribLocation(this.program, ResourceLocatorTool.TYPE_TEXTURE + i11);
            this.textureUnitHandle[i11] = GLES20.glGetUniformLocation(this.program, "textureUnit" + i11);
            i11++;
        }
        this.mvMatrixHandle = GLES20.glGetUniformLocation(this.program, "modelViewMatrix");
        this.texMatrixHandle = GLES20.glGetUniformLocation(this.program, "textureMatrix");
        this.alphaHandle = GLES20.glGetUniformLocation(this.program, "alpha");
        this.useColorsHandle = GLES20.glGetUniformLocation(this.program, "useColors");
        this.additionalColorHandle = GLES20.glGetUniformLocation(this.program, "additionalColor");
        this.ambientColorHandle = GLES20.glGetUniformLocation(this.program, "ambientColor");
        this.lightCountHandle = GLES20.glGetUniformLocation(this.program, "lightCount");
        this.lightPositionsHandle = GLES20.glGetUniformLocation(this.program, "lightPositions");
        this.diffuseColorsHandle = GLES20.glGetUniformLocation(this.program, "diffuseColors");
        this.specularColorsHandle = GLES20.glGetUniformLocation(this.program, "specularColors");
        this.attenuationHandle = GLES20.glGetUniformLocation(this.program, "attenuation");
        this.fogColorHandle = GLES20.glGetUniformLocation(this.program, "fogColor");
        this.fogStartHandle = GLES20.glGetUniformLocation(this.program, "fogStart");
        this.fogEndHandle = GLES20.glGetUniformLocation(this.program, "fogEnd");
        this.textureCountHandle = GLES20.glGetUniformLocation(this.program, "textureCount");
        this.blendingModeHandle = GLES20.glGetUniformLocation(this.program, "blendingMode");
        this.shininessHandle = GLES20.glGetUniformLocation(this.program, "shininess");
        if (this.vertexHandle == -1) {
            Logger.log("Missing attribute 'position' in vertex shader", 0);
        }
        Logger.log("Handles of " + this.program + ": " + this.vertexHandle + "/" + this.mvpMatrixHandle + "/" + this.normalHandle);
        activate();
        while (true) {
            int[] iArr2 = this.textureUnitHandle;
            if (i10 >= iArr2.length) {
                return;
            }
            int i12 = iArr2[i10];
            if (i12 != -1) {
                GLES20.glUniform1i(i12, i10);
            }
            i10++;
        }
    }

    private void loadProgram(String str, String str2) {
        if (Config.glForceHighPrecision) {
            String replace = str2.replace("precision mediump", "precision highp").replace("precision lowp", "precision highp");
            if (!str2.equals(replace)) {
                Logger.log("Shader forced to use high precision!");
            }
            str2 = replace;
        }
        this.frgSource = str2;
        this.vtxSource = str;
        Logger.log("Compiling shader program!");
        int loadShader = loadShader(35633, str);
        if (loadShader == 0) {
            checkError("load shader");
            Logger.log("Failed to load and compile vertex shaders!", 0);
        }
        int loadShader2 = loadShader(35632, str2);
        if (loadShader2 == 0) {
            checkError("load shader");
            Logger.log("Failed to load and compile fragment shaders!", 0);
        }
        this.program = createProgram(loadShader, loadShader2);
    }

    private int loadShader(int i10, String str) {
        int glCreateShader = GLES20.glCreateShader(i10);
        if (glCreateShader == 0) {
            return glCreateShader;
        }
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        Logger.log("Could not compile shader " + i10 + ": " + GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        return 0;
    }

    private void set(String str, int i10, boolean z10) {
        int handle;
        Uniform uniform = this.uniforms.get(str);
        if (uniform == null && this.directMode && (handle = getHandle(str)) != -1) {
            this.tmpUniform.setType(0);
            this.tmpUniform.setHandle(handle);
            uniform = this.tmpUniform;
        }
        if (uniform == null) {
            uniform = new Uniform(0, str);
            this.newUniforms = true;
            this.uniforms.put(str, uniform);
        }
        uniform.setValue(i10);
        uniform.setStaticUniform(z10);
        if (this.directMode) {
            setUniform(uniform);
        }
    }

    public static void setShaderLocator(ShaderLocator shaderLocator) {
        locator = shaderLocator;
    }

    private FloatBuffer toFloatBuffer(Matrix matrix, FloatBuffer floatBuffer) {
        if (floatBuffer == null) {
            floatBuffer = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder()).asFloatBuffer();
        } else {
            floatBuffer.rewind();
        }
        this.tmp.setTo(matrix);
        this.tmp.transformToGL();
        floatBuffer.put(this.tmp.fillDump(this.tmpFloats));
        floatBuffer.rewind();
        return floatBuffer;
    }

    public void activate(int i10) {
        checkContext(i10);
        activate();
    }

    public void checkContext(int i10) {
        int i11 = this.lastContext;
        if (i11 != -1 && i11 != i10) {
            recompile();
        }
        this.lastContext = i10;
    }

    public void dispose() {
        this.program = 0;
    }

    public void finalize() {
        dispose();
    }

    public int getHandle(String str) {
        if (str.equals("modelViewMatrix")) {
            return this.mvMatrixHandle;
        }
        if (str.equals("modelViewProjectionMatrix")) {
            return this.mvpMatrixHandle;
        }
        if (str.equals("projectionMatrix")) {
            return this.pMatrixHandle;
        }
        if (str.equals("textureMatrix")) {
            return this.texMatrixHandle;
        }
        if (str.equals("alpha")) {
            return this.alphaHandle;
        }
        if (str.equals("useColors")) {
            return this.useColorsHandle;
        }
        if (str.equals("additionalColor")) {
            return this.additionalColorHandle;
        }
        if (str.equals("ambientColor")) {
            return this.ambientColorHandle;
        }
        if (str.equals("lightCount")) {
            return this.lightCountHandle;
        }
        if (str.equals("lightPositions")) {
            return this.lightPositionsHandle;
        }
        if (str.equals("diffuseColors")) {
            return this.diffuseColorsHandle;
        }
        if (str.equals("specularColors")) {
            return this.specularColorsHandle;
        }
        if (str.equals("attenuation")) {
            return this.attenuationHandle;
        }
        if (str.equals("fogColor")) {
            return this.fogColorHandle;
        }
        if (str.equals("fogStart")) {
            return this.fogStartHandle;
        }
        if (str.equals("fogEnd")) {
            return this.fogEndHandle;
        }
        if (str.equals("textureCount")) {
            return this.textureCountHandle;
        }
        if (str.equals("blendingMode")) {
            return this.blendingModeHandle;
        }
        if (str.equals("shininess")) {
            return this.shininessHandle;
        }
        return -1;
    }

    public int getProgram() {
        return this.program;
    }

    public void preInit() {
        if (this.init) {
            return;
        }
        check20();
        loadProgram(this.vtxSource, this.frgSource);
        init();
        this.init = true;
    }

    public void recompile() {
        Logger.log("Recompiling shader because of context change!");
        loadProgram(this.vtxSource, this.frgSource);
        init();
    }

    public void setFloatArrayUniform(String str, float[] fArr) {
        set(str, fArr, false, true);
    }

    public void setStaticFloatArrayUniform(String str, float[] fArr) {
        set(str, fArr, true, true);
    }

    public void setStaticUniform(String str, int i10) {
        set(str, i10, true);
    }

    public void setUniform(String str, int i10) {
        set(str, i10, false);
    }

    public void update() {
        if (this.program <= 0) {
            return;
        }
        if (this.newUniforms) {
            if (this.keyTemp == null) {
                this.keyTemp = new ArrayList();
            }
            this.keyTemp.clear();
            this.keyTemp.addAll(this.uniforms.keySet());
            for (int i10 = 0; i10 < this.keyTemp.size(); i10++) {
                String str = this.keyTemp.get(i10);
                Uniform uniform = this.uniforms.get(str);
                if (!uniform.hasHandle()) {
                    uniform.setHandle(getLocation(str));
                }
            }
            this.newUniforms = false;
        }
        List<Uniform> values = this.uniforms.values();
        int size = values.size();
        for (int i11 = 0; i11 < size; i11++) {
            Uniform uniform2 = values.get(i11);
            setUniform(uniform2);
            if (uniform2.isStaticUniform()) {
                if (this.toRemove == null) {
                    this.toRemove = new ArrayList();
                }
                this.toRemove.add(uniform2.getName());
            }
        }
        if (this.toRemove != null) {
            for (int i12 = 0; i12 < this.toRemove.size(); i12++) {
                this.uniforms.remove(this.toRemove.get(i12));
            }
            this.toRemove = null;
        }
    }

    public void setStaticUniform(String str, float f10) {
        set(str, f10, true);
    }

    public void setUniform(String str, float f10) {
        set(str, f10, false);
    }

    public void activate() {
        GLES20.glUseProgram(this.program);
    }

    public void setStaticUniform(String str, float[] fArr) {
        set(str, fArr, true);
    }

    public void setUniform(String str, SimpleVector simpleVector) {
        set(str, simpleVector, false);
    }

    public void setStaticUniform(String str, SimpleVector[] simpleVectorArr) {
        set(str, simpleVectorArr, true);
    }

    public void setUniform(String str, SimpleVector[] simpleVectorArr) {
        set(str, simpleVectorArr, false);
    }

    public static class UniformMap {
        private Set<String> keys;
        private String lastName;
        private Uniform lastUniform;
        private List<Uniform> uniforms;

        private UniformMap() {
            this.uniforms = new ArrayList(4);
            this.keys = new HashSet();
            this.lastUniform = null;
            this.lastName = null;
        }

        public Uniform get(String str) {
            Uniform uniform;
            if (str.equals(this.lastName) && (uniform = this.lastUniform) != null) {
                return uniform;
            }
            int size = this.uniforms.size();
            for (int i10 = 0; i10 < size; i10++) {
                Uniform uniform2 = this.uniforms.get(i10);
                if (uniform2.name.equals(str)) {
                    this.lastUniform = uniform2;
                    this.lastName = str;
                    return uniform2;
                }
            }
            return null;
        }

        public Set<String> keySet() {
            return this.keys;
        }

        public void put(String str, Uniform uniform) {
            int size = this.uniforms.size();
            this.keys.add(str);
            for (int i10 = 0; i10 < size; i10++) {
                if (this.uniforms.get(i10).name.equals(str)) {
                    this.uniforms.set(i10, uniform);
                    return;
                }
            }
            this.uniforms.add(uniform);
        }

        public void remove(String str) {
            int size = this.uniforms.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.uniforms.get(i10).name.equals(str)) {
                    this.uniforms.remove(i10);
                    this.keys.remove(str);
                    return;
                }
            }
        }

        public List<Uniform> values() {
            return this.uniforms;
        }

        public UniformMap(UniformMap uniformMap) {
            this();
        }
    }

    public void setStaticUniform(String str, SimpleVector simpleVector) {
        set(str, simpleVector, true);
    }

    public void setUniform(String str, float[] fArr) {
        set(str, fArr, false);
    }

    public void setStaticUniform(String str, Matrix matrix) {
        set(str, toFloatBuffer(matrix, null), true);
    }

    public void setUniform(String str, Matrix matrix) {
        Uniform uniform = this.uniforms.get(str);
        if (uniform != null && uniform.getType() == 3) {
            set(str, toFloatBuffer(matrix, uniform.getMatrixValue()), false);
        } else {
            set(str, toFloatBuffer(matrix, null), false);
        }
    }

    private void setUniform(Uniform uniform) {
        int handle = uniform.getHandle();
        if (handle == -1) {
            return;
        }
        switch (uniform.getType()) {
            case 0:
                GLES20.glUniform1i(handle, uniform.getIntValue());
                return;
            case 1:
                GLES20.glUniform1f(handle, uniform.getFloatValue());
                return;
            case 2:
                float[] floatArrayValue = uniform.getFloatArrayValue();
                int length = floatArrayValue.length;
                if (length == 1) {
                    GLES20.glUniform1f(handle, floatArrayValue[0]);
                    return;
                }
                if (length == 2) {
                    GLES20.glUniform2f(handle, floatArrayValue[0], floatArrayValue[1]);
                    return;
                } else if (length == 3) {
                    GLES20.glUniform3f(handle, floatArrayValue[0], floatArrayValue[1], floatArrayValue[2]);
                    return;
                } else {
                    if (length != 4) {
                        return;
                    }
                    GLES20.glUniform4f(handle, floatArrayValue[0], floatArrayValue[1], floatArrayValue[2], floatArrayValue[3]);
                    return;
                }
            case 3:
                FloatBuffer matrixValue = uniform.getMatrixValue();
                matrixValue.rewind();
                GLES20.glUniformMatrix4fv(handle, 1, false, matrixValue);
                return;
            case 4:
                SimpleVector vectorValue = uniform.getVectorValue();
                GLES20.glUniform3f(handle, vectorValue.f83625x, vectorValue.f83626y, vectorValue.f83627z);
                return;
            case 5:
                float[] vectorArrayValue = uniform.getVectorArrayValue();
                GLES20.glUniform3fv(handle, vectorArrayValue.length / 3, vectorArrayValue, 0);
                return;
            case 6:
                float[] floatArrayValue2 = uniform.getFloatArrayValue();
                GLES20.glUniform1fv(handle, floatArrayValue2.length, floatArrayValue2, 0);
                return;
            default:
                return;
        }
    }

    private void set(String str, float f10, boolean z10) {
        int handle;
        Uniform uniform = this.uniforms.get(str);
        if (uniform == null && this.directMode && (handle = getHandle(str)) != -1) {
            this.tmpUniform.setType(1);
            this.tmpUniform.setHandle(handle);
            uniform = this.tmpUniform;
        }
        if (uniform == null) {
            uniform = new Uniform(1, str);
            this.newUniforms = true;
            this.uniforms.put(str, uniform);
        }
        uniform.setValue(f10);
        uniform.setStaticUniform(z10);
        if (this.directMode) {
            setUniform(uniform);
        }
    }

    private void set(String str, float[] fArr, boolean z10) {
        set(str, fArr, z10, false);
    }

    private void set(String str, float[] fArr, boolean z10, boolean z11) {
        int handle;
        Uniform uniform = this.uniforms.get(str);
        if (uniform == null && this.directMode && (handle = getHandle(str)) != -1) {
            this.tmpUniform.setType(z11 ? 6 : 2);
            this.tmpUniform.setHandle(handle);
            uniform = this.tmpUniform;
        }
        if (uniform == null) {
            uniform = new Uniform(z11 ? 6 : 2, str);
            this.newUniforms = true;
            this.uniforms.put(str, uniform);
        }
        uniform.setValue(fArr);
        uniform.setStaticUniform(z10);
        if (this.directMode) {
            setUniform(uniform);
        }
    }

    private void set(String str, SimpleVector simpleVector, boolean z10) {
        int handle;
        Uniform uniform = this.uniforms.get(str);
        if (uniform == null && this.directMode && (handle = getHandle(str)) != -1) {
            this.tmpUniform.setType(4);
            this.tmpUniform.setHandle(handle);
            uniform = this.tmpUniform;
        }
        if (uniform == null) {
            uniform = new Uniform(4, str);
            this.newUniforms = true;
            this.uniforms.put(str, uniform);
        }
        uniform.setValue(simpleVector);
        uniform.setStaticUniform(z10);
        if (this.directMode) {
            setUniform(uniform);
        }
    }

    public GLSLShader(String str) {
        String str2;
        String shaderCode;
        String shaderCode2;
        this.colorHandle = -1;
        this.vertexHandle = -1;
        this.normalHandle = -1;
        this.tangentHandle = -1;
        this.textureHandle = new int[4];
        this.textureUnitHandle = new int[4];
        this.mvpMatrixHandle = -1;
        this.pMatrixHandle = -1;
        this.mvMatrixHandle = -1;
        this.texMatrixHandle = -1;
        this.textureCountHandle = -1;
        this.blendingModeHandle = -1;
        this.useColorsHandle = -1;
        this.additionalColorHandle = -1;
        this.ambientColorHandle = -1;
        this.lightPositionsHandle = -1;
        this.diffuseColorsHandle = -1;
        this.specularColorsHandle = -1;
        this.attenuationHandle = -1;
        this.shininessHandle = -1;
        this.lightCountHandle = -1;
        this.fogStartHandle = -1;
        this.fogEndHandle = -1;
        this.fogColorHandle = -1;
        this.alphaHandle = -1;
        this.needsTangents = false;
        this.init = false;
        int i10 = NEXT;
        NEXT = i10 + 1;
        this.f83616id = i10;
        this.directMode = false;
        this.lastContext = -1;
        this.program = 0;
        this.frgSource = null;
        this.vtxSource = null;
        this.newUniforms = false;
        this.uniforms = new UniformMap(null);
        this.toRemove = null;
        this.keyTemp = null;
        this.tmp = new Matrix();
        this.tmpFloats = new float[16];
        this.tmpUniform = new Uniform();
        if (locator == null) {
            locator = new ShaderLocator();
        }
        check20();
        try {
            StringBuilder sb2 = new StringBuilder("Loading default shaders ");
            if (str != null) {
                str2 = "(" + str + ")";
            } else {
                str2 = "";
            }
            sb2.append(str2);
            sb2.append("!");
            Logger.log(sb2.toString());
            Logger.log(String.valueOf(REPLACEMENTS.size()) + " shaders in replacement map!");
            String fragmentShaderName = GL20CompLayer.getFragmentShaderName();
            if (str != null) {
                int indexOf = fragmentShaderName.indexOf(46);
                fragmentShaderName = String.valueOf(fragmentShaderName.substring(0, indexOf)) + str + fragmentShaderName.substring(indexOf);
            }
            String replace = fragmentShaderName.replace("/", "");
            if (REPLACEMENTS.containsKey(replace)) {
                Logger.log("Using replacement fragment shader instead of default one!");
                shaderCode = REPLACEMENTS.get(replace);
            } else {
                shaderCode = locator.getShaderCode(fragmentShaderName);
            }
            String vertexShaderName = GL20CompLayer.getVertexShaderName();
            if (str != null) {
                int indexOf2 = vertexShaderName.indexOf(46);
                vertexShaderName = String.valueOf(vertexShaderName.substring(0, indexOf2)) + str + vertexShaderName.substring(indexOf2);
            }
            String replace2 = vertexShaderName.replace("/", "");
            if (REPLACEMENTS.containsKey(replace2)) {
                Logger.log("Using replacement vertex shader instead of default one!");
                shaderCode2 = REPLACEMENTS.get(replace2);
            } else {
                shaderCode2 = locator.getShaderCode(vertexShaderName);
            }
            loadProgram(shaderCode2, shaderCode);
        } catch (Exception e10) {
            Logger.log("Unable to load shader!", 1);
            Logger.log(e10, 0);
        }
        init();
        this.init = true;
    }

    private void set(String str, SimpleVector[] simpleVectorArr, boolean z10) {
        int handle;
        Uniform uniform = this.uniforms.get(str);
        if (uniform == null && this.directMode && (handle = getHandle(str)) != -1) {
            this.tmpUniform.setType(5);
            this.tmpUniform.setHandle(handle);
            uniform = this.tmpUniform;
        }
        if (uniform == null) {
            uniform = new Uniform(5, str);
            this.newUniforms = true;
            this.uniforms.put(str, uniform);
        }
        uniform.setValue(simpleVectorArr);
        uniform.setStaticUniform(z10);
        if (this.directMode) {
            setUniform(uniform);
        }
    }

    private void set(String str, FloatBuffer floatBuffer, boolean z10) {
        int handle;
        Uniform uniform = this.uniforms.get(str);
        if (uniform == null && this.directMode && (handle = getHandle(str)) != -1) {
            this.tmpUniform.setType(3);
            this.tmpUniform.setHandle(handle);
            uniform = this.tmpUniform;
        }
        if (uniform == null) {
            uniform = new Uniform(3, str);
            this.newUniforms = true;
            this.uniforms.put(str, uniform);
        }
        uniform.setValue(floatBuffer);
        uniform.setStaticUniform(z10);
        if (this.directMode) {
            setUniform(uniform);
        }
    }
}
