package com.ardor3d.renderer;

public enum IndexMode {
    Triangles(true),
    TriangleStrip(true),
    TriangleFan(true),
    Quads(true),
    QuadStrip(true),
    Lines(false),
    LineStrip(false),
    LineLoop(false),
    Points(false);

    private final boolean _hasPolygons;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$renderer$IndexMode;

        static {
            int[] iArr = new int[IndexMode.values().length];
            $SwitchMap$com$ardor3d$renderer$IndexMode = iArr;
            try {
                iArr[IndexMode.Triangles.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.TriangleStrip.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.TriangleFan.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Quads.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.QuadStrip.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Lines.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.LineStrip.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.LineLoop.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Points.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    IndexMode(boolean z10) {
        this._hasPolygons = z10;
    }

    public static int getPrimitiveCount(IndexMode indexMode, int i10) {
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$renderer$IndexMode[indexMode.ordinal()]) {
            case 1:
                return i10 / 3;
            case 2:
            case 3:
                return i10 - 2;
            case 4:
                return i10 / 4;
            case 5:
                return (i10 / 2) - 1;
            case 6:
                return i10 / 2;
            case 7:
                return i10 - 1;
            case 8:
            case 9:
                return i10;
            default:
                throw new IllegalArgumentException("unimplemented index mode: " + ((Object) indexMode));
        }
    }

    public int getVertexCount() {
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$renderer$IndexMode[ordinal()]) {
            case 1:
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
                return 4;
            case 6:
            case 7:
            case 8:
                return 2;
            case 9:
                return 1;
            default:
                throw new IllegalArgumentException("Unhandled type: " + ((Object) this));
        }
    }

    public boolean hasPolygons() {
        return this._hasPolygons;
    }
}
