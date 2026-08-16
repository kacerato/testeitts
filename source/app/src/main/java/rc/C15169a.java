package rc;

import Ic.C2626e;
import Ic.C2630i;
import JAVARuntime.Runnable;
import android.content.Context;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.inputmethod.InputMethodManager;
import androidx.exifinterface.media.ExifInterface;
import b3.s;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Input.Axis;
import com.itsmagic.engine.Engines.Input.Key;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import gb.C13317e;
import java.lang.constant.ConstantDescs;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import ob.b;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.core.JavadocConstants;
import rc.C15169a;
import sc.C15271a;
import tc.C15392a;
import tc.C15393b;
import tc.C15394c;
import tc.h;
import tc.i;
import ve.j;

public class C15169a {

    public static boolean f108786A = false;

    public static ScaleGestureDetector f108787B = null;

    public static C15271a f108788C = null;

    public static boolean f108789D = false;

    public static AtomicBoolean f108790E = null;

    public static boolean f108791F = false;

    public static final int f108792a = 300;

    public static final float f108793b = 6.0f;

    public static final int f108794c = 5;

    public static final Object f108795d;

    public static final List<C15392a> f108796e;

    public static final List<C15392a> f108797f;

    public static final Map<String, C15392a> f108798g;

    public static final List<tc.d> f108799h;

    public static final List<tc.d> f108800i;

    public static final Map<String, tc.d> f108801j;

    public static final List<h> f108802k;

    public static final List<C15393b> f108803l;

    public static final Key f108804m;

    public static final tc.d f108805n;

    public static final Vector2 f108806o;

    public static i f108807p;

    public static i f108808q;

    public static final d f108809r;

    public static final e f108810s;

    public static final f f108811t;

    public static final g f108812u;

    public static final List<R8.b> f108813v;

    public static final List<R8.b> f108814w;

    public static final List<KeyEvent> f108815x;

    public static final List<KeyEvent> f108816y;

    public static boolean f108817z;

    public class RunnableC1990a implements Runnable {
        @Override
        public void run() {
        }
    }

    public class b implements Runnable {

        public final KeyEvent f108818b;

        public b(final KeyEvent val$event) {
            this.f108818b = val$event;
        }

        @Override
        public void run() {
            synchronized (C15169a.f108795d) {
                C15169a.f108815x.add(this.f108818b);
            }
        }
    }

    public class c implements Runnable {

        public class C1991a implements b.a {
            public C1991a() {
            }

            @Override
            public boolean run() {
                boolean unused = C15169a.f108786A = false;
                return false;
            }
        }

