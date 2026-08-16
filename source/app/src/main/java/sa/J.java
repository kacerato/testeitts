package sa;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import gb.C13317e;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;

public final class J {

    public class a implements k<ColorINT> {

        public final Material f109323a;

        public a(final Material val$material) {
            this.f109323a = val$material;
        }

        @Override
        public ColorINT get(String alias) {
            return this.f109323a.q(alias);
        }
    }

    public class b implements k<ub.p> {

        public final Material f109324a;

        public b(final Material val$material) {
            this.f109324a = val$material;
        }

        @Override
        public ub.p get(String alias) {
            return this.f109324a.v(alias);
        }
    }

    public class c implements l<ub.p> {

        public final Material f109325a;

        public c(final Material val$material) {
            this.f109325a = val$material;
        }

        @Override
        public void a(String alias, ub.p value) {
            this.f109325a.h0(alias, value);
        }
    }

    public class d implements k<Float> {

        public final Material f109326a;

        public d(final Material val$material) {
            this.f109326a = val$material;
        }

        @Override
        public Float get(String alias) {
            return Float.valueOf(this.f109326a.r(alias));
        }
    }

    public class e implements l<Float> {

        public final Material f109327a;

        public e(final Material val$material) {
            this.f109327a = val$material;
        }

        @Override
        public void a(String alias, Float v10) {
            this.f109327a.setFloat(alias, v10.floatValue());
        }
    }

    public class f implements k<Boolean> {

        public final Material f109328a;

        public f(final Material val$material) {
            this.f109328a = val$material;
        }

        @Override
        public Boolean get(String alias) {
            return Boolean.valueOf(this.f109328a.p(alias));
        }
    }

    public class g implements l<Boolean> {

        public final Material f109329a;

        public g(final Material val$material) {
            this.f109329a = val$material;
        }

        @Override
        public void a(String alias, Boolean v10) {
            this.f109329a.setBoolean(alias, v10.booleanValue());
        }
    }

    public class h implements k<String> {

        public final Material f109330a;

        public h(final Material val$material) {
            this.f109330a = val$material;
        }

        @Override
        public String get(String alias) {
            return this.f109330a.u(alias);
        }
    }

    public class i implements l<String> {

        public final Material f109331a;

        public i(final Material val$material) {
            this.f109331a = val$material;
        }

        @Override
        public void a(String alias, String v10) {
            this.f109331a.setString(alias, v10);
        }
    }

    public class j implements l<ColorINT> {

        public final Material f109332a;

        public j(final Material val$material) {
            this.f109332a = val$material;
        }

        @Override
        public void a(String alias, ColorINT value) {
            this.f109332a.b0(alias, value);
        }
    }

    public interface k<T> {
        T get(String alias);
    }

    public interface l<T> {
        void a(String alias, T value);
    }

    public static void a(Material material, ColorINT color) {
        if (material != null && color != null) {
            try {
                try {
                    material.b0(SerializableShaderEntry.f81153g, color.clone());
                } catch (Exception unused) {
                    material.b0("color", color.clone());
                }
            } catch (Exception unused2) {
            }
        }
    }

    public static Boolean b(Material material, String[] runtimeAliases, String[] serializedAliases) {
        return (Boolean) g(o(material, runtimeAliases, serializedAliases), new f(material));
    }

