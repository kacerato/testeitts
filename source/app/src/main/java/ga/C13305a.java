package ga;

import android.view.View;
import com.google.protobuf.C12667d1;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import dd.C12908b;
import java.util.Iterator;
import java.util.List;
import w2.C15883c;

public final class C13305a {

    public class C1625a implements d {

        public final d f88181a;

        public C1625a(final d val$listener) {
            this.f88181a = val$listener;
        }

        @Override
        public void a(H type, H listItemType) {
            d dVar = this.f88181a;
            if (dVar != null) {
                dVar.a(H.LIST, type);
            }
        }
    }

    public class b implements dd.d {

        public final d f88182a;

        public final H f88183b;

        public b(final d val$listener, final H val$type) {
            this.f88182a = val$listener;
            this.f88183b = val$type;
        }

        @Override
        public void onSelected(View v10) {
            d dVar = this.f88182a;
            if (dVar != null) {
                dVar.a(this.f88183b, H.NUMBER);
            }
        }
    }

    public static class c {

        public static final int[] f88184a;

        static {
            int[] iArr = new int[H.values().length];
            f88184a = iArr;
            try {
                iArr[H.BIG_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f88184a[H.NUMBER01.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f88184a[H.FLOAT2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f88184a[H.FLOAT3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f88184a[H.FLOAT4.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f88184a[H.QUATERNION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f88184a[H.GAME_OBJECT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f88184a[H.FILE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f88184a[H.PROJECT_FILE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f88184a[H.INPUT_STREAM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f88184a[H.OBJECT_FILE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f88184a[H.ANIMATION_FILE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f88184a[H.ANIMATION_MASK_FILE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f88184a[H.WORLD_FILE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f88184a[H.SOUND_FILE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f88184a[H.ANIMATION.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f88184a[H.ANIMATION_MASK.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f88184a[H.COLOR_GRADIENT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f88184a[H.BLENDING_MODE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f88184a[H.UV_SOURCE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f88184a[H.INPUT_DIALOG_TYPE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f88184a[H.POPUP_DIALOG_TYPE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f88184a[H.ANY_COMPONENT.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    public interface d {
        void a(H type, H listItemType);
    }

    public static void a(List<C12908b> items, boolean nestedListItems, d listener) {
        if (items == null) {
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(g(H.NUMBER, listener));
        steppedArrayList.add(g(H.BIG_NUMBER, listener));
        steppedArrayList.add(g(H.NUMBER01, listener));
        steppedArrayList.add(g(H.BOOLEAN, listener));
        steppedArrayList.add(g(H.TEXT, listener));
        items.add(new C12908b("Primitives", steppedArrayList));
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        steppedArrayList2.add(g(H.FLOAT2, listener));
        steppedArrayList2.add(g(H.FLOAT3, listener));
        steppedArrayList2.add(g(H.DIRECTION, listener));
        steppedArrayList2.add(g(H.FLOAT4, listener));
        steppedArrayList2.add(g(H.QUATERNION, listener));
        steppedArrayList2.add(g(H.COLOR, listener));
        steppedArrayList2.add(g(H.COLOR_GRADIENT, listener));
        items.add(new C12908b("Vectors", steppedArrayList2));
        SteppedArrayList steppedArrayList3 = new SteppedArrayList();
        steppedArrayList3.add(g(H.GAME_OBJECT, listener));
        items.add(new C12908b("World", steppedArrayList3));
        SteppedArrayList steppedArrayList4 = new SteppedArrayList();
        SteppedArrayList steppedArrayList5 = new SteppedArrayList();
        steppedArrayList5.add(g(H.FILE, listener));
        steppedArrayList5.add(g(H.PROJECT_FILE, listener));
        steppedArrayList5.add(g(H.OBJECT_FILE, listener));
        steppedArrayList5.add(g(H.ANIMATION_FILE, listener));
        steppedArrayList5.add(g(H.ANIMATION_MASK_FILE, listener));
        steppedArrayList5.add(g(H.WORLD_FILE, listener));
        steppedArrayList5.add(g(H.SOUND_FILE, listener));
        steppedArrayList5.add(g(H.ANIMATION, listener));
        steppedArrayList5.add(g(H.ANIMATION_MASK, listener));
        steppedArrayList5.add(g(H.TEXTURE, listener));
        steppedArrayList5.add(g(H.CUBEMAP, listener));
        steppedArrayList4.add(new C12908b("Files", steppedArrayList5));
        steppedArrayList4.add(g(H.MATERIAL, listener));
        items.add(new C12908b("Assets", steppedArrayList4));
        SteppedArrayList steppedArrayList6 = new SteppedArrayList();
        steppedArrayList6.add(g(H.BLENDING_MODE, listener));
        steppedArrayList6.add(g(H.UV_SOURCE, listener));
        steppedArrayList6.add(g(H.INPUT_DIALOG_TYPE, listener));
        steppedArrayList6.add(g(H.POPUP_DIALOG_TYPE, listener));
        items.add(new C12908b("Enums", steppedArrayList6));
        SteppedArrayList steppedArrayList7 = new SteppedArrayList();
        steppedArrayList7.add(g(H.ANY_COMPONENT, listener));
        for (String str : C13308d.k()) {
            List<H> l10 = C13308d.l(str);
            if (!l10.isEmpty()) {
                SteppedArrayList steppedArrayList8 = new SteppedArrayList();
                Iterator<H> it = l10.iterator();
                while (it.hasNext()) {
                    steppedArrayList8.add(g(it.next(), listener));
                }
                steppedArrayList7.add(new C12908b(str, steppedArrayList8));
            }
        }
        items.add(new C12908b("Components", steppedArrayList7));
    }

    public static List<C12908b> b(d listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        a(steppedArrayList, false, listener);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        a(steppedArrayList2, true, new C1625a(listener));
        if (!steppedArrayList2.isEmpty()) {
            steppedArrayList.add(new C12908b(C12667d1.f69075a, steppedArrayList2));
        }
        return steppedArrayList;
    }

    public static boolean c(H type) {
        return (type == null || type == H.MAT3 || type == H.MAT4 || type == H.BRANCH || type == H.DYNAMIC) ? false : true;
    }

    public static String d(H type) {
        if (type == null) {
            return k(Lang.T.NOCODE_TYPE_NUMBER, "Number");
        }
        if (C13308d.n(type)) {
            return C13308d.i(type);
        }
        switch (c.f88184a[type.ordinal()]) {
            case 1:
                return k(Lang.T.NOCODE_TYPE_BIG_NUMBER, "Big Number");
            case 2:
                return k(Lang.T.NOCODE_TYPE_NUMBER01, "Number 01");
            case 3:
                return k(Lang.T.NOCODE_TYPE_FLOAT2, "Number 2");
            case 4:
                return k(Lang.T.NOCODE_TYPE_FLOAT3, "Number 3");
            case 5:
                return k(Lang.T.NOCODE_TYPE_FLOAT4, "Number 4");
            case 6:
                return k(Lang.T.NOCODE_TYPE_QUATERNION, "Quaternion");
            case 7:
                return k(Lang.T.NOCODE_TYPE_GAME_OBJECT, "Object");
            case 8:
                return "File";
            case 9:
                return "Project File";
            case 10:
                return "Input Stream";
            case 11:
                return k(Lang.T.NOCODE_TYPE_OBJECT_FILE, "Object File");
            case 12:
                return k(Lang.T.NOCODE_TYPE_ANIMATION_FILE, "Animation File");
            case 13:
                return k(Lang.T.NOCODE_TYPE_ANIMATION_MASK_FILE, "Animation Mask File");
            case 14:
                return k(Lang.T.NOCODE_TYPE_WORLD_FILE, "World File");
            case 15:
                return k(Lang.T.NOCODE_TYPE_SOUND_FILE, "Sound File");
            case 16:
                return k(Lang.T.NOCODE_TYPE_ANIMATION, "Animation");
            case 17:
                return k(Lang.T.NOCODE_TYPE_ANIMATION_MASK, "Animation Mask");
            case 18:
                return k(Lang.T.NOCODE_TYPE_COLOR_GRADIENT, "Color Gradient");
            case 19:
                return k(Lang.T.NOCODE_TYPE_BLENDING_MODE, "Blending Mode");
            case 20:
                return k(Lang.T.NOCODE_TYPE_UV_SOURCE, "UV Source");
            case 21:
                return k(Lang.T.NOCODE_TYPE_INPUT_DIALOG_TYPE, "Input Dialog Type");
            case 22:
                return k(Lang.T.NOCODE_TYPE_POPUP_DIALOG_TYPE, "Popup Dialog Type");
            case 23:
                return k(Lang.T.NOCODE_TYPE_ANY_COMPONENT, "Any Component");
            default:
                String replace = type.name().replace('_', C15883c.f126249O);
                return replace.substring(0, 1).toUpperCase() + replace.substring(1).toLowerCase();
        }
    }

    public static String e(H type, H listItemType) {
        if (type != H.LIST) {
            return d(type);
        }
        return k(Lang.T.NOCODE_TYPE_LIST, C12667d1.f69075a) + "<" + d(i(listItemType)) + ">";
    }

    public static boolean f(H type, boolean allowList) {
        if (type == null || type == H.BRANCH || type == H.DYNAMIC || type == H.MAT3 || type == H.MAT4 || type == H.INPUT_STREAM) {
            return false;
        }
        return allowList || type != H.LIST;
    }

    public static C12908b g(H type, d listener) {
        return new C12908b(d(type), new b(listener, type));
    }

    public static H h(H type) {
        return !f(type, true) ? H.NUMBER : type;
    }

    public static H i(H type) {
        return !f(type, false) ? H.NUMBER : type;
    }

    public static boolean j() {
        return EditorSettings.a() != null && EditorSettings.a().translateNoCodeV2;
    }

    public static String k(Ac.b key, String fallback) {
        return (!j() || key == null) ? fallback : Lang.l(key);
    }
}
