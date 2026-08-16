package d8;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.nio.channels.ClosedByInterruptException;
import java.util.List;
import o8.InterfaceC14488b;
import o8.InterfaceC14490d;

public class m {
    public static boolean a(GameObject gameObject, InterfaceC14488b interfaceListener) {
        if (interfaceListener == null) {
            throw new NullPointerException("interfaceListener can't be null");
        }
        try {
            return interfaceListener.run();
        } catch (Throwable th2) {
            if (J4.d.O1()) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(J4.d.q2("E/At object "));
                sb2.append(J4.d.H1(gameObject != null ? gameObject.P0() : "Unknown", "#27997e"));
                steppedArrayList.add(sb2.toString());
                List<String> w22 = J4.d.w2(th2);
                for (int i10 = 0; i10 < w22.size(); i10++) {
                    String str = w22.get(i10);
                    if (str.equals("\n")) {
                        steppedArrayList.add(str);
                    } else {
                        String str2 = Sm.b.f23785c + str;
                        if (!str2.trim().isEmpty()) {
                            steppedArrayList.add(str2);
                        }
                    }
                }
                steppedArrayList.add(J4.d.y2("E/Catching exceptions is a heavy process and considerably reduces performance.!"));
                steppedArrayList.add(J4.d.q2("E/^^^"));
                J4.d.W1(steppedArrayList);
            } else {
                J4.d.E1();
            }
            return false;
        }
    }

    public static boolean b(GameObject gameObject, InterfaceC14490d interfaceListener) {
        if (interfaceListener == null) {
            throw new NullPointerException("interfaceListener can't be null");
        }
        try {
            interfaceListener.run();
            return true;
        } catch (Throwable th2) {
            if (J4.d.O1()) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(J4.d.q2("E/At object "));
                sb2.append(J4.d.H1(gameObject != null ? gameObject.P0() : "Unknown", "#27997e"));
                steppedArrayList.add(sb2.toString());
                List<String> w22 = J4.d.w2(th2);
                for (int i10 = 0; i10 < w22.size(); i10++) {
                    String str = w22.get(i10);
                    if (str.equals("\n")) {
                        steppedArrayList.add(str);
                    } else {
                        String str2 = Sm.b.f23785c + str;
                        if (!str2.trim().isEmpty()) {
                            steppedArrayList.add(str2);
                        }
                    }
                }
                steppedArrayList.add(J4.d.y2("E/Catching exceptions is a heavy process and considerably reduces performance.!"));
                steppedArrayList.add(J4.d.q2("E/^^^"));
                J4.d.W1(steppedArrayList);
            } else {
                J4.d.E1();
            }
            return false;
        }
    }

    public static boolean c(InterfaceC14488b interfaceListener) {
        if (interfaceListener == null) {
            throw new NullPointerException("interfaceListener can't be null");
        }
        try {
            return interfaceListener.run();
        } catch (Throwable th2) {
            if (J4.d.O1()) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                steppedArrayList.add(J4.d.q2("E/vvv"));
                List<String> w22 = J4.d.w2(th2);
                for (int i10 = 0; i10 < w22.size(); i10++) {
                    String str = w22.get(i10);
                    if (str.equals("\n")) {
                        steppedArrayList.add(str);
                    } else {
                        String str2 = Sm.b.f23785c + str;
                        if (!str2.trim().isEmpty()) {
                            steppedArrayList.add(str2);
                        }
                    }
                }
                steppedArrayList.add(J4.d.y2("E/Catching exceptions is a heavy process and considerably reduces performance.!"));
                steppedArrayList.add(J4.d.q2("E/^^^"));
                J4.d.W1(steppedArrayList);
            } else {
                J4.d.E1();
            }
            return false;
        }
    }

    public static boolean d(InterfaceC14490d interfaceListener) {
        if (interfaceListener == null) {
            throw new NullPointerException("interfaceListener can't be null");
        }
        try {
            interfaceListener.run();
            return true;
        } catch (Throwable th2) {
            if (!J4.d.O1()) {
                J4.d.E1();
                return true;
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(J4.d.q2("E/vvv"));
            List<String> w22 = J4.d.w2(th2);
            for (int i10 = 0; i10 < w22.size(); i10++) {
                String str = w22.get(i10);
                if (str.equals("\n")) {
                    steppedArrayList.add(str);
                } else {
                    String str2 = Sm.b.f23785c + str;
                    if (!str2.trim().isEmpty()) {
                        steppedArrayList.add(str2);
                    }
                }
            }
            steppedArrayList.add(J4.d.y2("E/Catching exceptions is a heavy process and considerably reduces performance.!"));
            steppedArrayList.add(J4.d.q2("E/^^^"));
            J4.d.W1(steppedArrayList);
            return true;
        }
    }

    public static boolean e(InterfaceC14490d interfaceListener) {
        if (interfaceListener == null) {
            throw new NullPointerException("interfaceListener can't be null");
        }
        try {
            interfaceListener.run();
        } catch (Throwable th2) {
            if ((th2 instanceof InterruptedException) || (th2 instanceof ClosedByInterruptException)) {
                return true;
            }
            if (J4.d.O1()) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                steppedArrayList.add(J4.d.q2("E/vvv"));
                List<String> w22 = J4.d.w2(th2);
                for (int i10 = 0; i10 < w22.size(); i10++) {
                    String str = w22.get(i10);
                    if (str.equals("\n")) {
                        steppedArrayList.add(str);
                    } else {
                        String str2 = Sm.b.f23785c + str;
                        if (!str2.trim().isEmpty()) {
                            steppedArrayList.add(str2);
                        }
                    }
                }
                steppedArrayList.add(J4.d.y2("E/Catching exceptions is a heavy process and considerably reduces performance.!"));
                steppedArrayList.add(J4.d.q2("E/^^^"));
                J4.d.W1(steppedArrayList);
            } else {
                J4.d.E1();
            }
        }
        return true;
    }
}
