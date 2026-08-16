package com.itsmagic.engine.Engines.Engine.Native;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.MeshCurve;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.List;

public final class MeshBakeNative {

    public static final class a {

        public final Vertex f78921a;

        public final f f78922b;

        public a(Vertex vertex, f matrix) {
            this.f78921a = vertex;
            this.f78922b = matrix;
        }
    }

    static {
        System.loadLibrary("vertex");
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0269  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Vertex a(Vertex baseVertex, NativeFloatBuffer pathData, int pathCount, float spacing, float startOffset, int instanceCount, MeshCurve.p forwardAxis, Vector3 scale, Vector3 offset) {
        NativeIntBuffer nativeIntBuffer;
        NativeFloatBuffer nativeFloatBuffer;
        NativeFloatBuffer nativeFloatBuffer2;
        NativeFloatBuffer nativeFloatBuffer3;
        NativeFloatBuffer nativeFloatBuffer4;
        NativeFloatBuffer nativeFloatBuffer5;
        NativeFloatBuffer nativeFloatBuffer6;
        NativeFloatBuffer nativeFloatBuffer7;
        NativeFloatBuffer nativeFloatBuffer8;
        NativeFloatBuffer nativeFloatBuffer9;
        NativeFloatBuffer nativeFloatBuffer10;
        NativeIntBuffer nativeIntBuffer2;
        NativeFloatBuffer nativeFloatBuffer11;
        if (baseVertex == null || pathData == null || pathCount < 2 || instanceCount <= 0) {
            return null;
        }
        NativeFloatBuffer i12 = baseVertex.i1();
        NativeIntBuffer V02 = baseVertex.V0();
        if (i12 == null || V02 == null) {
            return null;
        }
        int capacity = (i12.capacity() / 3) * instanceCount * 3;
        int capacity2 = V02.capacity() * instanceCount;
        NativeFloatBuffer nativeFloatBuffer12 = new NativeFloatBuffer(capacity);
        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(capacity2);
        NativeFloatBuffer x02 = baseVertex.x0();
        NativeFloatBuffer F02 = baseVertex.F0();
        NativeFloatBuffer a12 = baseVertex.a1();
        NativeFloatBuffer i02 = baseVertex.i0();
        NativeFloatBuffer l12 = baseVertex.l1();
        NativeFloatBuffer m02 = baseVertex.m0();
        NativeFloatBuffer nativeFloatBuffer13 = x02 != null ? new NativeFloatBuffer(x02.capacity() * instanceCount) : null;
        NativeFloatBuffer nativeFloatBuffer14 = F02 != null ? new NativeFloatBuffer(F02.capacity() * instanceCount) : null;
        NativeFloatBuffer nativeFloatBuffer15 = a12 != null ? new NativeFloatBuffer(a12.capacity() * instanceCount) : null;
        NativeFloatBuffer nativeFloatBuffer16 = i02 != null ? new NativeFloatBuffer(i02.capacity() * instanceCount) : null;
        if (l12 != null) {
            nativeIntBuffer = nativeIntBuffer3;
            nativeFloatBuffer = new NativeFloatBuffer(l12.capacity() * instanceCount);
        } else {
            nativeIntBuffer = nativeIntBuffer3;
            nativeFloatBuffer = null;
        }
        if (m02 != null) {
            nativeFloatBuffer2 = nativeFloatBuffer;
            nativeFloatBuffer4 = new NativeFloatBuffer(m02.capacity() * instanceCount);
            nativeFloatBuffer3 = nativeFloatBuffer15;
        } else {
            nativeFloatBuffer2 = nativeFloatBuffer;
            nativeFloatBuffer3 = nativeFloatBuffer15;
            nativeFloatBuffer4 = null;
        }
        try {
            long criticalDirectCppPointer = NativeFloatBuffer.getCriticalDirectCppPointer(i12, 0L);
            long criticalDirectCppPointer2 = NativeFloatBuffer.getCriticalDirectCppPointer(x02, 0L);
            long criticalDirectCppPointer3 = NativeFloatBuffer.getCriticalDirectCppPointer(F02, 0L);
            long criticalDirectCppPointer4 = NativeFloatBuffer.getCriticalDirectCppPointer(a12, 0L);
            long criticalDirectCppPointer5 = NativeFloatBuffer.getCriticalDirectCppPointer(i02, 0L);
            long criticalDirectCppPointer6 = NativeFloatBuffer.getCriticalDirectCppPointer(l12, 0L);
            long criticalDirectCppPointer7 = NativeFloatBuffer.getCriticalDirectCppPointer(m02, 0L);
            NativeFloatBuffer nativeFloatBuffer17 = nativeFloatBuffer3;
            try {
                NativeFloatBuffer nativeFloatBuffer18 = nativeFloatBuffer2;
                try {
                    NativeIntBuffer nativeIntBuffer4 = nativeIntBuffer;
                    try {
                        NativeFloatBuffer nativeFloatBuffer19 = nativeFloatBuffer14;
                        NativeFloatBuffer nativeFloatBuffer20 = nativeFloatBuffer4;
                        NativeFloatBuffer nativeFloatBuffer21 = nativeFloatBuffer13;
                        NativeFloatBuffer nativeFloatBuffer22 = nativeFloatBuffer16;
                        try {
                            nativeBakeMeshCurveDeform(criticalDirectCppPointer, criticalDirectCppPointer2, criticalDirectCppPointer3, criticalDirectCppPointer4, criticalDirectCppPointer5, criticalDirectCppPointer6, criticalDirectCppPointer7, NativeIntBuffer.getCriticalDirectCppPointer(V02, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(pathData, 0L), pathCount, spacing, startOffset, instanceCount, forwardAxis != null ? forwardAxis.ordinal() : 2, scale != null ? scale.getX() : 1.0f, scale != null ? scale.getY() : 1.0f, scale != null ? scale.getZ() : 1.0f, offset != null ? offset.getX() : 0.0f, offset != null ? offset.getY() : 0.0f, offset != null ? offset.getZ() : 0.0f, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer12, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer13, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer14, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer17, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer16, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer18, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer4, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer4, 0L));
                            Vertex vertex = new Vertex();
                            nativeFloatBuffer9 = nativeFloatBuffer12;
                            try {
                                vertex.q2(nativeFloatBuffer9);
                                nativeIntBuffer2 = nativeIntBuffer4;
                                try {
                                    vertex.i2(nativeIntBuffer2);
                                    nativeFloatBuffer7 = nativeFloatBuffer21;
                                    if (nativeFloatBuffer7 != null) {
                                        try {
                                            vertex.Y1(nativeFloatBuffer7);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            nativeFloatBuffer10 = nativeFloatBuffer17;
                                            nativeFloatBuffer5 = nativeFloatBuffer19;
                                            nativeFloatBuffer11 = nativeFloatBuffer18;
                                            nativeFloatBuffer6 = nativeFloatBuffer20;
                                            nativeFloatBuffer8 = nativeFloatBuffer22;
                                            if (nativeFloatBuffer6 != null) {
                                            }
                                            if (nativeFloatBuffer11 != null) {
                                            }
                                            if (nativeFloatBuffer8 != null) {
                                            }
                                            if (nativeFloatBuffer10 != null) {
                                            }
                                            if (nativeFloatBuffer5 != null) {
                                            }
                                            if (nativeFloatBuffer7 != null) {
                                            }
                                            nativeIntBuffer2.destroyImmediate();
                                            nativeFloatBuffer9.destroyImmediate();
                                            throw th;
                                        }
                                    }
                                    nativeFloatBuffer5 = nativeFloatBuffer19;
                                    if (nativeFloatBuffer5 != null) {
                                        try {
                                            vertex.e2(nativeFloatBuffer5);
                                        } catch (Throwable th3) {
                                            th = th3;
                                            nativeFloatBuffer10 = nativeFloatBuffer17;
                                            nativeFloatBuffer11 = nativeFloatBuffer18;
                                            nativeFloatBuffer6 = nativeFloatBuffer20;
                                            nativeFloatBuffer8 = nativeFloatBuffer22;
                                            if (nativeFloatBuffer6 != null) {
                                            }
                                            if (nativeFloatBuffer11 != null) {
                                            }
                                            if (nativeFloatBuffer8 != null) {
                                            }
                                            if (nativeFloatBuffer10 != null) {
                                            }
                                            if (nativeFloatBuffer5 != null) {
                                            }
                                            if (nativeFloatBuffer7 != null) {
                                            }
                                            nativeIntBuffer2.destroyImmediate();
                                            nativeFloatBuffer9.destroyImmediate();
                                            throw th;
                                        }
                                    }
                                    nativeFloatBuffer10 = nativeFloatBuffer17;
                                    if (nativeFloatBuffer10 != null) {
                                        try {
                                            vertex.m2(nativeFloatBuffer10);
                                        } catch (Throwable th4) {
                                            th = th4;
                                            nativeFloatBuffer11 = nativeFloatBuffer18;
                                            nativeFloatBuffer6 = nativeFloatBuffer20;
                                            nativeFloatBuffer8 = nativeFloatBuffer22;
                                            if (nativeFloatBuffer6 != null) {
                                            }
                                            if (nativeFloatBuffer11 != null) {
                                            }
                                            if (nativeFloatBuffer8 != null) {
                                            }
                                            if (nativeFloatBuffer10 != null) {
                                            }
                                            if (nativeFloatBuffer5 != null) {
                                            }
                                            if (nativeFloatBuffer7 != null) {
                                            }
                                            nativeIntBuffer2.destroyImmediate();
                                            nativeFloatBuffer9.destroyImmediate();
                                            throw th;
                                        }
                                    }
                                    nativeFloatBuffer8 = nativeFloatBuffer22;
                                    if (nativeFloatBuffer8 != null) {
                                        try {
                                            vertex.P1(nativeFloatBuffer8);
                                        } catch (Throwable th5) {
                                            th = th5;
                                            nativeFloatBuffer11 = nativeFloatBuffer18;
                                            nativeFloatBuffer6 = nativeFloatBuffer20;
                                            if (nativeFloatBuffer6 != null) {
                                            }
                                            if (nativeFloatBuffer11 != null) {
                                            }
                                            if (nativeFloatBuffer8 != null) {
                                            }
                                            if (nativeFloatBuffer10 != null) {
                                            }
                                            if (nativeFloatBuffer5 != null) {
                                            }
                                            if (nativeFloatBuffer7 != null) {
                                            }
                                            nativeIntBuffer2.destroyImmediate();
                                            nativeFloatBuffer9.destroyImmediate();
                                            throw th;
                                        }
                                    }
                                    nativeFloatBuffer11 = nativeFloatBuffer18;
                                    if (nativeFloatBuffer11 != null) {
                                        try {
                                            vertex.s2(nativeFloatBuffer11);
                                        } catch (Throwable th6) {
                                            th = th6;
                                            nativeFloatBuffer6 = nativeFloatBuffer20;
                                            if (nativeFloatBuffer6 != null) {
                                                nativeFloatBuffer6.destroyImmediate();
                                            }
                                            if (nativeFloatBuffer11 != null) {
                                                nativeFloatBuffer11.destroyImmediate();
                                            }
                                            if (nativeFloatBuffer8 != null) {
                                                nativeFloatBuffer8.destroyImmediate();
                                            }
                                            if (nativeFloatBuffer10 != null) {
                                                nativeFloatBuffer10.destroyImmediate();
                                            }
                                            if (nativeFloatBuffer5 != null) {
                                                nativeFloatBuffer5.destroyImmediate();
                                            }
                                            if (nativeFloatBuffer7 != null) {
                                                nativeFloatBuffer7.destroyImmediate();
                                            }
                                            nativeIntBuffer2.destroyImmediate();
                                            nativeFloatBuffer9.destroyImmediate();
                                            throw th;
                                        }
                                    }
                                    nativeFloatBuffer6 = nativeFloatBuffer20;
                                    if (nativeFloatBuffer6 != null) {
                                        try {
                                            vertex.S1(nativeFloatBuffer6);
                                        } catch (Throwable th7) {
                                            th = th7;
                                            if (nativeFloatBuffer6 != null) {
                                            }
                                            if (nativeFloatBuffer11 != null) {
                                            }
                                            if (nativeFloatBuffer8 != null) {
                                            }
                                            if (nativeFloatBuffer10 != null) {
                                            }
                                            if (nativeFloatBuffer5 != null) {
                                            }
                                            if (nativeFloatBuffer7 != null) {
                                            }
                                            nativeIntBuffer2.destroyImmediate();
                                            nativeFloatBuffer9.destroyImmediate();
                                            throw th;
                                        }
                                    }
                                    vertex.apply();
                                    return vertex;
                                } catch (Throwable th8) {
                                    th = th8;
                                    nativeFloatBuffer10 = nativeFloatBuffer17;
                                    nativeFloatBuffer5 = nativeFloatBuffer19;
                                    nativeFloatBuffer7 = nativeFloatBuffer21;
                                    nativeFloatBuffer11 = nativeFloatBuffer18;
                                    nativeFloatBuffer6 = nativeFloatBuffer20;
                                    nativeFloatBuffer8 = nativeFloatBuffer22;
                                    if (nativeFloatBuffer6 != null) {
                                    }
                                    if (nativeFloatBuffer11 != null) {
                                    }
                                    if (nativeFloatBuffer8 != null) {
                                    }
                                    if (nativeFloatBuffer10 != null) {
                                    }
                                    if (nativeFloatBuffer5 != null) {
                                    }
                                    if (nativeFloatBuffer7 != null) {
                                    }
                                    nativeIntBuffer2.destroyImmediate();
                                    nativeFloatBuffer9.destroyImmediate();
                                    throw th;
                                }
                            } catch (Throwable th9) {
                                th = th9;
                                nativeFloatBuffer10 = nativeFloatBuffer17;
                                nativeFloatBuffer5 = nativeFloatBuffer19;
                                nativeIntBuffer2 = nativeIntBuffer4;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            nativeFloatBuffer10 = nativeFloatBuffer17;
                            nativeFloatBuffer5 = nativeFloatBuffer19;
                            nativeIntBuffer2 = nativeIntBuffer4;
                            nativeFloatBuffer7 = nativeFloatBuffer21;
                            nativeFloatBuffer11 = nativeFloatBuffer18;
                            nativeFloatBuffer6 = nativeFloatBuffer20;
                            nativeFloatBuffer9 = nativeFloatBuffer12;
                        }
                    } catch (Throwable th11) {
                        th = th11;
                        nativeFloatBuffer10 = nativeFloatBuffer17;
                        nativeIntBuffer2 = nativeIntBuffer4;
                        nativeFloatBuffer11 = nativeFloatBuffer18;
                        nativeFloatBuffer5 = nativeFloatBuffer14;
                        nativeFloatBuffer6 = nativeFloatBuffer4;
                        nativeFloatBuffer7 = nativeFloatBuffer13;
                        nativeFloatBuffer8 = nativeFloatBuffer16;
                        nativeFloatBuffer9 = nativeFloatBuffer12;
                    }
                } catch (Throwable th12) {
                    th = th12;
                    nativeFloatBuffer10 = nativeFloatBuffer17;
                    nativeFloatBuffer11 = nativeFloatBuffer18;
                    nativeFloatBuffer5 = nativeFloatBuffer14;
                    nativeFloatBuffer6 = nativeFloatBuffer4;
                    nativeFloatBuffer7 = nativeFloatBuffer13;
                    nativeFloatBuffer8 = nativeFloatBuffer16;
                    nativeFloatBuffer9 = nativeFloatBuffer12;
                    nativeIntBuffer2 = nativeIntBuffer;
                }
            } catch (Throwable th13) {
                th = th13;
                nativeFloatBuffer10 = nativeFloatBuffer17;
                nativeFloatBuffer5 = nativeFloatBuffer14;
                nativeFloatBuffer6 = nativeFloatBuffer4;
                nativeFloatBuffer7 = nativeFloatBuffer13;
                nativeFloatBuffer8 = nativeFloatBuffer16;
                nativeFloatBuffer9 = nativeFloatBuffer12;
                nativeIntBuffer2 = nativeIntBuffer;
                nativeFloatBuffer11 = nativeFloatBuffer2;
                if (nativeFloatBuffer6 != null) {
                }
                if (nativeFloatBuffer11 != null) {
                }
                if (nativeFloatBuffer8 != null) {
                }
                if (nativeFloatBuffer10 != null) {
                }
                if (nativeFloatBuffer5 != null) {
                }
                if (nativeFloatBuffer7 != null) {
                }
                nativeIntBuffer2.destroyImmediate();
                nativeFloatBuffer9.destroyImmediate();
                throw th;
            }
        } catch (Throwable th14) {
            th = th14;
            nativeFloatBuffer5 = nativeFloatBuffer14;
            nativeFloatBuffer6 = nativeFloatBuffer4;
            nativeFloatBuffer7 = nativeFloatBuffer13;
            nativeFloatBuffer8 = nativeFloatBuffer16;
            nativeFloatBuffer9 = nativeFloatBuffer12;
            nativeFloatBuffer10 = nativeFloatBuffer3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0212  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Vertex b(Vertex baseVertex, NativeFloatBuffer matrices, int instanceCount) {
        NativeIntBuffer nativeIntBuffer;
        NativeFloatBuffer nativeFloatBuffer;
        NativeFloatBuffer nativeFloatBuffer2;
        NativeFloatBuffer nativeFloatBuffer3;
        NativeFloatBuffer nativeFloatBuffer4;
        NativeFloatBuffer nativeFloatBuffer5;
        NativeFloatBuffer nativeFloatBuffer6;
        NativeFloatBuffer nativeFloatBuffer7;
        NativeFloatBuffer nativeFloatBuffer8;
        NativeFloatBuffer nativeFloatBuffer9;
        NativeFloatBuffer nativeFloatBuffer10;
        NativeIntBuffer nativeIntBuffer2;
        NativeFloatBuffer nativeFloatBuffer11;
        NativeFloatBuffer nativeFloatBuffer12;
        if (baseVertex == null || matrices == null || instanceCount <= 0) {
            return null;
        }
        NativeFloatBuffer i12 = baseVertex.i1();
        NativeIntBuffer V02 = baseVertex.V0();
        if (i12 == null || V02 == null) {
            return null;
        }
        int capacity = (i12.capacity() / 3) * instanceCount * 3;
        int capacity2 = V02.capacity() * instanceCount;
        NativeFloatBuffer nativeFloatBuffer13 = new NativeFloatBuffer(capacity);
        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(capacity2);
        NativeFloatBuffer x02 = baseVertex.x0();
        NativeFloatBuffer F02 = baseVertex.F0();
        NativeFloatBuffer a12 = baseVertex.a1();
        NativeFloatBuffer i02 = baseVertex.i0();
        NativeFloatBuffer l12 = baseVertex.l1();
        NativeFloatBuffer m02 = baseVertex.m0();
        NativeFloatBuffer nativeFloatBuffer14 = x02 != null ? new NativeFloatBuffer(x02.capacity() * instanceCount) : null;
        NativeFloatBuffer nativeFloatBuffer15 = F02 != null ? new NativeFloatBuffer(F02.capacity() * instanceCount) : null;
        NativeFloatBuffer nativeFloatBuffer16 = a12 != null ? new NativeFloatBuffer(a12.capacity() * instanceCount) : null;
        NativeFloatBuffer nativeFloatBuffer17 = i02 != null ? new NativeFloatBuffer(i02.capacity() * instanceCount) : null;
        if (l12 != null) {
            nativeIntBuffer = nativeIntBuffer3;
            nativeFloatBuffer = new NativeFloatBuffer(l12.capacity() * instanceCount);
        } else {
            nativeIntBuffer = nativeIntBuffer3;
            nativeFloatBuffer = null;
        }
        if (m02 != null) {
            nativeFloatBuffer2 = nativeFloatBuffer;
            nativeFloatBuffer5 = new NativeFloatBuffer(m02.capacity() * instanceCount);
            nativeFloatBuffer3 = nativeFloatBuffer16;
            nativeFloatBuffer4 = nativeFloatBuffer17;
        } else {
            nativeFloatBuffer2 = nativeFloatBuffer;
            nativeFloatBuffer3 = nativeFloatBuffer16;
            nativeFloatBuffer4 = nativeFloatBuffer17;
            nativeFloatBuffer5 = null;
        }
        try {
            long criticalDirectCppPointer = NativeFloatBuffer.getCriticalDirectCppPointer(i12, 0L);
            long criticalDirectCppPointer2 = NativeFloatBuffer.getCriticalDirectCppPointer(x02, 0L);
            long criticalDirectCppPointer3 = NativeFloatBuffer.getCriticalDirectCppPointer(F02, 0L);
            long criticalDirectCppPointer4 = NativeFloatBuffer.getCriticalDirectCppPointer(a12, 0L);
            long criticalDirectCppPointer5 = NativeFloatBuffer.getCriticalDirectCppPointer(i02, 0L);
            long criticalDirectCppPointer6 = NativeFloatBuffer.getCriticalDirectCppPointer(l12, 0L);
            long criticalDirectCppPointer7 = NativeFloatBuffer.getCriticalDirectCppPointer(m02, 0L);
            NativeFloatBuffer nativeFloatBuffer18 = nativeFloatBuffer3;
            try {
                NativeFloatBuffer nativeFloatBuffer19 = nativeFloatBuffer4;
                try {
                    NativeFloatBuffer nativeFloatBuffer20 = nativeFloatBuffer2;
                    try {
                        NativeIntBuffer nativeIntBuffer4 = nativeIntBuffer;
                        try {
                            NativeFloatBuffer nativeFloatBuffer21 = nativeFloatBuffer14;
                            NativeFloatBuffer nativeFloatBuffer22 = nativeFloatBuffer15;
                            NativeFloatBuffer nativeFloatBuffer23 = nativeFloatBuffer5;
                            try {
                                nativeBakeMeshInstances(criticalDirectCppPointer, criticalDirectCppPointer2, criticalDirectCppPointer3, criticalDirectCppPointer4, criticalDirectCppPointer5, criticalDirectCppPointer6, criticalDirectCppPointer7, NativeIntBuffer.getCriticalDirectCppPointer(V02, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(matrices, 0L), instanceCount, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer13, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer14, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer15, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer18, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer19, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer20, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer5, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer4, 0L));
                                Vertex vertex = new Vertex();
                                nativeFloatBuffer8 = nativeFloatBuffer13;
                                try {
                                    vertex.q2(nativeFloatBuffer8);
                                    nativeIntBuffer2 = nativeIntBuffer4;
                                    try {
                                        vertex.i2(nativeIntBuffer2);
                                        nativeFloatBuffer6 = nativeFloatBuffer21;
                                        if (nativeFloatBuffer6 != null) {
                                            try {
                                                vertex.Y1(nativeFloatBuffer6);
                                            } catch (Throwable th2) {
                                                th = th2;
                                                nativeFloatBuffer10 = nativeFloatBuffer18;
                                                nativeFloatBuffer12 = nativeFloatBuffer19;
                                                nativeFloatBuffer7 = nativeFloatBuffer22;
                                                nativeFloatBuffer11 = nativeFloatBuffer20;
                                                nativeFloatBuffer9 = nativeFloatBuffer23;
                                                if (nativeFloatBuffer9 != null) {
                                                }
                                                if (nativeFloatBuffer11 != null) {
                                                }
                                                if (nativeFloatBuffer12 != null) {
                                                }
                                                if (nativeFloatBuffer10 != null) {
                                                }
                                                if (nativeFloatBuffer7 != null) {
                                                }
                                                if (nativeFloatBuffer6 != null) {
                                                }
                                                nativeIntBuffer2.destroyImmediate();
                                                nativeFloatBuffer8.destroyImmediate();
                                                throw th;
                                            }
                                        }
                                        nativeFloatBuffer7 = nativeFloatBuffer22;
                                        if (nativeFloatBuffer7 != null) {
                                            try {
                                                vertex.e2(nativeFloatBuffer7);
                                            } catch (Throwable th3) {
                                                th = th3;
                                                nativeFloatBuffer10 = nativeFloatBuffer18;
                                                nativeFloatBuffer12 = nativeFloatBuffer19;
                                                nativeFloatBuffer11 = nativeFloatBuffer20;
                                                nativeFloatBuffer9 = nativeFloatBuffer23;
                                                if (nativeFloatBuffer9 != null) {
                                                }
                                                if (nativeFloatBuffer11 != null) {
                                                }
                                                if (nativeFloatBuffer12 != null) {
                                                }
                                                if (nativeFloatBuffer10 != null) {
                                                }
                                                if (nativeFloatBuffer7 != null) {
                                                }
                                                if (nativeFloatBuffer6 != null) {
                                                }
                                                nativeIntBuffer2.destroyImmediate();
                                                nativeFloatBuffer8.destroyImmediate();
                                                throw th;
                                            }
                                        }
                                        nativeFloatBuffer10 = nativeFloatBuffer18;
                                        if (nativeFloatBuffer10 != null) {
                                            try {
                                                vertex.m2(nativeFloatBuffer10);
                                            } catch (Throwable th4) {
                                                th = th4;
                                                nativeFloatBuffer12 = nativeFloatBuffer19;
                                                nativeFloatBuffer11 = nativeFloatBuffer20;
                                                nativeFloatBuffer9 = nativeFloatBuffer23;
                                                if (nativeFloatBuffer9 != null) {
                                                }
                                                if (nativeFloatBuffer11 != null) {
                                                }
                                                if (nativeFloatBuffer12 != null) {
                                                }
                                                if (nativeFloatBuffer10 != null) {
                                                }
                                                if (nativeFloatBuffer7 != null) {
                                                }
                                                if (nativeFloatBuffer6 != null) {
                                                }
                                                nativeIntBuffer2.destroyImmediate();
                                                nativeFloatBuffer8.destroyImmediate();
                                                throw th;
                                            }
                                        }
                                        nativeFloatBuffer12 = nativeFloatBuffer19;
                                        if (nativeFloatBuffer12 != null) {
                                            try {
                                                vertex.P1(nativeFloatBuffer12);
                                            } catch (Throwable th5) {
                                                th = th5;
                                                nativeFloatBuffer11 = nativeFloatBuffer20;
                                                nativeFloatBuffer9 = nativeFloatBuffer23;
                                                if (nativeFloatBuffer9 != null) {
                                                }
                                                if (nativeFloatBuffer11 != null) {
                                                }
                                                if (nativeFloatBuffer12 != null) {
                                                }
                                                if (nativeFloatBuffer10 != null) {
                                                }
                                                if (nativeFloatBuffer7 != null) {
                                                }
                                                if (nativeFloatBuffer6 != null) {
                                                }
                                                nativeIntBuffer2.destroyImmediate();
                                                nativeFloatBuffer8.destroyImmediate();
                                                throw th;
                                            }
                                        }
                                        nativeFloatBuffer11 = nativeFloatBuffer20;
                                        if (nativeFloatBuffer11 != null) {
                                            try {
                                                vertex.s2(nativeFloatBuffer11);
                                            } catch (Throwable th6) {
                                                th = th6;
                                                nativeFloatBuffer9 = nativeFloatBuffer23;
                                                if (nativeFloatBuffer9 != null) {
                                                }
                                                if (nativeFloatBuffer11 != null) {
                                                }
                                                if (nativeFloatBuffer12 != null) {
                                                }
                                                if (nativeFloatBuffer10 != null) {
                                                }
                                                if (nativeFloatBuffer7 != null) {
                                                }
                                                if (nativeFloatBuffer6 != null) {
                                                }
                                                nativeIntBuffer2.destroyImmediate();
                                                nativeFloatBuffer8.destroyImmediate();
                                                throw th;
                                            }
                                        }
                                        nativeFloatBuffer9 = nativeFloatBuffer23;
                                        if (nativeFloatBuffer9 != null) {
                                            try {
                                                vertex.S1(nativeFloatBuffer9);
                                            } catch (Throwable th7) {
                                                th = th7;
                                                if (nativeFloatBuffer9 != null) {
                                                }
                                                if (nativeFloatBuffer11 != null) {
                                                }
                                                if (nativeFloatBuffer12 != null) {
                                                }
                                                if (nativeFloatBuffer10 != null) {
                                                }
                                                if (nativeFloatBuffer7 != null) {
                                                }
                                                if (nativeFloatBuffer6 != null) {
                                                }
                                                nativeIntBuffer2.destroyImmediate();
                                                nativeFloatBuffer8.destroyImmediate();
                                                throw th;
                                            }
                                        }
                                        vertex.apply();
                                        return vertex;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        nativeFloatBuffer10 = nativeFloatBuffer18;
                                        nativeFloatBuffer12 = nativeFloatBuffer19;
                                        nativeFloatBuffer6 = nativeFloatBuffer21;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    nativeFloatBuffer10 = nativeFloatBuffer18;
                                    nativeFloatBuffer12 = nativeFloatBuffer19;
                                    nativeFloatBuffer6 = nativeFloatBuffer21;
                                    nativeFloatBuffer7 = nativeFloatBuffer22;
                                    nativeIntBuffer2 = nativeIntBuffer4;
                                    nativeFloatBuffer11 = nativeFloatBuffer20;
                                    nativeFloatBuffer9 = nativeFloatBuffer23;
                                    if (nativeFloatBuffer9 != null) {
                                    }
                                    if (nativeFloatBuffer11 != null) {
                                    }
                                    if (nativeFloatBuffer12 != null) {
                                    }
                                    if (nativeFloatBuffer10 != null) {
                                    }
                                    if (nativeFloatBuffer7 != null) {
                                    }
                                    if (nativeFloatBuffer6 != null) {
                                    }
                                    nativeIntBuffer2.destroyImmediate();
                                    nativeFloatBuffer8.destroyImmediate();
                                    throw th;
                                }
                            } catch (Throwable th10) {
                                th = th10;
                                nativeFloatBuffer10 = nativeFloatBuffer18;
                                nativeFloatBuffer12 = nativeFloatBuffer19;
                                nativeFloatBuffer6 = nativeFloatBuffer21;
                                nativeFloatBuffer7 = nativeFloatBuffer22;
                                nativeFloatBuffer8 = nativeFloatBuffer13;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            nativeFloatBuffer11 = nativeFloatBuffer20;
                            nativeIntBuffer2 = nativeIntBuffer4;
                            nativeFloatBuffer10 = nativeFloatBuffer18;
                            nativeFloatBuffer12 = nativeFloatBuffer19;
                            nativeFloatBuffer6 = nativeFloatBuffer14;
                            nativeFloatBuffer7 = nativeFloatBuffer15;
                            nativeFloatBuffer8 = nativeFloatBuffer13;
                            nativeFloatBuffer9 = nativeFloatBuffer5;
                        }
                    } catch (Throwable th12) {
                        th = th12;
                        nativeFloatBuffer11 = nativeFloatBuffer20;
                        nativeFloatBuffer10 = nativeFloatBuffer18;
                        nativeFloatBuffer12 = nativeFloatBuffer19;
                        nativeFloatBuffer6 = nativeFloatBuffer14;
                        nativeFloatBuffer7 = nativeFloatBuffer15;
                        nativeFloatBuffer8 = nativeFloatBuffer13;
                        nativeFloatBuffer9 = nativeFloatBuffer5;
                        nativeIntBuffer2 = nativeIntBuffer;
                    }
                } catch (Throwable th13) {
                    th = th13;
                    nativeFloatBuffer10 = nativeFloatBuffer18;
                    nativeFloatBuffer12 = nativeFloatBuffer19;
                    nativeFloatBuffer6 = nativeFloatBuffer14;
                    nativeFloatBuffer7 = nativeFloatBuffer15;
                    nativeFloatBuffer8 = nativeFloatBuffer13;
                    nativeFloatBuffer9 = nativeFloatBuffer5;
                    nativeIntBuffer2 = nativeIntBuffer;
                    nativeFloatBuffer11 = nativeFloatBuffer2;
                }
            } catch (Throwable th14) {
                th = th14;
                nativeFloatBuffer10 = nativeFloatBuffer18;
                nativeFloatBuffer6 = nativeFloatBuffer14;
                nativeFloatBuffer7 = nativeFloatBuffer15;
                nativeFloatBuffer8 = nativeFloatBuffer13;
                nativeFloatBuffer9 = nativeFloatBuffer5;
                nativeIntBuffer2 = nativeIntBuffer;
                nativeFloatBuffer11 = nativeFloatBuffer2;
                nativeFloatBuffer12 = nativeFloatBuffer4;
                if (nativeFloatBuffer9 != null) {
                    nativeFloatBuffer9.destroyImmediate();
                }
                if (nativeFloatBuffer11 != null) {
                    nativeFloatBuffer11.destroyImmediate();
                }
                if (nativeFloatBuffer12 != null) {
                    nativeFloatBuffer12.destroyImmediate();
                }
                if (nativeFloatBuffer10 != null) {
                    nativeFloatBuffer10.destroyImmediate();
                }
                if (nativeFloatBuffer7 != null) {
                    nativeFloatBuffer7.destroyImmediate();
                }
                if (nativeFloatBuffer6 != null) {
                    nativeFloatBuffer6.destroyImmediate();
                }
                nativeIntBuffer2.destroyImmediate();
                nativeFloatBuffer8.destroyImmediate();
                throw th;
            }
        } catch (Throwable th15) {
            th = th15;
            nativeFloatBuffer6 = nativeFloatBuffer14;
            nativeFloatBuffer7 = nativeFloatBuffer15;
            nativeFloatBuffer8 = nativeFloatBuffer13;
            nativeFloatBuffer9 = nativeFloatBuffer5;
            nativeFloatBuffer10 = nativeFloatBuffer3;
        }
    }

    public static Vertex c(List<a> items) {
        NativeFloatBuffer nativeFloatBuffer;
        float[] fArr;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z10;
        NativeFloatBuffer nativeFloatBuffer2;
        Vertex vertex;
        Vertex vertex2;
        if (items == null || items.isEmpty()) {
            return null;
        }
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        boolean z11 = true;
        boolean z12 = true;
        boolean z13 = true;
        boolean z14 = true;
        boolean z15 = true;
        boolean z16 = true;
        for (int i17 = 0; i17 < items.size(); i17++) {
            a aVar = items.get(i17);
            if (aVar != null && (vertex2 = aVar.f78921a) != null) {
                NativeFloatBuffer i18 = vertex2.i1();
                NativeIntBuffer V02 = aVar.f78921a.V0();
                if (i18 != null && V02 != null) {
                    i14++;
                    i15 += i18.capacity();
                    i16 += V02.capacity();
                    if (aVar.f78921a.x0() == null) {
                        z11 = false;
                    }
                    if (aVar.f78921a.F0() == null) {
                        z12 = false;
                    }
                    if (aVar.f78921a.a1() == null) {
                        z13 = false;
                    }
                    if (aVar.f78921a.i0() == null) {
                        z14 = false;
                    }
                    if (aVar.f78921a.l1() == null) {
                        z15 = false;
                    }
                    if (aVar.f78921a.m0() == null) {
                        z16 = false;
                    }
                }
            }
        }
        if (i14 == 0 || i15 == 0 || i16 == 0) {
            return null;
        }
        long[] jArr = new long[i14];
        long[] jArr2 = z11 ? new long[i14] : null;
        long[] jArr3 = z12 ? new long[i14] : null;
        long[] jArr4 = z13 ? new long[i14] : null;
        long[] jArr5 = z14 ? new long[i14] : null;
        long[] jArr6 = z15 ? new long[i14] : null;
        long[] jArr7 = z16 ? new long[i14] : null;
        long[] jArr8 = new long[i14];
        NativeFloatBuffer nativeFloatBuffer3 = new NativeFloatBuffer(i14 * 16);
        try {
            fArr = new float[16];
            i10 = 0;
            i11 = 0;
        } catch (Throwable th2) {
            th = th2;
            nativeFloatBuffer = nativeFloatBuffer3;
        }
        while (true) {
            i12 = i15;
            i13 = i16;
            if (i10 >= items.size()) {
                break;
            }
            a aVar2 = items.get(i10);
            if (aVar2 != null && (vertex = aVar2.f78921a) != null) {
                NativeFloatBuffer i19 = vertex.i1();
                NativeIntBuffer V03 = aVar2.f78921a.V0();
                if (i19 != null && V03 != null) {
                    z10 = z16;
                    NativeFloatBuffer nativeFloatBuffer4 = nativeFloatBuffer3;
                    try {
                        jArr[i11] = NativeFloatBuffer.getCriticalDirectCppPointer(i19, 0L);
                        jArr8[i11] = NativeIntBuffer.getCriticalDirectCppPointer(V03, 0L);
                        if (z11) {
                            jArr2[i11] = NativeFloatBuffer.getCriticalDirectCppPointer(aVar2.f78921a.x0(), 0L);
                        }
                        if (z12) {
                            jArr3[i11] = NativeFloatBuffer.getCriticalDirectCppPointer(aVar2.f78921a.F0(), 0L);
                        }
                        if (z13) {
                            jArr4[i11] = NativeFloatBuffer.getCriticalDirectCppPointer(aVar2.f78921a.a1(), 0L);
                        }
                        if (z14) {
                            jArr5[i11] = NativeFloatBuffer.getCriticalDirectCppPointer(aVar2.f78921a.i0(), 0L);
                        }
                        if (z15) {
                            jArr6[i11] = NativeFloatBuffer.getCriticalDirectCppPointer(aVar2.f78921a.l1(), 0L);
                        }
                        if (z10) {
                            jArr7[i11] = NativeFloatBuffer.getCriticalDirectCppPointer(aVar2.f78921a.m0(), 0L);
                        }
                        aVar2.f78922b.o(fArr);
                        int i20 = i11 * 16;
                        int i21 = 0;
                        for (int i22 = 16; i21 < i22; i22 = 16) {
                            nativeFloatBuffer = nativeFloatBuffer4;
                            try {
                                nativeFloatBuffer.set(i20 + i21, fArr[i21]);
                                i21++;
                                nativeFloatBuffer4 = nativeFloatBuffer;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                        nativeFloatBuffer2 = nativeFloatBuffer4;
                        i11++;
                        i10++;
                        nativeFloatBuffer3 = nativeFloatBuffer2;
                        z16 = z10;
                        i15 = i12;
                        i16 = i13;
                    } catch (Throwable th4) {
                        th = th4;
                        nativeFloatBuffer = nativeFloatBuffer4;
                    }
                }
            }
            z10 = z16;
            nativeFloatBuffer2 = nativeFloatBuffer3;
            i10++;
            nativeFloatBuffer3 = nativeFloatBuffer2;
            z16 = z10;
            i15 = i12;
            i16 = i13;
            th = th3;
            nativeFloatBuffer.destroyImmediate();
            throw th;
        }
        boolean z17 = z16;
        nativeFloatBuffer = nativeFloatBuffer3;
        if (i11 == 0) {
            nativeFloatBuffer.destroyImmediate();
            return null;
        }
        NativeFloatBuffer nativeFloatBuffer5 = new NativeFloatBuffer(i12);
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(i13);
        NativeFloatBuffer nativeFloatBuffer6 = z11 ? new NativeFloatBuffer(i12) : null;
        NativeFloatBuffer nativeFloatBuffer7 = z12 ? new NativeFloatBuffer(i12) : null;
        NativeFloatBuffer nativeFloatBuffer8 = z13 ? new NativeFloatBuffer((i12 / 3) * 2) : null;
        NativeFloatBuffer nativeFloatBuffer9 = z14 ? new NativeFloatBuffer(i12) : null;
        NativeFloatBuffer nativeFloatBuffer10 = z15 ? new NativeFloatBuffer(i12) : null;
        NativeFloatBuffer nativeFloatBuffer11 = z17 ? new NativeFloatBuffer(i12) : null;
        nativeBakeMeshes(jArr, jArr2, jArr3, jArr4, jArr5, jArr6, jArr7, jArr8, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer, 0L), i11, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer5, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer6, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer7, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer8, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer9, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer10, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer11, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer, 0L));
        Vertex vertex3 = new Vertex();
        vertex3.q2(nativeFloatBuffer5);
        vertex3.i2(nativeIntBuffer);
        if (nativeFloatBuffer6 != null) {
            vertex3.Y1(nativeFloatBuffer6);
        }
        if (nativeFloatBuffer7 != null) {
            vertex3.e2(nativeFloatBuffer7);
        }
        if (nativeFloatBuffer8 != null) {
            vertex3.m2(nativeFloatBuffer8);
        }
        if (nativeFloatBuffer9 != null) {
            vertex3.P1(nativeFloatBuffer9);
        }
        if (nativeFloatBuffer10 != null) {
            vertex3.s2(nativeFloatBuffer10);
        }
        if (nativeFloatBuffer11 != null) {
            vertex3.S1(nativeFloatBuffer11);
        }
        vertex3.F(false, true);
        nativeFloatBuffer.destroyImmediate();
        return vertex3;
    }

    private static native void nativeBakeMeshCurveDeform(long baseVerticesPointer, long baseNormalsPointer, long baseTangentsPointer, long baseUvsPointer, long baseColorsPointer, long baseWeightsPointer, long baseJointsPointer, long baseTrianglesPointer, long pathDataPointer, int pathCount, float spacing, float startOffset, int instanceCount, int forwardAxis, float scaleX, float scaleY, float scaleZ, float offsetX, float offsetY, float offsetZ, long outVerticesPointer, long outNormalsPointer, long outTangentsPointer, long outUvsPointer, long outColorsPointer, long outWeightsPointer, long outJointsPointer, long outTrianglesPointer);

    private static native void nativeBakeMeshInstances(long baseVerticesPointer, long baseNormalsPointer, long baseTangentsPointer, long baseUvsPointer, long baseColorsPointer, long baseWeightsPointer, long baseJointsPointer, long baseTrianglesPointer, long matricesPointer, int instanceCount, long outVerticesPointer, long outNormalsPointer, long outTangentsPointer, long outUvsPointer, long outColorsPointer, long outWeightsPointer, long outJointsPointer, long outTrianglesPointer);

    private static native void nativeBakeMeshes(long[] verticesPointers, long[] normalsPointers, long[] tangentsPointers, long[] uvsPointers, long[] colorsPointers, long[] weightsPointers, long[] jointsPointers, long[] trianglesPointers, long matricesPointer, int meshCount, long outVerticesPointer, long outNormalsPointer, long outTangentsPointer, long outUvsPointer, long outColorsPointer, long outWeightsPointer, long outJointsPointer, long outTrianglesPointer);
}
