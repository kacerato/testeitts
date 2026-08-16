package D3;

import Lb.k;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import gb.C13317e;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class b {

    public static final long f4815a = 15000;

    public class a implements f {
        @Override
        public String run() {
            World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
            if (world == null) {
                return "ERROR: no world is currently loaded";
            }
            JsonArray jsonArray = new JsonArray();
            Iterator<GameObject> it = world.q().iterator();
            while (it.hasNext()) {
                b.e(it.next(), jsonArray);
            }
            return jsonArray.toString();
        }
    }

    public class C0085b implements f {

        public final String f4816a;

        public C0085b(final String val$singleGuid) {
            this.f4816a = val$singleGuid;
        }

        @Override
        public String run() {
            World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
            if (world == null) {
                return "ERROR: no world is currently loaded";
            }
            GameObject h10 = k.h(this.f4816a.trim(), world);
            if (h10 == null) {
                return "ERROR: object not found";
            }
            JsonArray jsonArray = new JsonArray();
            for (int i10 = 0; i10 < h10.D(); i10++) {
                b.d(jsonArray, h10.C(i10));
            }
            return jsonArray.toString();
        }
    }

    public class c implements f {
        @Override
        public String run() {
            World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
            if (world == null) {
                return "ERROR: no world is currently loaded";
            }
            JsonArray jsonArray = new JsonArray();
            Iterator<GameObject> it = world.q().iterator();
            while (it.hasNext()) {
                b.d(jsonArray, it.next());
            }
            return jsonArray.toString();
        }
    }

    public class d implements f {

        public final String f4817a;

        public d(final String val$singleGuid) {
            this.f4817a = val$singleGuid;
        }

        @Override
        public String run() {
            World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
            if (world == null) {
                return "ERROR: no world is currently loaded";
            }
            GameObject h10 = k.h(this.f4817a.trim(), world);
            if (h10 == null) {
                return "ERROR: object not found";
            }
            String k10 = b.k(h10);
            return k10 == null ? "" : k10;
        }
    }

    public class e implements Runnable {

        public final String[] f4818b;

        public final f f4819c;

        public final CountDownLatch f4820d;

        public e(final String[] val$result, final f val$query, final CountDownLatch val$latch) {
            this.f4818b = val$result;
            this.f4819c = val$query;
            this.f4820d = val$latch;
        }

        @Override
        public void run() {
            String message;
            boolean isEmpty;
            try {
                this.f4818b[0] = this.f4819c.run();
            } finally {
                try {
                    if (message != null) {
                        if (!isEmpty) {
                            this.f4820d.countDown();
                        }
                    }
                    this.f4820d.countDown();
                } catch (Throwable th2) {
                }
            }
            this.f4820d.countDown();
        }
    }

    public interface f {
        String run();
    }

    public static void d(JsonArray out, GameObject object) {
        if (object == null || C13317e.G(object)) {
            return;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", k(object));
        jsonObject.addProperty("SINGLE_GUID", l(object));
        out.add(jsonObject);
    }

    public static void e(GameObject object, JsonArray out) {
        if (object == null || C13317e.G(object)) {
            return;
        }
        d(out, object);
        for (int i10 = 0; i10 < object.D(); i10++) {
            e(object.C(i10), out);
        }
    }

    public static String f(final String singleGuid) {
        return (singleGuid == null || singleGuid.trim().isEmpty()) ? "ERROR: SINGLE_GUID cannot be empty" : j(new d(singleGuid));
    }

    public static String g() {
        return j(new a());
    }

    public static String h(final String singleGuid) {
        return (singleGuid == null || singleGuid.trim().isEmpty()) ? "ERROR: SINGLE_GUID cannot be empty" : j(new C0085b(singleGuid));
    }

    public static String i() {
        return j(new c());
    }

    public static String j(final f query) {
        String[] strArr = {"ERROR: execution failed"};
        CountDownLatch countDownLatch = new CountDownLatch(1);
        K8.a.I(new e(strArr, query, countDownLatch));
        try {
            return !countDownLatch.await(15000L, TimeUnit.MILLISECONDS) ? "ERROR: scene query timed out" : strArr[0];
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return "ERROR: scene query interrupted";
        }
    }

    public static String k(GameObject object) {
        if (object == null) {
            return "";
        }
        try {
            String name = object.getName();
            return name == null ? "" : name;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String l(GameObject object) {
        if (object == null) {
            return "";
        }
        try {
            if (object.getGuid() == null) {
                return "";
            }
            String l10 = object.getGuid().l();
            return l10 == null ? "" : l10;
        } catch (Throwable unused) {
            return "";
        }
    }
}