    public static ColorINT c(Material material) {
        if (material == null) {
            return null;
        }
        try {
            ColorINT q10 = material.q(SerializableShaderEntry.f81153g);
            if (q10 != null) {
                return q10.clone();
            }
        } catch (Exception unused) {
        }
        try {
            ColorINT q11 = material.q("color");
            if (q11 != null) {
                return q11.clone();
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    public static ColorINT d(Material material, String[] runtimeAliases, String[] serializedAliases) {
        if (material == null) {
            return null;
        }
        String[] o10 = o(material, runtimeAliases, serializedAliases);
        ColorINT colorINT = (ColorINT) g(o10, new a(material));
        if (colorINT != null) {
            return colorINT.clone();
        }
        for (String str : o10) {
            if ("emissiveColor".equalsIgnoreCase(str)) {
                return q(material, "emissiveFallback");
            }
        }
        return null;
    }

    public static <T extends Enum<T>> T e(Material material, String[] runtimeAliases, String[] serializedAliases, Class<T> enumClass, T fallback) {
        String l10 = l(material, runtimeAliases, serializedAliases);
        if (l10 != null && enumClass != null) {
            T[] enumConstants = enumClass.getEnumConstants();
            for (T t10 : enumConstants) {
                if (t10.name().equalsIgnoreCase(l10)) {
                    return t10;
                }
            }
        }
        return fallback;
    }

    public static Field f(Class<?> type, String fieldName) {
        while (type != null) {
            try {
                return type.getDeclaredField(fieldName);
            } catch (NoSuchFieldException unused) {
                type = type.getSuperclass();
            }
        }
        return null;
    }

    public static <T> T g(String[] aliases, k<T> getter) {
        if (aliases != null && getter != null) {
            for (String str : aliases) {
                if (str != null && !str.isEmpty()) {
                    try {
                        T t10 = getter.get(str);
                        if (t10 != null) {
                            return t10;
                        }
                    } catch (Exception unused) {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    public static ColorINT h(NoCodeData graphData) {
        Iterator<Material> it = j(graphData).iterator();
        while (it.hasNext()) {
            ColorINT c10 = c(it.next());
            if (c10 != null) {
                return c10;
            }
        }
        return null;
    }

    public static Float i(Material material, String[] runtimeAliases, String[] serializedAliases) {
        return (Float) g(o(material, runtimeAliases, serializedAliases), new d(material));
    }

    public static List<Material> j(NoCodeData graphData) {
        Material material;
        Material material2;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (graphData != null && C13317e.J(graphData.h0())) {
            GameObject h02 = graphData.h0();
            for (Component component : h02.n0(Component.e.ModelRenderer)) {
                if ((component instanceof ModelRenderer) && (material2 = ((ModelRenderer) component).getMaterial()) != null) {
                    steppedArrayList.add(material2);
                }
            }
            for (Component component2 : h02.n0(Component.e.SkinnedModelRenderer)) {
                if ((component2 instanceof SkinnedModelRenderer) && (material = ((SkinnedModelRenderer) component2).getMaterial()) != null) {
                    steppedArrayList.add(material);
                }
            }
        }
        return steppedArrayList;
    }

    public static String k(Material material, String[] aliases) {
        SerializableShaderEntry d10;
        if (material != null && aliases != null) {
            try {
                Field f10 = f(Material.class, "serializedShaderEntries");
                if (f10 == null) {
                    return null;
                }
                f10.setAccessible(true);
                Object obj = f10.get(material);
                if (!(obj instanceof List)) {
                    return null;
                }
                List list = (List) obj;
                for (String str : aliases) {
                    if (str != null && !str.isEmpty() && (d10 = SerializableShaderEntry.d(str, SerializableShaderEntry.f81157k, list)) != null) {
                        return SerializableShaderEntry.s(d10);
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String l(Material material, String[] runtimeAliases, String[] serializedAliases) {
        return !n(material) ? k(material, serializedAliases) : (String) g(runtimeAliases, new h(material));
    }

    public static ub.p m(Material material, String[] runtimeAliases, String[] serializedAliases) {
        return (ub.p) g(o(material, runtimeAliases, serializedAliases), new b(material));
    }

    public static boolean n(Material material) {
        return (material == null || material.y() == null || material.y().k() == null) ? false : true;
    }

    public static String[] o(Material material, String[] runtimeAliases, String[] serializedAliases) {
        return n(material) ? runtimeAliases : serializedAliases;
    }

    public static ub.n p(Material material, String fieldName) {
        if (!n(material)) {
            return null;
        }
        ShaderBinder k10 = material.y().k();
        Field f10 = f(k10 != null ? k10.getClass() : null, fieldName);
        if (f10 == null) {
            return null;
        }
        try {
            f10.setAccessible(true);
            Object obj = f10.get(k10);
            if (obj instanceof ub.n) {
                return (ub.n) obj;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static ColorINT q(Material material, String fieldName) {
        ub.n p10 = p(material, fieldName);
        if (p10 == null) {
            return null;
        }
        try {
            ColorINT i10 = p10.i(0, 0);
            if (i10 != null) {
                return i10.clone();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void r(Material material, String[] runtimeAliases, String[] serializedAliases, boolean value) {
        u(o(material, runtimeAliases, serializedAliases), Boolean.valueOf(value), new g(material));
    }

    public static void s(Material material, String[] runtimeAliases, String[] serializedAliases, ColorINT color) {
        if (material == null || color == null) {
            return;
        }
        String[] o10 = o(material, runtimeAliases, serializedAliases);
        if (u(o10, color.clone(), new j(material))) {
            return;
        }
        for (String str : o10) {
            if ("emissiveColor".equalsIgnoreCase(str) && y(material, "emissiveFallback", color)) {
                return;
            }
        }
    }

    public static void t(Material material, String[] runtimeAliases, String[] serializedAliases, Enum<?> value) {
        if (value == null) {
            return;
        }
        w(material, runtimeAliases, serializedAliases, value.name());
    }

    public static <T> boolean u(String[] aliases, T value, l<T> setter) {
        if (aliases != null && setter != null) {
            for (String str : aliases) {
                if (str != null && !str.isEmpty()) {
                    try {
                        setter.a(str, value);
                        return true;
                    } catch (Exception unused) {
                        continue;
                    }
                }
            }
        }
        return false;
    }

    public static void v(Material material, String[] runtimeAliases, String[] serializedAliases, float value) {
        u(o(material, runtimeAliases, serializedAliases), Float.valueOf(value), new e(material));
    }

    public static void w(Material material, String[] runtimeAliases, String[] serializedAliases, String value) {
        u(o(material, runtimeAliases, serializedAliases), value, new i(material));
    }

    public static void x(Material material, String[] runtimeAliases, String[] serializedAliases, ub.p texture) {
        u(o(material, runtimeAliases, serializedAliases), texture, new c(material));
    }

    public static boolean y(Material material, String fieldName, ColorINT color) {
        ub.n p10 = p(material, fieldName);
        if (p10 == null) {
            return false;
        }
        try {
            p10.Y(0, 0, color.clone());
            p10.apply();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
