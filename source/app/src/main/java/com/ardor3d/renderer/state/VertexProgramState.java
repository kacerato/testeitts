package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.renderer.state.record.VertexProgramStateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class VertexProgramState extends RenderState {
    protected ByteBuffer _program;
    private static final Logger logger = Logger.getLogger(VertexProgramState.class.getName());
    protected static float[][] _envparameters = new float[96];
    protected boolean _usingParameters = false;
    protected int _programID = -1;
    protected float[][] _parameters = new float[96];

    public static float[][] _getEnvParameters() {
        return _envparameters;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt == 0) {
            this._program = null;
            return;
        }
        this._program = BufferUtils.createByteBuffer(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            this._program.put(objectInputStream.readByte());
        }
    }

    public static void setEnvParameter(float[] fArr, int i10) {
        if (i10 < 0 || i10 > 95) {
            throw new IllegalArgumentException("Invalid parameter ID");
        }
        if (fArr != null && fArr.length != 4) {
            throw new IllegalArgumentException("Vertex program parameters must be of type float[4]");
        }
        _envparameters[i10] = fArr;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        ByteBuffer byteBuffer = this._program;
        if (byteBuffer == null) {
            objectOutputStream.writeInt(0);
            return;
        }
        objectOutputStream.writeInt(byteBuffer.capacity());
        this._program.rewind();
        int capacity = this._program.capacity();
        for (int i10 = 0; i10 < capacity; i10++) {
            objectOutputStream.writeByte(this._program.get());
        }
    }

    public float[][] _getParameters() {
        return this._parameters;
    }

    public int _getProgramID() {
        return this._programID;
    }

    public void _setProgramID(int i10) {
        this._programID = i10;
    }

    @Override
    public StateRecord createStateRecord() {
        return new VertexProgramStateRecord();
    }

    public ByteBuffer getProgramAsBuffer() {
        return this._program;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.VertexProgram;
    }

    public boolean isUsingParameters() {
        return this._usingParameters;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x004e -> B:13:0x0086). Please report as a decompilation issue!!! */
    public void load(URL url) {
        Exception exc;
        ByteArrayOutputStream byteArrayOutputStream;
        BufferedInputStream bufferedInputStream;
        ?? r12 = 0;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream(16384);
                    bufferedInputStream = new BufferedInputStream(url.openStream());
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e10) {
                exc = e10;
            }
        } catch (IOException e11) {
            Logger logger2 = logger;
            logger2.log(Level.WARNING, "Failed to close the vertex program", (Throwable) e11);
            r12 = logger2;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read <= 0) {
                    break;
                } else {
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedInputStream.close();
            byteArrayOutputStream.close();
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(byteArray.length);
            this._program = createByteBuffer;
            createByteBuffer.put(byteArray);
            this._program.rewind();
            this._programID = -1;
            setNeedsRefresh(true);
            bufferedInputStream.close();
            r12 = createByteBuffer;
        } catch (Exception e12) {
            exc = e12;
            bufferedInputStream2 = bufferedInputStream;
            Logger logger3 = logger;
            logger3.severe("Could not load vertex program: " + ((Object) exc));
            logger3.logp(Level.SEVERE, getClass().getName(), "load(URL)", "Exception", (Throwable) exc);
            r12 = bufferedInputStream2;
            if (bufferedInputStream2 != null) {
                bufferedInputStream2.close();
                r12 = bufferedInputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
            r12 = bufferedInputStream;
            if (r12 != 0) {
                try {
                    r12.close();
                } catch (IOException e13) {
                    logger.log(Level.WARNING, "Failed to close the vertex program", (Throwable) e13);
                }
            }
            throw th;
        }
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._usingParameters = inputCapsule.readBoolean("usingParameters", false);
        this._parameters = inputCapsule.readFloatArray2D("parameters", new float[96]);
        this._program = inputCapsule.readByteBuffer("program", null);
    }

    public void setParameter(float[] fArr, int i10) {
        if (i10 < 0 || i10 > 95) {
            throw new IllegalArgumentException("Invalid parameter ID");
        }
        if (fArr != null && fArr.length != 4) {
            throw new IllegalArgumentException("Vertex program parameters must be of type float[4]");
        }
        this._usingParameters = true;
        this._parameters[i10] = fArr;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._usingParameters, "usingParameters", false);
        outputCapsule.write(this._parameters, "parameters", new float[96]);
        outputCapsule.write(this._program, "program", (ByteBuffer) null);
    }

    public void load(String str) {
        try {
            byte[] bytes = str.getBytes();
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(bytes.length);
            this._program = createByteBuffer;
            createByteBuffer.put(bytes);
            this._program.rewind();
            this._programID = -1;
            setNeedsRefresh(true);
        } catch (Exception e10) {
            Logger logger2 = logger;
            logger2.severe("Could not load vertex program: " + ((Object) e10));
            logger2.logp(Level.SEVERE, getClass().getName(), "load(URL)", "Exception", (Throwable) e10);
        }
    }
}
