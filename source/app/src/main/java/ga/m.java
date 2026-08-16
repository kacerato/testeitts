package ga;

import JAVARuntime.Animation;
import JAVARuntime.AnimationFile;
import JAVARuntime.AnimationMask;
import JAVARuntime.AnimationMaskFile;
import JAVARuntime.Collision;
import JAVARuntime.Color;
import JAVARuntime.ColorGradient;
import JAVARuntime.File;
import JAVARuntime.InputDialog;
import JAVARuntime.ObjectFile;
import JAVARuntime.ProjectFile;
import JAVARuntime.SoundFile;
import JAVARuntime.SpatialObject;
import JAVARuntime.Texture;
import JAVARuntime.WorldFile;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeInputDefault;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvObjectReference;
import da.C12894h;
import ec.EnumC13053a;
import gb.C13317e;
import j9.C13813a;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import org.openjdk.tools.doclint.DocLint;
import wb.C15981c;
import yb.C16165b;
import yd.C16181m;

public class m {

    public static final String f88232a = "forward";

    public static final String f88233b = "back";

    public static final String f88234c = "left";

    public static final String f88235d = "right";

    public static final String f88236e = "up";

    public static final String f88237f = "down";

    public static class a {

        public static final int[] f88238a;

        static {
            int[] iArr = new int[H.values().length];
            f88238a = iArr;
            try {
                iArr[H.BIG_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f88238a[H.FLOAT2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f88238a[H.FLOAT3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f88238a[H.DIRECTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f88238a[H.FLOAT4.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f88238a[H.QUATERNION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f88238a[H.COLOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f88238a[H.TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f88238a[H.GAME_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f88238a[H.MATERIAL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f88238a[H.FILE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f88238a[H.PROJECT_FILE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f88238a[H.OBJECT_FILE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f88238a[H.ANIMATION_FILE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f88238a[H.ANIMATION_MASK_FILE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f88238a[H.WORLD_FILE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f88238a[H.SOUND_FILE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f88238a[H.ANIMATION.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f88238a[H.ANIMATION_MASK.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f88238a[H.COLLISION.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f88238a[H.CONTACT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f88238a[H.LIST.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f88238a[H.BOOLEAN.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f88238a[H.COLOR_GRADIENT.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f88238a[H.TEXTURE.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f88238a[H.CUBEMAP.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f88238a[H.BLENDING_MODE.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f88238a[H.UV_SOURCE.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f88238a[H.INPUT_DIALOG_TYPE.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f88238a[H.POPUP_DIALOG_TYPE.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f88238a[H.NUMBER01.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f88238a[H.NUMBER.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f88238a[H.INPUT_STREAM.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
        }
    }

    public interface b {
        float a(float a10, float b10);
    }

    public interface c {
        float apply(float a10);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0061, code lost:
    
        if (r1.equals("forward") != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00d9, code lost:
    
        if (r1.equals("forward") != false) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Vector3 A(String value, GameObject owner, Vector3 out) {
        Vector3 vector3 = out == null ? new Vector3() : out;
        String n10 = n(value);
        char c10 = 5;
        if (C13317e.J(owner) && owner.J0() != null) {
            switch (n10.hashCode()) {
                case -677145915:
                    break;
                case 3739:
                    if (n10.equals(f88236e)) {
                        c10 = 3;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 3015911:
                    if (n10.equals(f88233b)) {
                        c10 = 0;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 3089570:
                    if (n10.equals(f88237f)) {
                        c10 = 4;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 3317767:
                    if (n10.equals(f88234c)) {
                        c10 = 1;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 108511772:
                    if (n10.equals("right")) {
                        c10 = 2;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                default:
                    c10 = '\uffff';
                    break;
            }
            return c10 != 0 ? c10 != 1 ? c10 != 2 ? c10 != 3 ? c10 != 4 ? owner.J0().a0(vector3) : owner.J0().Q(vector3) : owner.J0().r4(vector3) : owner.J0().S2(vector3) : owner.J0().c2(vector3) : owner.J0().B(vector3);
        }
        switch (n10.hashCode()) {
            case -677145915:
                break;
            case 3739:
                if (n10.equals(f88236e)) {
                    c10 = 3;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3015911:
                if (n10.equals(f88233b)) {
                    c10 = 0;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3089570:
                if (n10.equals(f88237f)) {
                    c10 = 4;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3317767:
                if (n10.equals(f88234c)) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
                break;
            case 108511772:
                if (n10.equals("right")) {
                    c10 = 2;
                    break;
                }
                c10 = '\uffff';
                break;
            default:
                c10 = '\uffff';
                break;
        }
        if (c10 == 0) {
            vector3.set(0.0f, 0.0f, -1.0f);
            return vector3;
        }
        if (c10 == 1) {
            vector3.set(-1.0f, 0.0f, 0.0f);
            return vector3;
        }
        if (c10 == 2) {
            vector3.set(1.0f, 0.0f, 0.0f);
            return vector3;
        }
        if (c10 == 3) {
            vector3.set(0.0f, 1.0f, 0.0f);
            return vector3;
        }
        if (c10 != 4) {
            vector3.set(0.0f, 0.0f, 1.0f);
            return vector3;
        }
        vector3.set(0.0f, -1.0f, 0.0f);
        return vector3;
    }

    public static GameObject B(NoCodeInputDefault inputDefault, GameObject owner) {
        if (inputDefault == null || inputDefault.type != H.GAME_OBJECT) {
            return null;
        }
        Object obj = inputDefault.f79016a;
        if (obj instanceof GameObject) {
            GameObject gameObject = (GameObject) obj;
            if (C13317e.J(gameObject)) {
                return gameObject;
            }
        }
        GameObject D10 = D(inputDefault.jsonData, owner);
        if (D10 != null) {
            inputDefault.f79016a = D10;
            return D10;
        }
        inputDefault.f79016a = null;
        String str = inputDefault.stringValue;
        String trim = str != null ? str.trim() : "";
        if (!trim.isEmpty()) {
            C13308d.f88188b.equalsIgnoreCase(trim);
        }
        return owner;
    }

    public static GameObject C(String providerValue, GameObject owner) {
        GameObject D10;
        String trim = providerValue != null ? providerValue.trim() : "";
        return (trim.isEmpty() || C13308d.f88188b.equalsIgnoreCase(trim) || (D10 = D(trim, owner)) == null) ? owner : D10;
    }

    public static GameObject D(String referenceJson, GameObject owner) {
        if (referenceJson != null && !referenceJson.trim().isEmpty()) {
            try {
                AdvObjectReference advObjectReference = (AdvObjectReference) X7.a.m().fromJson(referenceJson, AdvObjectReference.class);
                if (advObjectReference == null) {
                    return null;
                }
                advObjectReference.o(owner);
                return advObjectReference.k();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static Material E(String expression) {
        String trim = expression != null ? expression.trim() : "";
        if (trim.isEmpty() || C13308d.f88188b.equalsIgnoreCase(trim)) {
            return null;
        }
        return C12894h.t(trim);
    }

    public static String F(String filePath) {
        String R10;
        if (filePath == null || filePath.trim().isEmpty()) {
            return filePath;
        }
        String o10 = Tc.b.o(filePath);
        if (o10.contains("@@ASSET@@") || (R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R()) == null || R10.isEmpty()) {
            return o10;
        }
        String o11 = Tc.b.o(R10);
        if (o10.startsWith(o11)) {
            return o10;
        }
        if ((o10.length() > 2 && o10.charAt(1) == ':' && o10.charAt(2) == '/') || o10.startsWith("/")) {
            return o10;
        }
        return Tc.b.o(o11 + "/" + o10);
    }

    public static void G(ColorINT color, int index, float value) {
        if (color == null) {
            return;
        }
        float I10 = Nc.b.I(value);
        if (index == 0) {
            color.Q(I10);
            return;
        }
        if (index == 1) {
            color.P(I10);
        } else if (index != 2) {
            color.N(I10);
        } else {
            color.O(I10);
        }
    }

    public static String[] H(String expression, String prefix) {
        String trim = expression != null ? expression.trim() : "";
        if (trim.startsWith(prefix + "(") && trim.endsWith(")")) {
            trim = trim.substring(prefix.length() + 1, trim.length() - 1);
        }
        return trim.replace(DocLint.SEPARATOR, ";").split(";");
    }

    public static Animation I(Object value) {
        if (value instanceof Animation) {
            return (Animation) value;
        }
        return null;
    }

    public static AnimationFile J(Object value) {
        if (value instanceof AnimationFile) {
            return (AnimationFile) value;
        }
        if (value instanceof String) {
            return new AnimationFile(((String) value).trim());
        }
        return null;
    }

    public static AnimationMask K(Object value) {
        if (value instanceof AnimationMask) {
            return (AnimationMask) value;
        }
        return null;
    }

    public static AnimationMaskFile L(Object value) {
        if (value instanceof AnimationMaskFile) {
            return (AnimationMaskFile) value;
        }
        if (value instanceof String) {
            return new AnimationMaskFile(((String) value).trim());
        }
        return null;
    }

    public static C13306b M(Object value) {
        return value instanceof C13306b ? (C13306b) value : ((value instanceof Double) || (value instanceof Float)) ? C13306b.i(((Number) value).doubleValue()) : ((value instanceof Long) || (value instanceof Integer) || (value instanceof Short) || (value instanceof Byte)) ? C13306b.j(((Number) value).longValue()) : value instanceof Number ? C13306b.i(((Number) value).doubleValue()) : value instanceof CharSequence ? C13306b.b(String.valueOf(value)) : value instanceof Boolean ? ((Boolean) value).booleanValue() ? C13306b.j(1L) : C13306b.f88185c : value instanceof Enum ? C13306b.j(((Enum) value).ordinal()) : C13306b.f88185c;
    }

    public static EnumC13053a N(Object value) {
        return value instanceof EnumC13053a ? (EnumC13053a) value : value instanceof String ? p((String) value) : EnumC13053a.OPAQUE;
    }

    public static boolean O(Object value) {
        if (value instanceof Boolean) {
            return ((Boolean) value).booleanValue();
        }
        if (value instanceof C13306b) {
            return ((C13306b) value).compareTo(C13306b.f88185c) != 0;
        }
        if (value instanceof Number) {
            return Math.abs(((Number) value).floatValue()) > 1.0E-4f;
        }
        if (value instanceof String) {
            return q((String) value);
        }
        return false;
    }

    public static C13813a P(Object value) {
        if (value instanceof C13813a) {
            return (C13813a) value;
        }
        if (value instanceof Collision) {
            return ((Collision) value).instance;
        }
        return null;
    }

    public static ColorINT Q(Object value) {
        if (value instanceof ColorINT) {
            return ((ColorINT) value).clone();
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            ColorINT colorINT = new ColorINT();
            G(colorINT, 0, vector4.getX());
            G(colorINT, 1, vector4.getY());
            G(colorINT, 2, vector4.getZ());
            G(colorINT, 3, vector4.f());
            return colorINT;
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            ColorINT colorINT2 = new ColorINT();
            G(colorINT2, 0, quaternion.getX());
            G(colorINT2, 1, quaternion.getY());
            G(colorINT2, 2, quaternion.getZ());
            G(colorINT2, 3, quaternion.I());
            return colorINT2;
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            ColorINT colorINT3 = new ColorINT();
            G(colorINT3, 0, vector3.getX());
            G(colorINT3, 1, vector3.getY());
            G(colorINT3, 2, vector3.getZ());
            G(colorINT3, 3, 1.0f);
            return colorINT3;
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            ColorINT colorINT4 = new ColorINT();
            G(colorINT4, 0, vector2.f79838x);
            G(colorINT4, 1, vector2.f79839y);
            G(colorINT4, 2, 0.0f);
            G(colorINT4, 3, 1.0f);
            return colorINT4;
        }
        if (value instanceof String) {
            return r((String) value);
        }
        float V10 = V(value);
        ColorINT colorINT5 = new ColorINT();
        G(colorINT5, 0, V10);
        G(colorINT5, 1, V10);
        G(colorINT5, 2, V10);
        G(colorINT5, 3, 1.0f);
        return colorINT5;
    }

    public static ColorINT R(Object value, ColorINT out) {
        if (out == null) {
            out = new ColorINT();
        }
        if (value instanceof ColorINT) {
            out.K((ColorINT) value);
            return out;
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            G(out, 0, vector4.getX());
            G(out, 1, vector4.getY());
            G(out, 2, vector4.getZ());
            G(out, 3, vector4.f());
            return out;
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            G(out, 0, quaternion.getX());
            G(out, 1, quaternion.getY());
            G(out, 2, quaternion.getZ());
            G(out, 3, quaternion.I());
            return out;
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            G(out, 0, vector3.getX());
            G(out, 1, vector3.getY());
            G(out, 2, vector3.getZ());
            G(out, 3, 1.0f);
            return out;
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            G(out, 0, vector2.f79838x);
            G(out, 1, vector2.f79839y);
            G(out, 2, 0.0f);
            G(out, 3, 1.0f);
            return out;
        }
        if (value instanceof String) {
            out.K(r((String) value));
            return out;
        }
        float V10 = V(value);
        G(out, 0, V10);
        G(out, 1, V10);
        G(out, 2, V10);
        G(out, 3, 1.0f);
        return out;
    }

    public static C13813a.C1794a S(Object value) {
        if (value instanceof C13813a.C1794a) {
            return (C13813a.C1794a) value;
        }
        if (value instanceof Collision.Contact) {
            return ((Collision.Contact) value).instance;
        }
        return null;
    }

    public static FileCubemap T(Object value) {
        if (value instanceof FileCubemap) {
            return (FileCubemap) value;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [jb.a, JAVARuntime.ProjectFile] */
    public static File U(Object value) {
        if (value instanceof File) {
            return (File) value;
        }
        if (value instanceof java.io.File) {
            return new File(new java.io.File(F(((java.io.File) value).getPath())));
        }
        if (value instanceof ProjectFile) {
            String filePath = ((ProjectFile) value).getFilePath();
            if (filePath == null || filePath.trim().isEmpty()) {
                return null;
            }
            return new File(new java.io.File(F(filePath)));
        }
        if (!(value instanceof String)) {
            return null;
        }
        String trim = ((String) value).trim();
        if (trim.isEmpty()) {
            return null;
        }
        return new File(new java.io.File(F(trim)));
    }

    public static float V(Object value) {
        if (value instanceof C13306b) {
            return ((C13306b) value).e();
        }
        if (value instanceof Number) {
            return Ic.A.b(((Number) value).floatValue());
        }
        if (value instanceof String) {
            return Nc.b.v1(((String) value).trim(), 0.0f);
        }
        if (value instanceof Boolean) {
            return ((Boolean) value).booleanValue() ? 1.0f : 0.0f;
        }
        if (value instanceof Enum) {
            return ((Enum) value).ordinal();
        }
        if (value instanceof Vector2) {
            return Ic.A.b(((Vector2) value).f79838x);
        }
        if (value instanceof Vector3) {
            return Ic.A.b(((Vector3) value).getX());
        }
        if (value instanceof Vector4) {
            return Ic.A.b(((Vector4) value).getX());
        }
        if (value instanceof Quaternion) {
            return Ic.A.b(((Quaternion) value).getX());
        }
        if (value instanceof ColorINT) {
            return Ic.A.b(((ColorINT) value).w());
        }
        return 0.0f;
    }

    public static Gradient W(Object value) {
        Gradient gradient;
        return value instanceof Gradient ? (Gradient) value : (!(value instanceof ColorGradient) || (gradient = ((ColorGradient) value).instance) == null) ? d() : gradient;
    }

    public static Gradient X(Object value, Gradient out) {
        Gradient gradient;
        if (out == null) {
            out = d();
        }
        if (value instanceof Gradient) {
            out.r((Gradient) value);
            return out;
        }
        if (!(value instanceof ColorGradient) || (gradient = ((ColorGradient) value).instance) == null) {
            out.n();
            return out;
        }
        out.r(gradient);
        return out;
    }

    public static InputDialog.Type Y(Object value) {
        return value instanceof InputDialog.Type ? (InputDialog.Type) value : value instanceof String ? s((String) value) : InputDialog.Type.String;
    }

    public static InputStream Z(Object value) {
        if (value instanceof InputStream) {
            return (InputStream) value;
        }
        if (value instanceof ProjectFile) {
            return ((ProjectFile) value).getInputStream();
        }
        if (value instanceof File) {
            return X7.a.o(o(((File) value).getAbsolutePath()));
        }
        if (value instanceof java.io.File) {
            return X7.a.o(o(((java.io.File) value).getAbsolutePath()));
        }
        if (!(value instanceof String)) {
            return null;
        }
        String trim = ((String) value).trim();
        if (trim.isEmpty()) {
            return null;
        }
        return X7.a.o(o(trim));
    }

    public static Object a(Object a10, Object b10, H outputType, b op) {
        if (outputType == H.BIG_NUMBER) {
            return C13306b.i(op.a(V(a10), V(b10)));
        }
        if (outputType == H.FLOAT2) {
            Vector2 l02 = l0(a10);
            Vector2 l03 = l0(b10);
            return new Vector2(op.a(l02.f79838x, l03.f79838x), op.a(l02.f79839y, l03.f79839y));
        }
        if (outputType == H.FLOAT3) {
            Vector3 n02 = n0(a10);
            Vector3 n03 = n0(b10);
            return new Vector3(op.a(n02.getX(), n03.getX()), op.a(n02.getY(), n03.getY()), op.a(n02.getZ(), n03.getZ()));
        }
        if (outputType == H.DIRECTION) {
            Vector3 n04 = n0(a10);
            Vector3 n05 = n0(b10);
            return new Vector3(op.a(n04.getX(), n05.getX()), op.a(n04.getY(), n05.getY()), op.a(n04.getZ(), n05.getZ()));
        }
        if (outputType == H.FLOAT4) {
            Vector4 p02 = p0(a10);
            Vector4 p03 = p0(b10);
            return new Vector4(op.a(p02.getX(), p03.getX()), op.a(p02.getY(), p03.getY()), op.a(p02.getZ(), p03.getZ()), op.a(p02.f(), p03.f()));
        }
        if (outputType == H.QUATERNION) {
            Quaternion f02 = f0(a10);
            Quaternion f03 = f0(b10);
            return new Quaternion(op.a(f02.I(), f03.I()), op.a(f02.getX(), f03.getX()), op.a(f02.getY(), f03.getY()), op.a(f02.getZ(), f03.getZ()));
        }
        if (outputType != H.COLOR) {
            return Float.valueOf(op.a(V(a10), V(b10)));
        }
        ColorINT Q10 = Q(a10);
        ColorINT Q11 = Q(b10);
        return new ColorINT(Nc.b.I(op.a(Q10.r(), Q11.r())), Nc.b.I(op.a(Q10.w(), Q11.w())), Nc.b.I(op.a(Q10.u(), Q11.u())), Nc.b.I(op.a(Q10.s(), Q11.s())));
    }

    public static l a0(Object value) {
        if (value instanceof l) {
            return (l) value;
        }
        if (!(value instanceof List)) {
            return l.b(H.DYNAMIC);
        }
        List list = (List) value;
        return l.g(i(list), list);
    }

    public static Object b(Object value, H outputType, c op) {
        if (outputType == H.BIG_NUMBER) {
            return C13306b.i(op.apply(V(value)));
        }
        if (outputType == H.FLOAT2) {
            Vector2 l02 = l0(value);
            return new Vector2(op.apply(l02.f79838x), op.apply(l02.f79839y));
        }
        if (outputType == H.FLOAT3) {
            Vector3 n02 = n0(value);
            return new Vector3(op.apply(n02.getX()), op.apply(n02.getY()), op.apply(n02.getZ()));
        }
        if (outputType == H.DIRECTION) {
            Vector3 n03 = n0(value);
            return new Vector3(op.apply(n03.getX()), op.apply(n03.getY()), op.apply(n03.getZ()));
        }
        if (outputType == H.FLOAT4) {
            Vector4 p02 = p0(value);
            return new Vector4(op.apply(p02.getX()), op.apply(p02.getY()), op.apply(p02.getZ()), op.apply(p02.f()));
        }
        if (outputType == H.QUATERNION) {
            Quaternion f02 = f0(value);
            return new Quaternion(op.apply(f02.I()), op.apply(f02.getX()), op.apply(f02.getY()), op.apply(f02.getZ()));
        }
        if (outputType != H.COLOR) {
            return Float.valueOf(op.apply(V(value)));
        }
        ColorINT Q10 = Q(value);
        return new ColorINT(Nc.b.I(op.apply(Q10.r())), Nc.b.I(op.apply(Q10.w())), Nc.b.I(op.apply(Q10.u())), Nc.b.I(op.apply(Q10.s())));
    }

    public static Material b0(Object value) {
        if (value instanceof Material) {
            return (Material) value;
        }
        if (value instanceof String) {
            return E((String) value);
        }
        return null;
    }

    public static Object c(Object value, H desiredType) {
        if (desiredType == null || desiredType == H.DYNAMIC || value == null) {
            return value;
        }
        if (C13308d.n(desiredType)) {
            return C13308d.b(value, desiredType);
        }
        switch (a.f88238a[desiredType.ordinal()]) {
            case 1:
                return M(value);
            case 2:
                return l0(value);
            case 3:
            case 4:
                return n0(value);
            case 5:
                return p0(value);
            case 6:
                return f0(value);
            case 7:
                return Q(value);
            case 8:
                return i0(value);
            case 9:
                return C13308d.A(value);
            case 10:
                return b0(value);
            case 11:
                return U(value);
            case 12:
                return e0(value);
            case 13:
                return c0(value);
            case 14:
                return J(value);
            case 15:
            case 19:
            default:
                return value;
            case 16:
                return r0(value);
            case 17:
                return h0(value);
            case 18:
                return I(value);
            case 20:
                return P(value);
            case 21:
                return S(value);
            case 22:
                return a0(value);
            case 23:
                return Boolean.valueOf(O(value));
            case 24:
                return W(value);
            case 25:
                return j0(value);
            case 26:
                return T(value);
            case 27:
                return N(value);
            case 28:
                return k0(value);
            case 29:
                return Y(value);
            case 30:
                return d0(value);
            case 31:
            case 32:
                return Float.valueOf(V(value));
            case 33:
                return Z(value);
        }
    }

    public static ObjectFile c0(Object value) {
        if (value instanceof ObjectFile) {
            return (ObjectFile) value;
        }
        if (value instanceof String) {
            return new ObjectFile(((String) value).trim());
        }
        return null;
    }

    public static Gradient d() {
        Gradient gradient = new Gradient();
        gradient.n();
        return gradient;
    }

    public static G d0(Object value) {
        if (value instanceof G) {
            return (G) value;
        }
        if (value instanceof String) {
            return t((String) value);
        }
        if (value instanceof Number) {
            int intValue = ((Number) value).intValue();
            for (G g10 : G.values()) {
                if (g10.b() == intValue) {
                    return g10;
                }
            }
        }
        return G.SUCCESS;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v23, types: [JAVARuntime.ObjectFile, jb.a, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v26, types: [JAVARuntime.AnimationFile, jb.a, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v29, types: [JAVARuntime.AnimationMaskFile, jb.a, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v32, types: [JAVARuntime.WorldFile, jb.a, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v35, types: [JAVARuntime.SoundFile, jb.a, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v9, types: [jb.a, java.lang.Object, JAVARuntime.ProjectFile] */
    public static Object e(NoCodeNode node, int inputIndex, H type, NoCodeInputDefault inputDefault, GameObject owner) {
        NoCodeData noCodeData;
        GameObject C10;
        Component component = null;
        if (inputDefault == null) {
            return null;
        }
        String a10 = node instanceof F ? ((F) node).a(inputIndex, type) : null;
        if (C13308d.n(type) || C13308d.n(inputDefault.type)) {
            if (node != 0 && (noCodeData = node.f79021a) != null) {
                component = noCodeData.i0();
            }
            return C13308d.v(inputDefault, owner, component, type, a10);
        }
        switch (a.f88238a[inputDefault.type.ordinal()]) {
            case 1:
                String str = inputDefault.stringValue;
                if ((str != null && !str.trim().isEmpty()) || a10 == null || a10.trim().isEmpty()) {
                    a10 = str;
                }
                if (a10 == null || a10.trim().isEmpty()) {
                    a10 = String.valueOf(inputDefault.f79018x);
                }
                return C13306b.b(a10);
            case 2:
                return new Vector2(inputDefault.f79018x, inputDefault.f79019y);
            case 3:
                return new Vector3(inputDefault.f79018x, inputDefault.f79019y, inputDefault.f79020z);
            case 4:
                String str2 = inputDefault.stringValue;
                if (str2 != null && !str2.trim().isEmpty()) {
                    a10 = str2;
                }
                return z(a10, owner);
            case 5:
                return new Vector4(inputDefault.f79018x, inputDefault.f79019y, inputDefault.f79020z, inputDefault.f79017w);
            case 6:
                return new Quaternion(inputDefault.f79017w, inputDefault.f79018x, inputDefault.f79019y, inputDefault.f79020z);
            case 7:
                return new ColorINT(inputDefault.f79017w, inputDefault.f79018x, inputDefault.f79019y, inputDefault.f79020z);
            case 8:
                String str3 = inputDefault.stringValue;
                return str3 != null ? str3 : "";
            case 9:
                GameObject B10 = B(inputDefault, owner);
                return B10 != null ? B10 : (a10 == null || (C10 = C(a10, owner)) == null) ? owner : C10;
            case 10:
                return E(inputDefault.stringValue);
            case 11:
                String str4 = inputDefault.fileIPP;
                if (str4 == null) {
                    str4 = "";
                }
                if (str4.isEmpty()) {
                    return null;
                }
                File U10 = U(str4);
                Object obj = inputDefault.f79016a;
                if (obj instanceof File) {
                    File file = (File) obj;
                    String absolutePath = file.getAbsolutePath();
                    if (absolutePath == null) {
                        absolutePath = "";
                    }
                    if (absolutePath.equals(U10 != null ? U10.getAbsolutePath() : "")) {
                        return file;
                    }
                }
                inputDefault.f79016a = U10;
                return U10;
            case 12:
                String str5 = inputDefault.fileIPP;
                if (str5 == null) {
                    str5 = "";
                }
                if (str5.isEmpty()) {
                    return null;
                }
                String t10 = Tc.b.t(str5);
                if (t10 == null || t10.isEmpty() || !t10.startsWith(".")) {
                    t10 = ".txt";
                }
                Object obj2 = inputDefault.f79016a;
                if (obj2 instanceof ProjectFile) {
                    ?? r62 = (ProjectFile) obj2;
                    String filePath = r62.getFilePath();
                    if ((filePath != null ? filePath : "").equals(str5)) {
                        return r62;
                    }
                }
                ProjectFile projectFile = new ProjectFile(t10, str5);
                inputDefault.f79016a = projectFile;
                return projectFile;
            case 13:
                String str6 = inputDefault.fileIPP;
                if (str6 == null) {
                    str6 = "";
                }
                Object obj3 = inputDefault.f79016a;
                if (!(obj3 instanceof ObjectFile)) {
                    ObjectFile objectFile = new ObjectFile(str6);
                    inputDefault.f79016a = objectFile;
                    return objectFile;
                }
                ?? r32 = (ObjectFile) obj3;
                String filePath2 = r32.getFilePath();
                if ((filePath2 != null ? filePath2 : "").equals(str6)) {
                    return r32;
                }
                r32.setFilePath(str6);
                return r32;
            case 14:
                String str7 = inputDefault.fileIPP;
                if (str7 == null) {
                    str7 = "";
                }
                Object obj4 = inputDefault.f79016a;
                if (!(obj4 instanceof AnimationFile)) {
                    AnimationFile animationFile = new AnimationFile(str7);
                    inputDefault.f79016a = animationFile;
                    return animationFile;
                }
                ?? r33 = (AnimationFile) obj4;
                String filePath3 = r33.getFilePath();
                if ((filePath3 != null ? filePath3 : "").equals(str7)) {
                    return r33;
                }
                r33.setFilePath(str7);
                return r33;
            case 15:
                String str8 = inputDefault.fileIPP;
                if (str8 == null) {
                    str8 = "";
                }
                Object obj5 = inputDefault.f79016a;
                if (!(obj5 instanceof AnimationMaskFile)) {
                    AnimationMaskFile animationMaskFile = new AnimationMaskFile(str8);
                    inputDefault.f79016a = animationMaskFile;
                    return animationMaskFile;
                }
                ?? r34 = (AnimationMaskFile) obj5;
                String filePath4 = r34.getFilePath();
                if ((filePath4 != null ? filePath4 : "").equals(str8)) {
                    return r34;
                }
                r34.setFilePath(str8);
                return r34;
            case 16:
                String str9 = inputDefault.fileIPP;
                if (str9 == null) {
                    str9 = "";
                }
                Object obj6 = inputDefault.f79016a;
                if (!(obj6 instanceof WorldFile)) {
                    WorldFile worldFile = new WorldFile(str9);
                    inputDefault.f79016a = worldFile;
                    return worldFile;
                }
                ?? r35 = (WorldFile) obj6;
                String filePath5 = r35.getFilePath();
                if ((filePath5 != null ? filePath5 : "").equals(str9)) {
                    return r35;
                }
                r35.setFilePath(str9);
                return r35;
            case 17:
                String str10 = inputDefault.fileIPP;
                if (str10 == null) {
                    str10 = "";
                }
                Object obj7 = inputDefault.f79016a;
                if (!(obj7 instanceof SoundFile)) {
                    SoundFile soundFile = new SoundFile(str10);
                    inputDefault.f79016a = soundFile;
                    return soundFile;
                }
                ?? r36 = (SoundFile) obj7;
                String filePath6 = r36.getFilePath();
                if ((filePath6 != null ? filePath6 : "").equals(str10)) {
                    return r36;
                }
                r36.setFilePath(str10);
                return r36;
            case 18:
            case 19:
            case 20:
            case 21:
                return null;
            case 22:
                return l.b(H.DYNAMIC);
            case 23:
                return Boolean.valueOf(q(inputDefault.stringValue));
            case 24:
                return d();
            case 25:
                String str11 = inputDefault.fileIPP;
                if (str11 != null && !str11.isEmpty()) {
                    Object obj8 = inputDefault.f79016a;
                    if (obj8 instanceof ub.p) {
                        return obj8;
                    }
                    ub.g u10 = C16165b.u(inputDefault.fileIPP);
                    if (u10 != null) {
                        inputDefault.f79016a = u10;
                        return u10;
                    }
                }
                return C16165b.f130161g;
            case 26:
                String str12 = inputDefault.fileIPP;
                if (str12 == null || str12.isEmpty()) {
                    return null;
                }
                return C15981c.m(inputDefault.fileIPP);
            case 27:
                return p(inputDefault.stringValue);
            case 28:
                return v(inputDefault.stringValue);
            case 29:
                return s(inputDefault.stringValue);
            case 30:
                return t(inputDefault.stringValue);
            default:
                return Float.valueOf(inputDefault.f79018x);
        }
    }

    public static ProjectFile e0(Object value) {
        if (value instanceof ProjectFile) {
            return (ProjectFile) value;
        }
        String str = ".txt";
        if (value instanceof File) {
            String o10 = o(((File) value).getAbsolutePath());
            String t10 = Tc.b.t(o10);
            if (t10 != null && !t10.isEmpty() && t10.startsWith(".")) {
                str = t10;
            }
            return new ProjectFile(str, o10);
        }
        if (value instanceof java.io.File) {
            String o11 = o(((java.io.File) value).getAbsolutePath());
            String t11 = Tc.b.t(o11);
            if (t11 != null && !t11.isEmpty() && t11.startsWith(".")) {
                str = t11;
            }
            return new ProjectFile(str, o11);
        }
        if (!(value instanceof String)) {
            return null;
        }
        String o12 = o(((String) value).trim());
        if (o12.isEmpty()) {
            return null;
        }
        String t12 = Tc.b.t(o12);
        if (t12 != null && !t12.isEmpty() && t12.startsWith(".")) {
            str = t12;
        }
        return new ProjectFile(str, o12);
    }

    public static Object f(H type, GameObject owner) {
        Float valueOf = Float.valueOf(0.0f);
        if (type == null) {
            return valueOf;
        }
        if (C13308d.n(type)) {
            return C13308d.e(owner, type);
        }
        int i10 = a.f88238a[type.ordinal()];
        if (i10 != 33) {
            switch (i10) {
                case 1:
                    return C13306b.f88185c;
                case 2:
                    return new Vector2();
                case 3:
                    return new Vector3();
                case 4:
                    return z("forward", owner);
                case 5:
                    return new Vector4();
                case 6:
                    return new Quaternion();
                case 7:
                    return new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);
                case 8:
                    return "";
                case 9:
                    return owner;
                case 10:
                    return new Material();
                case 11:
                case 12:
                    break;
                case 13:
                    return new ObjectFile();
                case 14:
                    return new AnimationFile();
                case 15:
                    return new AnimationMaskFile();
                case 16:
                    return new WorldFile();
                case 17:
                    return new SoundFile();
                case 18:
                case 19:
                case 20:
                case 21:
                    return null;
                case 22:
                    return l.b(H.DYNAMIC);
                case 23:
                    return Boolean.FALSE;
                case 24:
                    return d();
                case 25:
                    return C16165b.f130161g;
                case 26:
                    return null;
                case 27:
                    return EnumC13053a.OPAQUE;
                case 28:
                    return cc.e.Vertex;
                case 29:
                    return InputDialog.Type.String;
                case 30:
                    return G.SUCCESS;
                default:
                    return valueOf;
            }
        }
        return null;
    }

    public static Quaternion f0(Object value) {
        if (value instanceof Quaternion) {
            return ((Quaternion) value).clone();
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            return new Quaternion(vector4.f(), vector4.getX(), vector4.getY(), vector4.getZ());
        }
        if (value instanceof String) {
            Vector4 y10 = y((String) value);
            return new Quaternion(y10.f(), y10.getX(), y10.getY(), y10.getZ());
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            Quaternion quaternion = new Quaternion();
            quaternion.v(vector3.getX(), vector3.getY(), vector3.getZ());
            return quaternion;
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            Quaternion quaternion2 = new Quaternion();
            quaternion2.v(vector2.f79838x, vector2.f79839y, 0.0f);
            return quaternion2;
        }
        if (value instanceof ColorINT) {
            ColorINT colorINT = (ColorINT) value;
            return new Quaternion(colorINT.r(), colorINT.w(), colorINT.u(), colorINT.s());
        }
        float V10 = V(value);
        return new Quaternion(V10, V10, V10, V10);
    }

    public static String g(float value) {
        return String.valueOf(value);
    }

    public static Quaternion g0(Object value, Quaternion out) {
        if (out == null) {
            out = new Quaternion();
        }
        if (value instanceof Quaternion) {
            out.u0((Quaternion) value);
            return out;
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            out.t0(vector4.f(), vector4.getX(), vector4.getY(), vector4.getZ());
            return out;
        }
        if (value instanceof String) {
            Vector4 y10 = y((String) value);
            out.t0(y10.f(), y10.getX(), y10.getY(), y10.getZ());
            return out;
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            out.v(vector3.getX(), vector3.getY(), vector3.getZ());
            return out;
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            out.v(vector2.f79838x, vector2.f79839y, 0.0f);
            return out;
        }
        if (value instanceof ColorINT) {
            ColorINT colorINT = (ColorINT) value;
            out.t0(colorINT.r(), colorINT.w(), colorINT.u(), colorINT.s());
            return out;
        }
        float V10 = V(value);
        out.t0(V10, V10, V10, V10);
        return out;
    }

    public static float h(ColorINT color, int index) {
        if (color == null) {
            return 0.0f;
        }
        return index != 0 ? index != 1 ? index != 2 ? color.r() : color.s() : color.u() : color.w();
    }

    public static SoundFile h0(Object value) {
        if (value instanceof SoundFile) {
            return (SoundFile) value;
        }
        if (value instanceof String) {
            return new SoundFile(((String) value).trim());
        }
        return null;
    }

    public static H i(List<?> list) {
        if (list == null) {
            return H.DYNAMIC;
        }
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            H j10 = j(it.next());
            if (j10 != H.DYNAMIC) {
                return j10;
            }
        }
        return H.DYNAMIC;
    }

    /* JADX WARN: Type inference failed for: r3v11, types: [JAVARuntime.ObjectFile, jb.a] */
    /* JADX WARN: Type inference failed for: r3v13, types: [jb.a, JAVARuntime.ProjectFile] */
    /* JADX WARN: Type inference failed for: r3v9, types: [JAVARuntime.WorldFile, jb.a] */
    public static String i0(Object value) {
        if (value == null) {
            return "";
        }
        if (value instanceof JAVARuntime.Component) {
            return C13308d.p((JAVARuntime.Component) value);
        }
        if (value instanceof C13306b) {
            return ((C13306b) value).h();
        }
        if (value instanceof String) {
            return (String) value;
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            return g(vector2.f79838x) + ";" + g(vector2.f79839y);
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            return g(vector3.getX()) + ";" + g(vector3.getY()) + ";" + g(vector3.getZ());
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            return g(vector4.getX()) + ";" + g(vector4.getY()) + ";" + g(vector4.getZ()) + ";" + g(vector4.f());
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            return g(quaternion.getX()) + ";" + g(quaternion.getY()) + ";" + g(quaternion.getZ()) + ";" + g(quaternion.I());
        }
        if (value instanceof ColorINT) {
            return ((ColorINT) value).z(false);
        }
        if (value instanceof Material) {
            return ((Material) value).getFile();
        }
        if (value instanceof File) {
            return ((File) value).getAbsolutePath();
        }
        if (value instanceof ProjectFile) {
            return ((ProjectFile) value).getFilePath();
        }
        if (value instanceof ObjectFile) {
            return ((ObjectFile) value).getFilePath();
        }
        if (value instanceof WorldFile) {
            return ((WorldFile) value).getFilePath();
        }
        if (value instanceof C13813a) {
            return value.toString();
        }
        if (value instanceof C13813a.C1794a) {
            return String.valueOf(value);
        }
        if (!(value instanceof l)) {
            return ((value instanceof Boolean) || (value instanceof Enum)) ? String.valueOf(value) : String.valueOf(value);
        }
        return "List(" + ((l) value).i() + ")";
    }

    public static H j(Object value) {
        if (value == null) {
            return H.DYNAMIC;
        }
        if (value instanceof Boolean) {
            return H.BOOLEAN;
        }
        if (value instanceof C13306b) {
            return H.BIG_NUMBER;
        }
        if ((value instanceof Double) || (value instanceof Long)) {
            return H.BIG_NUMBER;
        }
        if (value instanceof Number) {
            return H.NUMBER;
        }
        if (value instanceof CharSequence) {
            return H.TEXT;
        }
        if ((value instanceof Vector2) || (value instanceof JAVARuntime.Vector2)) {
            return H.FLOAT2;
        }
        if ((value instanceof Vector3) || (value instanceof JAVARuntime.Vector3)) {
            return H.FLOAT3;
        }
        if ((value instanceof Vector4) || (value instanceof JAVARuntime.Vector4)) {
            return H.FLOAT4;
        }
        if ((value instanceof Quaternion) || (value instanceof JAVARuntime.Quaternion)) {
            return H.QUATERNION;
        }
        if ((value instanceof ColorINT) || (value instanceof Color)) {
            return H.COLOR;
        }
        if ((value instanceof Gradient) || (value instanceof ColorGradient)) {
            return H.COLOR_GRADIENT;
        }
        if ((value instanceof GameObject) || (value instanceof SpatialObject)) {
            return H.GAME_OBJECT;
        }
        if ((value instanceof Material) || (value instanceof JAVARuntime.Material)) {
            return H.MATERIAL;
        }
        if ((value instanceof File) || (value instanceof java.io.File)) {
            return H.FILE;
        }
        if (value instanceof ProjectFile) {
            return H.PROJECT_FILE;
        }
        if (value instanceof InputStream) {
            return H.INPUT_STREAM;
        }
        if ((value instanceof ub.p) || (value instanceof Texture)) {
            return H.TEXTURE;
        }
        boolean z10 = value instanceof ObjectFile;
        if (z10 || z10) {
            return H.OBJECT_FILE;
        }
        if (value instanceof AnimationFile) {
            return H.ANIMATION_FILE;
        }
        if (value instanceof AnimationMaskFile) {
            return H.ANIMATION_MASK_FILE;
        }
        boolean z11 = value instanceof WorldFile;
        if (z11 || z11) {
            return H.WORLD_FILE;
        }
        boolean z12 = value instanceof SoundFile;
        return (z12 || z12) ? H.SOUND_FILE : value instanceof Animation ? H.ANIMATION : value instanceof AnimationMask ? H.ANIMATION_MASK : ((value instanceof C13813a) || (value instanceof Collision)) ? H.COLLISION : ((value instanceof C13813a.C1794a) || (value instanceof Collision.Contact)) ? H.CONTACT : value instanceof EnumC13053a ? H.BLENDING_MODE : value instanceof cc.e ? H.UV_SOURCE : value instanceof InputDialog.Type ? H.INPUT_DIALOG_TYPE : value instanceof G ? H.POPUP_DIALOG_TYPE : ((value instanceof l) || (value instanceof List)) ? H.LIST : value instanceof JAVARuntime.Component ? C13308d.m((JAVARuntime.Component) value) : H.DYNAMIC;
    }

    public static ub.p j0(Object value) {
        if (value instanceof ub.p) {
            return (ub.p) value;
        }
        return null;
    }

    public static H k(Object value) {
        return j(value);
    }

    public static cc.e k0(Object value) {
        return value instanceof cc.e ? (cc.e) value : value instanceof String ? v((String) value) : cc.e.Vertex;
    }

    public static boolean l(String value) {
        if (value == null) {
            return false;
        }
        String trim = value.trim();
        return "forward".equalsIgnoreCase(trim) || f88233b.equalsIgnoreCase(trim) || f88234c.equalsIgnoreCase(trim) || "right".equalsIgnoreCase(trim) || f88236e.equalsIgnoreCase(trim) || f88237f.equalsIgnoreCase(trim);
    }

    public static Vector2 l0(Object value) {
        if (value instanceof Vector2) {
            return new Vector2((Vector2) value);
        }
        if (value instanceof String) {
            return w((String) value);
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            return new Vector2(vector3.getX(), vector3.getY());
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            return new Vector2(vector4.getX(), vector4.getY());
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            return new Vector2(quaternion.getX(), quaternion.getY());
        }
        if (value instanceof ColorINT) {
            ColorINT colorINT = (ColorINT) value;
            return new Vector2(h(colorINT, 0), h(colorINT, 1));
        }
        float V10 = V(value);
        return new Vector2(V10, V10);
    }

    public static l m(H itemType, List<?> items) {
        return l.g(itemType, items);
    }

    public static Vector2 m0(Object value, Vector2 out) {
        if (out == null) {
            out = new Vector2();
        }
        if (value instanceof Vector2) {
            out.x0((Vector2) value);
            return out;
        }
        if (value instanceof String) {
            out.x0(w((String) value));
            return out;
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            out.w0(vector3.getX(), vector3.getY());
            return out;
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            out.w0(vector4.getX(), vector4.getY());
            return out;
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            out.w0(quaternion.getX(), quaternion.getY());
            return out;
        }
        if (value instanceof ColorINT) {
            ColorINT colorINT = (ColorINT) value;
            out.w0(h(colorINT, 0), h(colorINT, 1));
            return out;
        }
        float V10 = V(value);
        out.w0(V10, V10);
        return out;
    }

    public static String n(String value) {
        if (value == null) {
            return "forward";
        }
        String trim = value.trim();
        return f88233b.equalsIgnoreCase(trim) ? f88233b : f88234c.equalsIgnoreCase(trim) ? f88234c : "right".equalsIgnoreCase(trim) ? "right" : f88236e.equalsIgnoreCase(trim) ? f88236e : f88237f.equalsIgnoreCase(trim) ? f88237f : "forward";
    }

    public static Vector3 n0(Object value) {
        if (value instanceof Vector3) {
            return new Vector3((Vector3) value);
        }
        if (value instanceof String) {
            return x((String) value);
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            return new Vector3(vector2.f79838x, vector2.f79839y, 0.0f);
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            return new Vector3(vector4.getX(), vector4.getY(), vector4.getZ());
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            return new Vector3(quaternion.getX(), quaternion.getY(), quaternion.getZ());
        }
        if (value instanceof ColorINT) {
            ColorINT colorINT = (ColorINT) value;
            return new Vector3(h(colorINT, 0), h(colorINT, 1), h(colorINT, 2));
        }
        float V10 = V(value);
        return new Vector3(V10, V10, V10);
    }

    public static String o(String filePath) {
        if (filePath != null && !filePath.trim().isEmpty()) {
            filePath = Tc.b.o(filePath);
            String R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R();
            if (R10 != null && !R10.isEmpty()) {
                String o10 = Tc.b.o(R10);
                if (filePath.startsWith(o10)) {
                    filePath = filePath.substring(o10.length());
                    while (filePath.startsWith("/")) {
                        filePath = filePath.substring(1);
                    }
                }
            }
        }
        return filePath;
    }

    public static Vector3 o0(Object value, Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        if (value instanceof Vector3) {
            out.set((Vector3) value);
            return out;
        }
        if (value instanceof String) {
            out.set(x((String) value));
            return out;
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            out.set(vector2.f79838x, vector2.f79839y, 0.0f);
            return out;
        }
        if (value instanceof Vector4) {
            Vector4 vector4 = (Vector4) value;
            out.set(vector4.getX(), vector4.getY(), vector4.getZ());
            return out;
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            out.set(quaternion.getX(), quaternion.getY(), quaternion.getZ());
            return out;
        }
        if (value instanceof ColorINT) {
            ColorINT colorINT = (ColorINT) value;
            out.set(h(colorINT, 0), h(colorINT, 1), h(colorINT, 2));
            return out;
        }
        float V10 = V(value);
        out.set(V10, V10, V10);
        return out;
    }

    public static EnumC13053a p(String expression) {
        String trim = expression != null ? expression.trim() : "";
        if (trim.isEmpty()) {
            return EnumC13053a.OPAQUE;
        }
        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
            if (enumC13053a.name().equalsIgnoreCase(trim)) {
                return enumC13053a;
            }
        }
        return EnumC13053a.OPAQUE;
    }

    public static Vector4 p0(Object value) {
        if (value instanceof Vector4) {
            return ((Vector4) value).clone();
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            return new Vector4(quaternion.getX(), quaternion.getY(), quaternion.getZ(), quaternion.I());
        }
        if (value instanceof String) {
            return y((String) value);
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            return new Vector4(vector3.getX(), vector3.getY(), vector3.getZ(), 0.0f);
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            return new Vector4(vector2.f79838x, vector2.f79839y, 0.0f, 0.0f);
        }
        if (value instanceof ColorINT) {
            ColorINT colorINT = (ColorINT) value;
            return new Vector4(h(colorINT, 0), h(colorINT, 1), h(colorINT, 2), h(colorINT, 3));
        }
        float V10 = V(value);
        return new Vector4(V10, V10, V10, V10);
    }

    public static boolean q(String expression) {
        String trim = expression != null ? expression.trim() : "";
        if (trim.isEmpty()) {
            return false;
        }
        if ("1".equals(trim)) {
            return true;
        }
        if ("0".equals(trim)) {
            return false;
        }
        return Boolean.parseBoolean(trim);
    }

    public static Vector4 q0(Object value, Vector4 out) {
        if (out == null) {
            out = new Vector4();
        }
        if (value instanceof Vector4) {
            out.l((Vector4) value);
            return out;
        }
        if (value instanceof Quaternion) {
            Quaternion quaternion = (Quaternion) value;
            out.j(quaternion.getX(), quaternion.getY(), quaternion.getZ(), quaternion.I());
            return out;
        }
        if (value instanceof String) {
            out.l(y((String) value));
            return out;
        }
        if (value instanceof Vector3) {
            Vector3 vector3 = (Vector3) value;
            out.j(vector3.getX(), vector3.getY(), vector3.getZ(), 0.0f);
            return out;
        }
        if (value instanceof Vector2) {
            Vector2 vector2 = (Vector2) value;
            out.j(vector2.f79838x, vector2.f79839y, 0.0f, 0.0f);
            return out;
        }
        if (value instanceof ColorINT) {
            ColorINT colorINT = (ColorINT) value;
            out.j(h(colorINT, 0), h(colorINT, 1), h(colorINT, 2), h(colorINT, 3));
            return out;
        }
        float V10 = V(value);
        out.j(V10, V10, V10, V10);
        return out;
    }

    public static ColorINT r(String expression) {
        String trim = expression != null ? expression.trim() : "";
        if (trim.isEmpty()) {
            return new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);
        }
        if (trim.startsWith(C16181m.f130230g)) {
            return new ColorINT(trim);
        }
        if (trim.startsWith("float4(")) {
            Vector4 y10 = y(trim);
            return new ColorINT(y10.f(), y10.getX(), y10.getY(), y10.getZ());
        }
        if (trim.startsWith("float3(")) {
            Vector3 x10 = x(trim);
            return new ColorINT(1.0f, x10.getX(), x10.getY(), x10.getZ());
        }
        float v12 = Nc.b.v1(trim, Float.NaN);
        return !Float.isNaN(v12) ? new ColorINT(1.0f, v12, v12, v12) : new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);
    }

    public static WorldFile r0(Object value) {
        if (value instanceof WorldFile) {
            return (WorldFile) value;
        }
        if (value instanceof String) {
            return new WorldFile(((String) value).trim());
        }
        return null;
    }

    public static InputDialog.Type s(String expression) {
        String trim = expression != null ? expression.trim() : "";
        if (trim.isEmpty()) {
            return InputDialog.Type.String;
        }
        for (InputDialog.Type type : InputDialog.Type.valuesCustom()) {
            if (type.name().equalsIgnoreCase(trim)) {
                return type;
            }
        }
        return InputDialog.Type.String;
    }

    public static G t(String expression) {
        String trim = expression != null ? expression.trim() : "";
        if (trim.isEmpty()) {
            return G.SUCCESS;
        }
        for (G g10 : G.values()) {
            if (g10.name().equalsIgnoreCase(trim)) {
                return g10;
            }
        }
        return G.SUCCESS;
    }

    public static Object u(String expression, H type, GameObject owner, Component ownerComponent) {
        if (expression == null || expression.trim().isEmpty()) {
            return f(type, owner);
        }
        if (C13308d.n(type)) {
            return C13308d.w(expression, owner, ownerComponent, type);
        }
        try {
            switch (a.f88238a[type.ordinal()]) {
                case 1:
                    return C13306b.b(expression.trim());
                case 2:
                    return w(expression);
                case 3:
                    return x(expression);
                case 4:
                    return z(expression, owner);
                case 5:
                    return y(expression);
                case 6:
                    if (!expression.trim().startsWith("float3(")) {
                        return f0(y(expression));
                    }
                    Vector3 x10 = x(expression);
                    Quaternion quaternion = new Quaternion();
                    quaternion.v(x10.getX(), x10.getY(), x10.getZ());
                    return quaternion;
                case 7:
                    return r(expression);
                case 8:
                case 9:
                    return expression;
                case 10:
                    return E(expression);
                case 11:
                case 12:
                case 14:
                case 15:
                case 18:
                case 19:
                case 24:
                default:
                    return Float.valueOf(Float.parseFloat(expression.trim()));
                case 13:
                    return new ObjectFile(expression.trim());
                case 16:
                    return new WorldFile(expression.trim());
                case 17:
                    return new SoundFile(expression.trim());
                case 20:
                case 21:
                    return null;
                case 22:
                    return l.b(H.DYNAMIC);
                case 23:
                    return Boolean.valueOf(q(expression));
                case 25:
                    if (expression.trim().isEmpty()) {
                        return null;
                    }
                    return C16165b.u(expression.trim());
                case 26:
                    if (expression.trim().isEmpty()) {
                        return null;
                    }
                    return C15981c.m(expression.trim());
                case 27:
                    return p(expression);
                case 28:
                    return v(expression);
                case 29:
                    return s(expression);
                case 30:
                    return t(expression);
            }
        } catch (Exception unused) {
            return f(type, owner);
        }
    }

    public static cc.e v(String expression) {
        String trim = expression != null ? expression.trim() : "";
        if (trim.isEmpty()) {
            return cc.e.Vertex;
        }
        for (cc.e eVar : cc.e.values()) {
            if (eVar.name().equalsIgnoreCase(trim)) {
                return eVar;
            }
        }
        return cc.e.Vertex;
    }

    public static Vector2 w(String expression) {
        String[] H10 = H(expression, "float2");
        if (H10.length != 1) {
            return new Vector2(Nc.b.v1(H10[0].trim(), 0.0f), Nc.b.v1(H10[1].trim(), 0.0f));
        }
        float v12 = Nc.b.v1(H10[0].trim(), 0.0f);
        return new Vector2(v12, v12);
    }

    public static Vector3 x(String expression) {
        String[] H10 = H(expression, "float3");
        if (H10.length != 1) {
            return new Vector3(Nc.b.v1(H10[0].trim(), 0.0f), Nc.b.v1(H10[1].trim(), 0.0f), Nc.b.v1(H10[2].trim(), 0.0f));
        }
        float v12 = Nc.b.v1(H10[0].trim(), 0.0f);
        return new Vector3(v12, v12, v12);
    }

    public static Vector4 y(String expression) {
        String[] H10 = H(expression, "float4");
        if (H10.length != 1) {
            return new Vector4(Nc.b.v1(H10[0].trim(), 0.0f), Nc.b.v1(H10[1].trim(), 0.0f), Nc.b.v1(H10[2].trim(), 0.0f), Nc.b.v1(H10[3].trim(), 0.0f));
        }
        float v12 = Nc.b.v1(H10[0].trim(), 0.0f);
        return new Vector4(v12, v12, v12, v12);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0057, code lost:
    
        if (r14.equals("forward") != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00cf, code lost:
    
        if (r14.equals("forward") != false) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Vector3 z(String value, GameObject owner) {
        String n10 = n(value);
        char c10 = 5;
        if (!C13317e.J(owner) || owner.J0() == null) {
            switch (n10.hashCode()) {
                case -677145915:
                    break;
                case 3739:
                    if (n10.equals(f88236e)) {
                        c10 = 3;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 3015911:
                    if (n10.equals(f88233b)) {
                        c10 = 0;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 3089570:
                    if (n10.equals(f88237f)) {
                        c10 = 4;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 3317767:
                    if (n10.equals(f88234c)) {
                        c10 = 1;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 108511772:
                    if (n10.equals("right")) {
                        c10 = 2;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                default:
                    c10 = '\uffff';
                    break;
            }
            return c10 != 0 ? c10 != 1 ? c10 != 2 ? c10 != 3 ? c10 != 4 ? new Vector3(0.0f, 0.0f, 1.0f) : new Vector3(0.0f, -1.0f, 0.0f) : new Vector3(0.0f, 1.0f, 0.0f) : new Vector3(1.0f, 0.0f, 0.0f) : new Vector3(-1.0f, 0.0f, 0.0f) : new Vector3(0.0f, 0.0f, -1.0f);
        }
        switch (n10.hashCode()) {
            case -677145915:
                break;
            case 3739:
                if (n10.equals(f88236e)) {
                    c10 = 3;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3015911:
                if (n10.equals(f88233b)) {
                    c10 = 0;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3089570:
                if (n10.equals(f88237f)) {
                    c10 = 4;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3317767:
                if (n10.equals(f88234c)) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
                break;
            case 108511772:
                if (n10.equals("right")) {
                    c10 = 2;
                    break;
                }
                c10 = '\uffff';
                break;
            default:
                c10 = '\uffff';
                break;
        }
        return c10 != 0 ? c10 != 1 ? c10 != 2 ? c10 != 3 ? c10 != 4 ? owner.J0().forward() : owner.J0().down() : owner.J0().up() : owner.J0().right() : owner.J0().left() : owner.J0().back();
    }
}