        @Override
        public void run() {
            N7.c.E().requestFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) N7.c.o().getSystemService(Context.INPUT_METHOD_SERVICE);
            inputMethodManager.showSoftInput(N7.c.F(), 0);
            inputMethodManager.toggleSoftInput(2, 0);
            C15169a.f108790E.set(true);
            K8.a.J(new ob.b((b.a) new C1991a(), 1.0f));
        }
    }

    public static class d {

        public static final Mc.i<InputDevice> f108820b = new Mc.i<>();

        public static final List<InputDevice> f108821c = new SteppedArrayList();

        public static final List<InterfaceC1992a> f108822d = new SteppedArrayList();

        public float f108823a = 3.0f;

        public interface InterfaceC1992a {
            void a(InputDevice device);

            void b(InputDevice device);
        }

        public static void c() {
            Mc.i<InputDevice> iVar;
            List<InputDevice> list;
            synchronized (C15169a.f108795d) {
                try {
                    for (int i10 : InputDevice.getDeviceIds()) {
                        InputDevice device = InputDevice.getDevice(i10);
                        Mc.i<InputDevice> iVar2 = f108820b;
                        if (!iVar2.contains(device)) {
                            iVar2.add(device);
                            int i11 = 0;
                            while (true) {
                                List<InterfaceC1992a> list2 = f108822d;
                                if (i11 < list2.size()) {
                                    list2.get(i11).a(device);
                                    i11++;
                                }
                            }
                        }
                    }
                    int i12 = 0;
                    while (true) {
                        iVar = f108820b;
                        if (i12 >= iVar.size()) {
                            break;
                        }
                        InputDevice inputDevice = iVar.get(i12);
                        if (InputDevice.getDevice(inputDevice.getId()) == null) {
                            f108821c.add(inputDevice);
                        }
                        i12++;
                    }
                    if (!iVar.isEmpty()) {
                        int i13 = 0;
                        while (true) {
                            list = f108821c;
                            if (i13 >= list.size()) {
                                break;
                            }
                            InputDevice inputDevice2 = list.get(i13);
                            f108820b.remove(inputDevice2);
                            int i14 = 0;
                            while (true) {
                                List<InterfaceC1992a> list3 = f108822d;
                                if (i14 < list3.size()) {
                                    list3.get(i14).b(inputDevice2);
                                    i14++;
                                }
                            }
                            i13++;
                        }
                        list.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void b(InterfaceC1992a c10) {
            c10.getClass();
            synchronized (C15169a.f108795d) {
                f108822d.add(c10);
            }
        }

        public InputDevice d(int x10) {
            InputDevice inputDevice;
            synchronized (C15169a.f108795d) {
                inputDevice = f108820b.get(x10);
            }
            return inputDevice;
        }

        public int e() {
            int size;
            synchronized (C15169a.f108795d) {
                size = f108820b.size();
            }
            return size;
        }

        public void f() {
            float d10 = this.f108823a - K8.d.d();
            this.f108823a = d10;
            if (d10 <= 0.0f) {
                this.f108823a = 3.0f;
                N7.c.j0(new Runnable() {
                    @Override
                    public final void run() {
                        C15169a.d.c();
                    }
                });
            }
        }
    }

    public static class e {

        public static final float f108824i = 0.01f;

        public static final float f108825j = 0.5f;

        public static final String[] f108826k = {ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, Signature.SIG_BYTE, "X", "Y", "L1", "L2", "R1", "R2", "START", "SELECT", Signature.SIG_CHAR, Signature.SIG_BOOLEAN, "THUMBL", "THUMBR", "MODE", "DPAD_UP", "DPAD_DOWN", "DPAD_LEFT", "DPAD_RIGHT", "DPAD_CENTER"};

        public static final String[] f108827l = {"AXIS_X", "AXIS_Y", "AXIS_Z", "AXIS_RX", "AXIS_RY", "AXIS_RZ", "AXIS_HAT_X", "AXIS_HAT_Y"};

        public final Map<String, Float> f108828a = new HashMap();

        public final Map<String, Float> f108829b = new HashMap();

        public final Vector2 f108830c = new Vector2();

        public final Vector2 f108831d = new Vector2();

        public final Vector2 f108832e = new Vector2();

        public final Vector2 f108833f = new Vector2();

        public final Map<String, Boolean> f108834g = new HashMap();

        public final Map<String, C15394c> f108835h = new HashMap();

        public String[] a() {
            return (String[]) f108827l.clone();
        }

        public String[] b() {
            return (String[]) f108826k.clone();
        }

        public float c(String name) {
            float floatValue;
            synchronized (C15169a.f108795d) {
                try {
                    Float f10 = this.f108829b.get(name);
                    if (f10 == null) {
                        throw new RuntimeException("Invalid axis name");
                    }
                    floatValue = f10.floatValue();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return floatValue;
        }

        public C15394c d(String name) {
            synchronized (C15169a.f108795d) {
                try {
                    C15394c c15394c = this.f108835h.get(name);
                    if (c15394c != null) {
                        return c15394c;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public Vector2 e() {
            return this.f108831d;
        }

        public Vector2 f() {
            return this.f108833f;
        }

        public void g(MotionEvent event) {
            this.f108830c.w0(-event.getAxisValue(0), -event.getAxisValue(1));
            Vector2 vector2 = this.f108830c;
            vector2.f79838x = Nc.b.j0(vector2.f79838x, 0.01f);
            Vector2 vector22 = this.f108830c;
            vector22.f79839y = Nc.b.j0(vector22.f79839y, 0.01f);
            this.f108832e.w0(-event.getAxisValue(11), -event.getAxisValue(14));
            Vector2 vector23 = this.f108832e;
            vector23.f79838x = Nc.b.j0(vector23.f79838x, 0.01f);
            Vector2 vector24 = this.f108832e;
            vector24.f79839y = Nc.b.j0(vector24.f79839y, 0.01f);
            InputDevice device = event.getDevice();
            boolean z10 = (device == null || device.getMotionRange(15, event.getSource()) == null) ? false : true;
            boolean z11 = (device == null || device.getMotionRange(16, event.getSource()) == null) ? false : true;
            float axisValue = z10 ? event.getAxisValue(15) : 0.0f;
            float axisValue2 = z11 ? event.getAxisValue(16) : 0.0f;
            synchronized (C15169a.f108795d) {
                try {
                    this.f108828a.put("AXIS_X", Float.valueOf(-Nc.b.j0(event.getAxisValue(0), 0.01f)));
                    this.f108828a.put("AXIS_Y", Float.valueOf(-Nc.b.j0(event.getAxisValue(1), 0.01f)));
                    this.f108828a.put("AXIS_Z", Float.valueOf(-Nc.b.j0(event.getAxisValue(11), 0.01f)));
                    this.f108828a.put("AXIS_RX", Float.valueOf(-Nc.b.j0(event.getAxisValue(12), 0.01f)));
                    this.f108828a.put("AXIS_RY", Float.valueOf(-Nc.b.j0(event.getAxisValue(13), 0.01f)));
                    this.f108828a.put("AXIS_RZ", Float.valueOf(-Nc.b.j0(event.getAxisValue(14), 0.01f)));
                    if (z10) {
                        this.f108828a.put("AXIS_HAT_X", Float.valueOf(-Nc.b.j0(axisValue, 0.01f)));
                        this.f108834g.put("DPAD_LEFT", Boolean.valueOf(axisValue < -0.5f));
                        this.f108834g.put("DPAD_RIGHT", Boolean.valueOf(axisValue > 0.5f));
                    }
                    if (z11) {
                        this.f108828a.put("AXIS_HAT_Y", Float.valueOf(-Nc.b.j0(axisValue2, 0.01f)));
                        this.f108834g.put("DPAD_UP", Boolean.valueOf(axisValue2 < -0.5f));
                        this.f108834g.put("DPAD_DOWN", Boolean.valueOf(axisValue2 > 0.5f));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public boolean h(KeyEvent event, boolean keyIsDown) {
            synchronized (C15169a.f108795d) {
                try {
                    int keyCode = event.getKeyCode();
                    switch (keyCode) {
                        case 19:
                            this.f108834g.put("DPAD_UP", Boolean.valueOf(keyIsDown));
                            return true;
                        case 20:
                            this.f108834g.put("DPAD_DOWN", Boolean.valueOf(keyIsDown));
                            return true;
                        case 21:
                            this.f108834g.put("DPAD_LEFT", Boolean.valueOf(keyIsDown));
                            return true;
                        case 22:
                            this.f108834g.put("DPAD_RIGHT", Boolean.valueOf(keyIsDown));
                            return true;
                        case 23:
                            this.f108834g.put("DPAD_CENTER", Boolean.valueOf(keyIsDown));
                            return true;
                        default:
                            switch (keyCode) {
                                case 96:
                                    this.f108834g.put(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, Boolean.valueOf(keyIsDown));
                                    return true;
                                case 97:
                                    this.f108834g.put(Signature.SIG_BYTE, Boolean.valueOf(keyIsDown));
                                    return true;
                                case 98:
                                    this.f108834g.put(Signature.SIG_CHAR, Boolean.valueOf(keyIsDown));
                                    return true;
                                case 99:
                                    this.f108834g.put("X", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 100:
                                    this.f108834g.put("Y", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 101:
                                    this.f108834g.put(Signature.SIG_BOOLEAN, Boolean.valueOf(keyIsDown));
                                    return true;
                                case 102:
                                    this.f108834g.put("L1", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 103:
                                    this.f108834g.put("R1", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 104:
                                    this.f108834g.put("L2", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 105:
                                    this.f108834g.put("R2", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 106:
                                    this.f108834g.put("THUMBL", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 107:
                                    this.f108834g.put("THUMBR", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 108:
                                    this.f108834g.put("START", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 109:
                                    this.f108834g.put("SELECT", Boolean.valueOf(keyIsDown));
                                    return true;
                                case 110:
                                    this.f108834g.put("MODE", Boolean.valueOf(keyIsDown));
                                    return true;
                                default:
                                    return false;
                            }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public boolean i() {
            for (int i10 : InputDevice.getDeviceIds()) {
                InputDevice device = InputDevice.getDevice(i10);
                if (device != null) {
                    int sources = device.getSources();
                    boolean z10 = (sources & 1025) == 1025;
                    boolean z11 = (sources & 16777232) == 16777232;
                    if (z10 || z11) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void j() {
            this.f108831d.x0(this.f108830c);
            this.f108833f.x0(this.f108832e);
            synchronized (C15169a.f108795d) {
                this.f108829b.putAll(this.f108828a);
            }
            synchronized (C15169a.f108795d) {
                try {
                    for (Map.Entry<String, Boolean> entry : this.f108834g.entrySet()) {
                        C15394c c15394c = this.f108835h.get(entry.getKey());
                        if (c15394c == null) {
                            c15394c = new C15394c();
                            c15394c.f117274a = entry.getKey();
                            this.f108835h.put(entry.getKey(), c15394c);
                        }
                        boolean booleanValue = entry.getValue().booleanValue();
                        c15394c.f117276c = booleanValue;
                        if (c15394c.f117278e) {
                            c15394c.f117277d = false;
                        } else if (booleanValue && !c15394c.f117282i) {
                            float e10 = c15394c.f117283j + K8.d.e();
                            c15394c.f117283j = e10;
                            if (e10 >= 0.3f) {
                                c15394c.f117277d = true;
                                c15394c.f117282i = true;
                                c15394c.f117278e = true;
                            }
                        }
                        if (c15394c.f117275b) {
                            c15394c.f117275b = false;
                        } else if (c15394c.f117276c && !c15394c.f117280g) {
                            c15394c.f117280g = true;
                            c15394c.f117275b = true;
                        }
                        boolean z10 = c15394c.f117276c;
                        if (z10) {
                            c15394c.f117281h = false;
                        } else if (c15394c.f117279f) {
                            c15394c.f117279f = false;
                        } else if (!c15394c.f117281h) {
                            c15394c.f117279f = true;
                            c15394c.f117281h = true;
                        }
                        if (!z10 && !c15394c.f117279f) {
                            c15394c.f117280g = false;
                            c15394c.f117282i = false;
                            c15394c.f117283j = 0.0f;
                            c15394c.f117278e = false;
                            c15394c.f117277d = false;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static class f {

        public static final String f108836g = "del";

        public static final String f108837h = "enter";

        public final Map<String, c> f108838a = new TreeMap();

        public final Map<String, tc.e> f108839b = new TreeMap();

        public boolean f108840c = false;

        public boolean f108841d = false;

        public final AtomicBoolean f108842e = new AtomicBoolean();

        public final Function<String, c> f108843f = new b();

        public class RunnableC1993a implements Runnable {
            public RunnableC1993a() {
            }

            @Override
            public void run() {
                synchronized (C15169a.f108795d) {
                    for (Field field : KeyEvent.class.getDeclaredFields()) {
                        String name = field.getName();
                        if (name.startsWith("KEYCODE_")) {
                            String replace = name.replace("KEYCODE_", "");
                            try {
                                if (((tc.e) f.this.f108839b.get(replace)) == null) {
                                    tc.e eVar = new tc.e();
                                    eVar.f117287b = replace;
                                    field.setAccessible(true);
                                    eVar.f117300q = field.getInt(null);
                                    f.this.f108839b.put(replace, eVar);
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                    f.this.f108842e.set(true);
                }
            }
        }

        public class b implements Function<String, c> {
            public b() {
            }

            @Override
            public c apply(String s10) {
                return new c(false, false);
            }
        }

        public static class c {

            public boolean f108846a;

            public boolean f108847b;

            public int f108848c;

            public int f108849d;

            public c(boolean pressed, boolean uppercase) {
                this.f108846a = pressed;
                this.f108847b = uppercase;
            }
        }

        public final void c(String name, boolean pressed, boolean uppercase, int keyCode, int unicodeChar) {
            c computeIfAbsent = this.f108838a.computeIfAbsent(name, this.f108843f);
            if (computeIfAbsent != null) {
                computeIfAbsent.f108846a = pressed;
                computeIfAbsent.f108847b = uppercase;
                computeIfAbsent.f108848c = keyCode;
                computeIfAbsent.f108849d = unicodeChar;
            }
        }

        public void d(boolean pressed) {
            synchronized (C15169a.f108795d) {
                c("alt", pressed, false, 57, 0);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public String[] e() {
            LinkedList linkedList = new LinkedList();
            for (Field field : KeyEvent.class.getDeclaredFields()) {
                String name = field.getName();
                if (name.startsWith("KEYCODE_")) {
                    String replace = name.replace("KEYCODE_", "");
                    if (!replace.startsWith("tv_") && !replace.startsWith("system_") && !replace.startsWith("zenkaku_") && !replace.startsWith("language_") && !replace.startsWith("profile_") && !replace.startsWith("featured_") && !replace.startsWith("stem_") && !replace.startsWith("video_") && !replace.startsWith("pictsy") && !replace.startsWith("prog_") && !replace.startsWith("manner_") && !replace.startsWith("soft_") && !replace.startsWith("demo_") && !replace.startsWith("apost") && !replace.startsWith("calculator") && !replace.startsWith("app_switch") && !replace.startsWith("avr_") && !replace.startsWith("settings") && !replace.startsWith("muhenkan") && !replace.startsWith("explorer") && !replace.startsWith("contact") && !replace.startsWith("envelope") && !replace.startsWith("captions") && !replace.startsWith("calendar") && !replace.startsWith("button_") && !replace.startsWith("bookmark") && !replace.startsWith("unknown") && !replace.startsWith("pairing") && !replace.startsWith("endcall") && !replace.startsWith("3d_mode") && !replace.startsWith(Context.WINDOW_SERVICE) && !replace.startsWith("wakeup") && !replace.startsWith("henkan") && !replace.startsWith("camera") && !replace.startsWith("music") && !replace.startsWith("focus") && !replace.startsWith("dvr") && !replace.startsWith("tv") && !replace.startsWith("katakana_") && !replace.startsWith("navigate_")) {
                        linkedList.add(replace);
                    }
                }
            }
            String[] strArr = new String[linkedList.size()];
            for (int i10 = 0; i10 < linkedList.size(); i10++) {
                strArr[i10] = (String) linkedList.get(i10);
            }
            return strArr;
        }

        public tc.e f(String name) {
            synchronized (C15169a.f108795d) {
                try {
                    tc.e eVar = this.f108839b.get(name);
                    if (eVar != null) {
                        return eVar;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public List<tc.e> g() {
            SteppedArrayList steppedArrayList;
            synchronized (C15169a.f108795d) {
                try {
                    steppedArrayList = new SteppedArrayList();
                    for (tc.e eVar : this.f108839b.values()) {
                        if (eVar != null && eVar.f117289d) {
                            steppedArrayList.add(eVar);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return steppedArrayList;
        }

        public List<tc.e> h() {
            SteppedArrayList steppedArrayList;
            synchronized (C15169a.f108795d) {
                try {
                    steppedArrayList = new SteppedArrayList();
                    for (tc.e eVar : this.f108839b.values()) {
                        if (eVar != null && eVar.f117290e) {
                            steppedArrayList.add(eVar);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return steppedArrayList;
        }

        public List<tc.e> i() {
            SteppedArrayList steppedArrayList;
            synchronized (C15169a.f108795d) {
                try {
                    steppedArrayList = new SteppedArrayList();
                    for (tc.e eVar : this.f108839b.values()) {
                        if (eVar != null && eVar.f117293j) {
                            steppedArrayList.add(eVar);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return steppedArrayList;
        }

        public boolean j(KeyEvent event, boolean keyIsDown) {
            String str;
            String str2;
            boolean z10;
            synchronized (C15169a.f108795d) {
                try {
                    this.f108840c = (event.getMetaState() & 1048576) != 0;
                    c("alt", event.isAltPressed(), false, event.getKeyCode(), event.getUnicodeChar());
                    c("ctrl", event.isCtrlPressed(), false, event.getKeyCode(), event.getUnicodeChar());
                    c("shift", event.isShiftPressed(), false, event.getKeyCode(), event.getUnicodeChar());
                    if (event.isPrintingKey()) {
                        String valueOf = String.valueOf(event.getDisplayLabel());
                        boolean isUpperCase = Character.isUpperCase(event.getUnicodeChar());
                        int unicodeChar = event.getUnicodeChar();
                        if (unicodeChar == 33) {
                            str = "!";
                        } else if (unicodeChar == 34) {
                            str = JavadocConstants.ANCHOR_PREFIX_END;
                        } else if (unicodeChar == 40) {
                            str = "(";
                        } else if (unicodeChar == 41) {
                            str = ")";
                        } else if (unicodeChar == 58) {
                            str = s.f32937c;
                        } else if (unicodeChar == 60) {
                            str = "<";
                        } else if (unicodeChar == 62) {
                            str = ">";
                        } else if (unicodeChar == 63) {
                            str = "?";
                        } else if (unicodeChar == 94) {
                            str = "^";
                        } else if (unicodeChar != 95) {
                            switch (unicodeChar) {
                                case 36:
                                    str = "$";
                                    break;
                                case 37:
                                    str = j.f121589a;
                                    break;
                                case 38:
                                    str = "&";
                                    break;
                                default:
                                    switch (unicodeChar) {
                                        case 123:
                                            str = "{";
                                            break;
                                        case 124:
                                            str = "|";
                                            break;
                                        case 125:
                                            str = VectorFormat.DEFAULT_SUFFIX;
                                            break;
                                        case 126:
                                            str = "~";
                                            break;
                                        default:
                                            str2 = valueOf;
                                            z10 = isUpperCase;
                                            break;
                                    }
                            }
                            c(str2, keyIsDown, z10, event.getKeyCode(), event.getUnicodeChar());
                        } else {
                            str = ConstantDescs.DEFAULT_NAME;
                        }
                        str2 = str;
                        z10 = false;
                        c(str2, keyIsDown, z10, event.getKeyCode(), event.getUnicodeChar());
                    } else {
                        int keyCode = event.getKeyCode();
                        String str3 = null;
                        for (Field field : KeyEvent.class.getDeclaredFields()) {
                            String name = field.getName();
                            if (name.startsWith("KEYCODE_")) {
                                String replace = name.replace("KEYCODE_", "");
                                try {
                                    if (field.getInt(null) == keyCode) {
                                        str3 = replace;
                                    }
                                } catch (IllegalAccessException e10) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                        if (str3 != null && !str3.isEmpty()) {
                            c(str3, keyIsDown, false, event.getKeyCode(), event.getUnicodeChar());
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return false;
        }

        public boolean k(String name) {
            tc.e f10 = f(name);
            if (f10 == null) {
                return false;
            }
            return f10.f117289d;
        }

        public boolean l(String name) {
            tc.e f10 = f(name);
            if (f10 == null) {
                return false;
            }
            return f10.f117290e;
        }

        public boolean m() {
            return this.f108840c;
        }

        public boolean n(String... keys) {
            if (keys.length == 0) {
                return false;
            }
            for (String str : keys) {
                if (!C15169a.f108811t.k(str)) {
                    return false;
                }
            }
            return true;
        }

        public boolean o(String... keys) {
            if (keys.length == 0) {
                return false;
            }
            for (String str : keys) {
                f fVar = C15169a.f108811t;
                if (!fVar.l(str) && !fVar.k(str)) {
                    return false;
                }
            }
            return true;
        }

        public void p() {
            q();
            if (this.f108842e.get()) {
                synchronized (C15169a.f108795d) {
                    try {
                        for (Map.Entry<String, c> entry : this.f108838a.entrySet()) {
                            String key = entry.getKey();
                            tc.e eVar = this.f108839b.get(key);
                            if (eVar == null) {
                                eVar = new tc.e();
                                eVar.f117287b = key;
                                eVar.f117300q = entry.getValue().f108848c;
                                this.f108839b.put(key, eVar);
                            }
                            c value = entry.getValue();
                            eVar.f117290e = value.f108846a;
                            boolean z10 = value.f108847b;
                            eVar.f117294k = z10;
                            eVar.f117298o = value.f108849d;
                            if (z10) {
                                eVar.f117288c = key.toUpperCase();
                            } else {
                                eVar.f117288c = key;
                            }
                            if (eVar.f117290e) {
                                eVar.f117299p += K8.d.e();
                            } else {
                                eVar.f117299p = 0.0f;
                            }
                            if (eVar.f117292i) {
                                eVar.f117291g = false;
                            } else if (eVar.f117290e && !eVar.f117297n && eVar.f117299p >= 0.3f) {
                                eVar.f117291g = true;
                                eVar.f117297n = true;
                                eVar.f117292i = true;
                            }
                            if (eVar.f117289d) {
                                eVar.f117289d = false;
                            } else if (eVar.f117290e && !eVar.f117295l) {
                                eVar.f117295l = true;
                                eVar.f117289d = true;
                            }
                            boolean z11 = eVar.f117290e;
                            if (z11) {
                                eVar.f117296m = false;
                            } else if (eVar.f117293j) {
                                eVar.f117293j = false;
                            } else if (!eVar.f117296m) {
                                eVar.f117293j = true;
                                eVar.f117296m = true;
                            }
                            if (!z11 && !eVar.f117293j) {
                                eVar.f117295l = false;
                                eVar.f117297n = false;
                                eVar.f117299p = 0.0f;
                                eVar.f117292i = false;
                                eVar.f117291g = false;
                            }
                        }
                    } finally {
                    }
                }
            }
        }

        public void q() {
            if (this.f108841d) {
                return;
            }
            this.f108841d = true;
            this.f108839b.clear();
            O9.b.d(new RunnableC1993a());
        }
    }

    public static class g {

        public static final AtomicInteger f108850o = new AtomicInteger();

        public static final AtomicInteger f108851p = new AtomicInteger();

        public static final C2626e f108852q = new C2626e();

        public static final C2626e f108853r = new C2626e();

        public static final C2626e f108854s = new C2626e();

        public static final AtomicBoolean f108855t = new AtomicBoolean();

        public static final AtomicBoolean f108856u = new AtomicBoolean();

        public static final AtomicBoolean f108857v = new AtomicBoolean();

        public static final AtomicBoolean f108858w = new AtomicBoolean();

        public static final AtomicBoolean f108859x = new AtomicBoolean();

        public static final AtomicBoolean f108860y = new AtomicBoolean();

        public static final float f108861z = 0.5f;

        public int f108862a;

        public int f108863b;

        public boolean f108864c;

        public float f108865d;

        public float f108866e;

        public float f108867f;

        public final c f108868g;

        public final c f108869h;

        public final c f108870i;

        public final c f108871j;

        public final c f108872k;

        public final List<Component> f108873l;

        public final List<Component> f108874m;

        public boolean f108875n;

        public class C1994a implements d.InterfaceC1992a {
            public C1994a() {
            }

            @Override
            public void a(InputDevice device) {
                g.this.e();
            }

            @Override
            public void b(InputDevice device) {
                g.this.e();
            }
        }

        public class b implements Runnable {

            public final boolean f108877b;

            public b(final boolean val$shouldCapture) {
                this.f108877b = val$shouldCapture;
            }

            @Override
            public void run() {
                try {
                    if (this.f108877b) {
                        N7.c.g0();
                    } else {
                        N7.c.e0();
                    }
                } catch (Error e10) {
                    e = e10;
                    e.printStackTrace();
                } catch (Exception e11) {
                    e = e11;
                    e.printStackTrace();
                }
            }
        }

        public class c {

            public boolean f108879a;

            public boolean f108880b;

            public boolean f108881c;

            public boolean f108882d;

            public boolean f108883e;

            public boolean f108884f = false;

            public boolean f108885g = false;

            public boolean f108886h = false;

            public float f108887i;

            public c() {
            }

            public boolean a() {
                return this.f108880b;
            }

            public boolean b() {
                return this.f108883e;
            }

            public boolean c() {
                return this.f108882d;
            }

            public boolean d() {
                return this.f108879a;
            }

            public boolean e() {
                return this.f108881c;
            }

            public void f(AtomicBoolean front) {
                boolean z10 = front.get();
                this.f108879a = z10;
                if (this.f108882d) {
                    this.f108883e = false;
                } else if (z10 && !this.f108886h) {
                    float e10 = this.f108887i + K8.d.e();
                    this.f108887i = e10;
                    if (e10 >= 0.3f) {
                        this.f108883e = true;
                        this.f108886h = true;
                        this.f108882d = true;
                    }
                }
                if (this.f108880b) {
                    this.f108880b = false;
                } else if (this.f108879a && !this.f108884f) {
                    this.f108884f = true;
                    this.f108880b = true;
                }
                boolean z11 = this.f108879a;
                if (z11) {
                    this.f108885g = false;
                } else if (this.f108881c) {
                    this.f108881c = false;
                } else if (!this.f108885g) {
                    this.f108881c = true;
                    this.f108885g = true;
                }
                if (!z11 && !this.f108881c) {
                    this.f108884f = false;
                    this.f108886h = false;
                    this.f108887i = 0.0f;
                    this.f108882d = false;
                    this.f108883e = false;
                }
                if (this.f108880b || this.f108881c) {
                    g.this.f108865d = 0.0f;
                    g.this.f108866e = 0.0f;
                }
            }
        }

        public g() {
            C15169a.f108809r.b(new C1994a());
            e();
            this.f108864c = false;
            this.f108868g = new c();
            this.f108869h = new c();
            this.f108870i = new c();
            this.f108871j = new c();
            this.f108872k = new c();
            this.f108873l = new Mc.b();
            this.f108874m = new SteppedArrayList();
            this.f108875n = false;
        }

        public boolean A() {
            return this.f108869h.f108879a;
        }

        public boolean B() {
            return this.f108869h.f108881c;
        }

        public boolean C() {
            return this.f108870i.f108880b;
        }

        public boolean D() {
            return this.f108870i.f108883e;
        }

        public boolean E() {
            return this.f108870i.f108882d;
        }

        public boolean F() {
            return this.f108870i.f108879a;
        }

        public boolean G() {
            return this.f108870i.f108881c;
        }

        public boolean H() {
            return this.f108868g.f108880b;
        }

        public boolean I() {
            return this.f108868g.f108883e;
        }

        public boolean J() {
            return this.f108868g.f108882d;
        }

        public boolean K() {
            return this.f108868g.f108879a;
        }

        public boolean L() {
            return this.f108868g.f108881c;
        }

        public void M() {
            synchronized (C15169a.f108795d) {
                this.f108873l.clear();
                this.f108874m.clear();
                Q(true);
            }
        }

        public void N() {
            synchronized (C15169a.f108795d) {
                try {
                    this.f108862a = f108850o.get();
                    this.f108863b = f108851p.get();
                    if (!this.f108873l.isEmpty()) {
                        for (int i10 = 0; i10 < this.f108873l.size(); i10++) {
                            Component component = this.f108873l.get(i10);
                            if (C13317e.G(component.f79250n)) {
                                this.f108874m.add(component);
                            }
                        }
                        if (!this.f108874m.isEmpty()) {
                            for (int i11 = 0; i11 < this.f108874m.size(); i11++) {
                                this.f108873l.remove(this.f108874m.get(i11));
                            }
                            this.f108874m.clear();
                        }
                    }
                    Q(false);
                    this.f108865d = f108853r.c(0.0f) * 0.5f;
                    this.f108866e = f108854s.c(0.0f) * 0.5f;
                    this.f108867f = f108852q.c(0.0f);
                    this.f108869h.f(f108857v);
                    this.f108868g.f(f108856u);
                    this.f108870i.f(f108858w);
                    this.f108871j.f(f108859x);
                    this.f108872k.f(f108860y);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void O(Component c10) {
            synchronized (C15169a.f108795d) {
                this.f108873l.remove(c10);
                Q(false);
            }
        }

        public void P(Component c10) {
            synchronized (C15169a.f108795d) {
                this.f108873l.add(c10);
                Q(false);
            }
        }

        public final void Q(boolean forceRelease) {
            boolean z10 = (forceRelease || this.f108873l.isEmpty()) ? false : true;
            if (this.f108875n == z10) {
                return;
            }
            if (!N7.c.M()) {
                this.f108875n = false;
            } else {
                this.f108875n = z10;
                N7.c.j0(new b(z10));
            }
        }

        public void d(float delta) {
            C2626e c2626e;
            float b10;
            do {
                c2626e = f108852q;
                b10 = c2626e.b();
            } while (!c2626e.a(b10, b10 + delta));
        }

        public final void e() {
            AtomicBoolean atomicBoolean = f108855t;
            if (atomicBoolean.get()) {
                this.f108864c = true;
                atomicBoolean.set(false);
                return;
            }
            int i10 = 0;
            while (true) {
                d dVar = C15169a.f108809r;
                if (i10 >= dVar.e()) {
                    this.f108864c = false;
                    return;
                } else {
                    if (C15169a.r(dVar.d(i10).getSources())) {
                        this.f108864c = true;
                        return;
                    }
                    i10++;
                }
            }
        }

        public float f() {
            if (r()) {
                return -this.f108865d;
            }
            throw new IllegalStateException("Mouse is not being captured, please call Input.mouse.requestMouseCapture(this); before using slide!");
        }

        public float g() {
            if (r()) {
                return this.f108866e;
            }
            throw new IllegalStateException("Mouse is not being captured, please call Input.mouse.requestMouseCapture(this); before using slide!");
        }

        public float h() {
            return this.f108867f;
        }

        public int i() {
            return this.f108862a;
        }

        public int j() {
            return this.f108863b;
        }

        public boolean k() {
            return (H() || K() || L()) ? false : true;
        }

        public boolean l() {
            return this.f108871j.f108880b;
        }

        public boolean m() {
            return this.f108871j.f108883e;
        }

        public boolean n() {
            return this.f108871j.f108882d;
        }

        public boolean o() {
            return this.f108871j.f108879a;
        }

        public boolean p() {
            return this.f108871j.f108881c;
        }

        public boolean q() {
            return this.f108864c;
        }

        public boolean r() {
            boolean z10;
            synchronized (C15169a.f108795d) {
                z10 = !this.f108873l.isEmpty();
            }
            return z10;
        }

        public boolean s() {
            return this.f108872k.f108880b;
        }

        public boolean t() {
            return this.f108872k.f108883e;
        }

        public boolean u() {
            return this.f108872k.f108882d;
        }

        public boolean v() {
            return this.f108872k.f108879a;
        }

        public boolean w() {
            return this.f108872k.f108881c;
        }

        public boolean x() {
            return this.f108869h.f108880b;
        }

        public boolean y() {
            return this.f108869h.f108883e;
        }

        public boolean z() {
            return this.f108869h.f108882d;
        }
    }

    static {
        Object obj = new Object();
        f108795d = obj;
        f108796e = new SteppedArrayList();
        f108797f = new SteppedArrayList();
        f108798g = new TreeMap();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        f108799h = steppedArrayList;
        f108800i = new SteppedArrayList();
        TreeMap treeMap = new TreeMap();
        f108801j = treeMap;
        f108802k = new SteppedArrayList();
        f108803l = new SteppedArrayList();
        Key key = new Key("android_back");
        f108804m = key;
        tc.d dVar = new tc.d(key);
        f108805n = dVar;
        f108806o = new Vector2();
        synchronized (obj) {
            steppedArrayList.add(dVar);
            treeMap.put(key.getName(), dVar);
        }
        f108807p = null;
        f108808q = null;
        f108809r = new d();
        f108810s = new e();
        f108811t = new f();
        f108812u = new g();
        f108813v = new SteppedArrayList();
        f108814w = new SteppedArrayList();
        f108815x = new SteppedArrayList();
        f108816y = new SteppedArrayList();
        f108817z = false;
        f108786A = false;
        f108789D = false;
        f108790E = new AtomicBoolean();
        for (int i10 = 0; i10 < 10; i10++) {
            f108802k.add(new h());
            f108803l.add(new C15393b());
        }
        f108791F = false;
    }

    public static void A() {
        f108807p = null;
        synchronized (f108795d) {
            f108815x.clear();
        }
    }

    public static void B(Context context) {
        List<KeyEvent> list;
        List<KeyEvent> list2;
        List<R8.b> list3;
        i iVar = f108808q;
        if (iVar != null) {
            f108807p = iVar;
        }
        synchronized (f108795d) {
            List<KeyEvent> list4 = f108815x;
            List<KeyEvent> list5 = f108816y;
            list4.addAll(list5);
            list5.clear();
            int i10 = 0;
            while (true) {
                list = f108815x;
                if (i10 >= list.size()) {
                    break;
                }
                KeyEvent keyEvent = list.get(i10);
                try {
                    if (!f108816y.contains(keyEvent)) {
                        int i11 = 0;
                        while (true) {
                            List<KeyEvent> list6 = f108815x;
                            if (i11 < list6.size()) {
                                KeyEvent keyEvent2 = list6.get(i11);
                                if (i10 != i11 && keyEvent != keyEvent2 && keyEvent.getKeyCode() == keyEvent2.getKeyCode() && keyEvent.getAction() != keyEvent2.getAction()) {
                                    f108816y.add(keyEvent2);
                                }
                                i11++;
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                i10++;
            }
            list.removeAll(f108816y);
            int i12 = 0;
            while (true) {
                list2 = f108815x;
                if (i12 >= list2.size()) {
                    break;
                }
                KeyEvent keyEvent3 = list2.get(i12);
                try {
                    if (keyEvent3.getAction() == 0) {
                        w(keyEvent3);
                    } else if (keyEvent3.getAction() == 1) {
                        y(keyEvent3);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                i12++;
            }
            list2.clear();
            List<h> list7 = f108802k;
            h hVar = list7.get(0);
            h hVar2 = list7.get(1);
            int i13 = 0;
            while (true) {
                List<h> list8 = f108802k;
                if (i13 < list8.size()) {
                    h hVar3 = list8.get(i13);
                    try {
                        C15393b c15393b = f108803l.get(i13);
                        hVar3.F(c15393b.c());
                        hVar3.y(c15393b.b());
                        hVar3.E(c15393b.a());
                        if (hVar3.f().f79838x >= 0.0f) {
                            hVar3.G(c15393b.a().f79838x - hVar3.f().f79838x, c15393b.a().f79839y - hVar3.f().f79839y);
                        } else {
                            hVar3.G(0.0f, 0.0f);
                        }
                        hVar3.f().x0(hVar3.g());
                        if (hVar3.n()) {
                            hVar3.z(false);
                        } else if (hVar3.q() && !hVar3.o()) {
                            float e12 = hVar3.f117319o + K8.d.e();
                            hVar3.f117319o = e12;
                            if (e12 >= 0.3f) {
                                hVar3.z(true);
                                hVar3.B(true);
                                hVar3.A(true);
                            }
                        }
                        if (hVar3.k()) {
                            hVar3.v(false);
                        } else if (hVar3.q() && !hVar3.l()) {
                            hVar3.x(true);
                            hVar3.v(true);
                            hVar3.w(c15393b.a());
                        }
                        if (hVar3.q()) {
                            hVar3.K(false);
                        } else if (hVar3.t()) {
                            hVar3.J(false);
                            hVar3.f117309e = false;
                            hVar3.G(0.0f, 0.0f);
                            hVar3.C(-1.0f, -1.0f);
                        } else if (!hVar3.u()) {
                            hVar3.J(true);
                            hVar3.K(true);
                        }
                        if (!hVar3.q() && !hVar3.t()) {
                            hVar3.x(false);
                            hVar3.B(false);
                            hVar3.f117319o = 0.0f;
                            hVar3.A(false);
                            hVar3.z(false);
                        }
                        if (hVar3.q() && !hVar3.f117309e) {
                            if (hVar3.g().r0(hVar3.a(), f108806o).S() >= Nc.b.k0(6.0f)) {
                                hVar3.f117309e = true;
                            } else {
                                hVar3.G(0.0f, 0.0f);
                            }
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    i13++;
                } else {
                    try {
                        break;
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                }
            }
            if (!hVar.q() || !hVar.f117309e) {
                f108808q = null;
                f108791F = false;
            } else if (hVar2.q() && hVar2.f117309e) {
                g(hVar.i(), hVar2.i());
                f108791F = true;
            } else {
                f108808q = null;
                f108791F = false;
            }
            f108810s.j();
            f108811t.p();
            f108809r.f();
            f108812u.N();
        }
        f108789D = f108790E.get();
        int i14 = 0;
        while (true) {
            list3 = f108813v;
            if (i14 >= list3.size()) {
                break;
            }
            R8.b bVar = list3.get(i14);
            try {
            } catch (Exception e15) {
                e15.printStackTrace();
            }
            if (bVar.b() && bVar.a().f79250n != null) {
                i14++;
            }
            f108814w.add(bVar);
            i14++;
        }
        List<R8.b> list9 = f108814w;
        list3.removeAll(list9);
        list9.clear();
        if (!f()) {
            f108786A = false;
            if (f108817z) {
                return;
            }
            f108817z = true;
            C2630i.b();
            return;
        }
        f108817z = false;
        if (f108790E.get() || f108786A) {
            return;
        }
        f108786A = true;
        N7.c.j0(new c());
    }

    public static Axis C(Ac.b name) {
        if (name == null || name.g0()) {
            throw new NullPointerException("name can't be empty or null");
        }
        return D(name.toString());
    }

    public static Axis D(String name) {
        Axis i10;
        if (name == null) {
            throw new NullPointerException("axis can't be null");
        }
        synchronized (f108795d) {
            try {
                i10 = i(name);
                if (i10 == null) {
                    i10 = new Axis(name);
                    C15392a c15392a = new C15392a(i10);
                    f108796e.add(c15392a);
                    f108798g.put(name, c15392a);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    public static Key E(Ac.b name) {
        if (name == null || name.g0()) {
            throw new NullPointerException("name can't be empty or null");
        }
        return F(new Key(name.toString()));
    }

    public static Key F(Key key) {
        if (key == null) {
            throw new NullPointerException("key can't be null");
        }
        synchronized (f108795d) {
            try {
                Key k10 = k(key.getName());
                if (k10 == null) {
                    tc.d dVar = new tc.d(key);
                    f108799h.add(dVar);
                    f108801j.put(key.getName(), dVar);
                } else {
                    key = k10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return key;
    }

    public static Key G(String name) {
        Key k10;
        if (name == null || name.trim().isEmpty()) {
            throw new NullPointerException("name can't be empty or null");
        }
        synchronized (f108795d) {
            try {
                k10 = k(name);
                if (k10 == null) {
                    k10 = new Key(name);
                    tc.d dVar = new tc.d(k10);
                    f108799h.add(dVar);
                    f108801j.put(name, dVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return k10;
    }

    public static void H(Component component) {
        K8.a.F();
        if (component == null) {
            throw new NullPointerException("Component can't be null");
        }
        int i10 = 0;
        while (true) {
            List<R8.b> list = f108813v;
            if (i10 >= list.size()) {
                return;
            }
            R8.b bVar = list.get(i10);
            if (bVar.b() && bVar.a() == component) {
                f108814w.add(bVar);
            }
            i10++;
        }
    }

    public static void I(String axisName, Vector2 value) {
        synchronized (f108795d) {
            try {
                Axis i10 = i(axisName);
                if (i10 == null) {
                    i10 = new Axis(axisName);
                    C15392a c15392a = new C15392a(i10);
                    f108796e.add(c15392a);
                    f108798g.put(axisName, c15392a);
                }
                i10.h(C15169a.class, value);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void J(Key key) {
        if (key == null) {
            throw new NullPointerException("key can't be null");
        }
        synchronized (f108795d) {
            try {
                tc.d dVar = f108801j.get(key.getName());
                if (dVar == null || !dVar.c()) {
                    F(key);
                } else {
                    dVar.a().d(key);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void K(String name, boolean down, boolean pressed, boolean up) {
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("key name can't be null or empty");
        }
        synchronized (f108795d) {
            try {
                tc.d dVar = f108801j.get(name);
                if (dVar == null || !dVar.c()) {
                    G(name).e(down, pressed, up);
                } else {
                    dVar.a().e(down, pressed, up);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static int L() {
        int size;
        synchronized (f108795d) {
            size = f108802k.size();
        }
        return size;
    }

    public static void M(Axis axis) {
        if (axis == null) {
            return;
        }
        axis.k();
    }

    public static void e(Component component) {
        K8.a.F();
        if (component == null) {
            throw new NullPointerException("Component can't be null");
        }
        int i10 = 0;
        while (true) {
            List<R8.b> list = f108813v;
            if (i10 >= list.size()) {
                list.add(new R8.b(component));
                return;
            }
            R8.b bVar = list.get(i10);
            if (bVar.b() && bVar.a() == component) {
                return;
            } else {
                i10++;
            }
        }
    }

    public static boolean f() {
        return !f108813v.isEmpty();
    }

    public static void g(Vector2 slide1, Vector2 slide2) {
        f108808q = new i(slide1, slide2);
    }

    public static Axis h(String axisName) {
        Axis i10;
        synchronized (f108795d) {
            i10 = i(axisName);
        }
        return i10;
    }

    public static Axis i(String axisName) {
        C15392a c15392a = f108798g.get(axisName);
        if (c15392a == null || !c15392a.c()) {
            return null;
        }
        return c15392a.a();
    }

    public static Key j(String key) {
        Key k10;
        if (key == null) {
            throw new NullPointerException("key can't be null");
        }
        if (key.isEmpty()) {
            throw new NullPointerException("key can't be empty");
        }
        synchronized (f108795d) {
            k10 = k(key);
        }
        return k10;
    }

    public static Key k(String key) {
        tc.d dVar = f108801j.get(key);
        if (dVar == null || !dVar.c()) {
            return null;
        }
        return dVar.a();
    }

    public static Vector2 l() {
        int i10;
        h hVar;
        try {
            synchronized (f108795d) {
                i10 = -1;
                float f10 = 0.0f;
                hVar = null;
                int i11 = 0;
                while (true) {
                    try {
                        List<h> list = f108802k;
                        if (i11 >= list.size()) {
                            break;
                        }
                        h hVar2 = list.get(i11);
                        if (hVar2 != null && hVar2.f117309e && hVar2.q()) {
                            float sqrtLength = hVar2.i().sqrtLength();
                            if (sqrtLength > f10) {
                                i10 = i11;
                                hVar = hVar2;
                                f10 = sqrtLength;
                            }
                        }
                        i11++;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (i10 >= 0 && hVar != null) {
                return hVar.i().clone();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return new Vector2();
    }

    public static Vector2 m() {
        int i10;
        h hVar;
        try {
            synchronized (f108795d) {
                i10 = -1;
                hVar = null;
                int i11 = 0;
                float f10 = 0.0f;
                while (true) {
                    try {
                        List<h> list = f108802k;
                        if (i11 >= list.size()) {
                            break;
                        }
                        h hVar2 = list.get(i11);
                        if (hVar2 != null && hVar2.f117309e && hVar2.q()) {
                            float sqrtLength = hVar2.i().sqrtLength();
                            if (sqrtLength > f10) {
                                i10 = i11;
                                hVar = hVar2;
                                f10 = sqrtLength;
                            }
                        }
                        i11++;
                    } finally {
                    }
                }
            }
            if (i10 >= 0 && hVar != null) {
                Vector2 clone = hVar.i().clone();
                float f11 = clone.f79838x;
                if (f11 > 0.0f) {
                    clone.f79838x = f11 / K8.c.b();
                } else {
                    clone.f79838x = -(Nc.b.k(f11) / K8.c.b());
                }
                float f12 = clone.f79839y;
                if (f12 > 0.0f) {
                    clone.f79839y = f12 / K8.c.a();
                } else {
                    clone.f79839y = -(Nc.b.k(f12) / K8.c.a());
                }
                return clone;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return new Vector2();
    }

    public static h n(int id2) {
        h hVar;
        synchronized (f108795d) {
            hVar = f108802k.get(id2);
        }
        return hVar;
    }

    public static void o() {
        N7.c.j0(new RunnableC1990a());
    }

    public static boolean p() {
        return f108789D;
    }

    public static boolean q() {
        return f108790E.get();
    }

    public static boolean r(int sources) {
        return (sources & 8194) == 8194 || (sources & InputDevice.SOURCE_MOUSE_RELATIVE) == 131076;
    }

    public static void s() {
        List<tc.d> list;
        List<C15392a> list2;
        synchronized (f108795d) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                list = f108799h;
                if (i11 >= list.size()) {
                    break;
                }
                tc.d dVar = list.get(i11);
                try {
                    if (!dVar.c()) {
                        f108800i.add(dVar);
                        f108801j.remove(dVar.b());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                i11++;
            }
            List<tc.d> list3 = f108800i;
            if (!list3.isEmpty()) {
                list.removeAll(list3);
                list3.clear();
            }
            while (true) {
                list2 = f108796e;
                if (i10 >= list2.size()) {
                    break;
                }
                C15392a c15392a = list2.get(i10);
                try {
                    if (!c15392a.c()) {
                        f108797f.add(c15392a);
                        f108798g.remove(c15392a.b());
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                i10++;
            }
            List<C15392a> list4 = f108797f;
            if (!list4.isEmpty()) {
                list2.removeAll(list4);
                list4.clear();
            }
        }
    }

    public static void t(Key key) {
        List<GameObject> list = com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b;
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).onKeyDown(key);
        }
    }

    public static void u(Key key) {
        List<GameObject> list = com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b;
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).onKeyPressed(key);
        }
    }

    public static void v(Key key) {
        List<GameObject> list = com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b;
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).onKeyUp(key);
        }
    }

    public static boolean w(KeyEvent event) {
        if (P9.a.n(event.getKeyCode(), event)) {
            return true;
        }
        try {
            if (f108810s.h(event, true)) {
                return true;
            }
            return f108811t.j(event, true);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean x(KeyEvent event) {
        if (!f()) {
            return false;
        }
        K8.a.I(new b(event));
        return false;
    }

    public static boolean y(KeyEvent event) {
        if (P9.a.o(event.getKeyCode(), event)) {
            return true;
        }
        try {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (f108810s.h(event, false)) {
            return true;
        }
        return f108811t.j(event, false);
    }

    public static void z(MotionEvent event) {
        if (event == null || P9.a.q(event)) {
            return;
        }
        InputDevice device = InputDevice.getDevice(event.getDeviceId());
        boolean z10 = device != null && r(device.getSources());
        if (event.getAction() == 8) {
            return;
        }
        ScaleGestureDetector scaleGestureDetector = f108787B;
        if (scaleGestureDetector != null) {
            scaleGestureDetector.onTouchEvent(event);
        }
        C15271a c15271a = f108788C;
        if (c15271a != null) {
            c15271a.c(event);
        }
        int action = event.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    g gVar = f108812u;
                    if (!gVar.q() || gVar.k()) {
                        int pointerCount = event.getPointerCount();
                        for (int i10 = 0; i10 < pointerCount; i10++) {
                            int pointerId = event.getPointerId(i10);
                            float x10 = event.getX(i10);
                            float y10 = event.getY(i10);
                            synchronized (f108795d) {
                                C15393b c15393b = f108803l.get(pointerId);
                                c15393b.e(x10, y10);
                                c15393b.f(true);
                                c15393b.d(z10);
                            }
                        }
                        return;
                    }
                    return;
                }
                if (action != 5) {
                    if (action != 6) {
                        return;
                    }
                }
            }
            g gVar2 = f108812u;
            if (!gVar2.q() || gVar2.k()) {
                int actionIndex = event.getActionIndex();
                int pointerId2 = event.getPointerId(actionIndex);
                float x11 = event.getX(actionIndex);
                float y11 = event.getY(actionIndex);
                synchronized (f108795d) {
                    C15393b c15393b2 = f108803l.get(pointerId2);
                    c15393b2.e(x11, y11);
                    c15393b2.f(false);
                    c15393b2.d(z10);
                }
                return;
            }
            return;
        }
        g gVar3 = f108812u;
        if (!gVar3.q() || gVar3.k()) {
            int actionIndex2 = event.getActionIndex();
            int pointerId3 = event.getPointerId(actionIndex2);
            float x12 = event.getX(actionIndex2);
            float y12 = event.getY(actionIndex2);
            synchronized (f108795d) {
                C15393b c15393b3 = f108803l.get(pointerId3);
                c15393b3.e(x12, y12);
                c15393b3.f(true);
                c15393b3.d(z10);
            }
        }
    }
}
