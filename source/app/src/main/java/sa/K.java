package sa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import java.lang.reflect.Constructor;

public final class K {

    public class a implements ga.p {

        public final Class f109333a;

        public final String f109334b;

        public final String f109335c;

        public final String f109336d;

        public a(final Class val$type, final String val$serializedName, final String val$subMenu, final String val$title) {
            this.f109333a = val$type;
            this.f109334b = val$serializedName;
            this.f109335c = val$subMenu;
            this.f109336d = val$title;
        }

        @Override
        public NoCodeNode a() {
            return K.b(this.f109333a);
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return this.f109333a;
        }

        @Override
        public String c() {
            return this.f109334b;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, this.f109333a);
        }

        @Override
        public String e() {
            return "Actions/Material/" + this.f109335c;
        }

        @Override
        public String f() {
            return this.f109336d;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public static NoCodeNode b(Class<? extends NoCodeNode> type) {
        try {
            Constructor<? extends NoCodeNode> declaredConstructor = type.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(null);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void c(Class<? extends NoCodeNode> type, String serializedName, String title, String subMenu) {
        ga.o.a(new a(type, serializedName, subMenu, title));
    }
}
