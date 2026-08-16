package kotlin.jvm.internal;

import com.google.protobuf.C12667d1;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Modifiers.Array;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KClass;
import nf.InterfaceC14392B;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1596#2:291\n1629#2,4:292\n*S KotlinDebug\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n*L\n107#1:291\n107#1:292,4\n*E\n"})
public final class C14024v implements KClass<Object>, InterfaceC14023u {

    @NotNull
    public static final a f95787c = new a(null);

    @NotNull
    public static final Map<Class<? extends InterfaceC14392B<?>>, Integer> f95788d;

    @NotNull
    public final Class<?> f95789b;

    @t0({"SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"})
    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:101:?, code lost:
        
            return "kotlin.Double";
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x0211, code lost:
        
            if (r10.equals("java.lang.Long") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:117:?, code lost:
        
            return "kotlin.Long";
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:0x022c, code lost:
        
            if (r10.equals("java.lang.Byte") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:124:?, code lost:
        
            return "kotlin.Byte";
         */
        /* JADX WARN: Code restructure failed: missing block: B:126:0x0239, code lost:
        
            if (r10.equals("java.lang.Boolean") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:128:?, code lost:
        
            return "kotlin.Boolean";
         */
        /* JADX WARN: Code restructure failed: missing block: B:133:0x0254, code lost:
        
            if (r10.equals("java.lang.Character") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:135:?, code lost:
        
            return "kotlin.Char";
         */
        /* JADX WARN: Code restructure failed: missing block: B:137:0x0261, code lost:
        
            if (r10.equals("short") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:139:?, code lost:
        
            return "kotlin.Short";
         */
        /* JADX WARN: Code restructure failed: missing block: B:141:0x026e, code lost:
        
            if (r10.equals(androidx.constraintlayout.core.motion.utils.TypedValues.Custom.S_FLOAT) == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:143:?, code lost:
        
            return "kotlin.Float";
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x0297, code lost:
        
            if (r10.equals(androidx.constraintlayout.core.motion.utils.TypedValues.Custom.S_BOOLEAN) == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:153:0x02a1, code lost:
        
            if (r10.equals("long") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:155:0x02ab, code lost:
        
            if (r10.equals("char") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:157:0x02b5, code lost:
        
            if (r10.equals("byte") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:171:0x02f3, code lost:
        
            if (r10.equals("java.lang.Short") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:173:0x02fd, code lost:
        
            if (r10.equals("java.lang.Float") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:184:0x032f, code lost:
        
            if (r10.equals("double") == false) goto L261;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x01cc, code lost:
        
            if (r10.equals("java.lang.Double") == false) goto L261;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0014. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:37:0x037f A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final String a(String str) {
            int hashCode = str.hashCode();
            switch (hashCode) {
                case -2061550653:
                    if (str.equals("kotlin.jvm.internal.DoubleCompanionObject")) {
                        return "kotlin.Double.Companion";
                    }
                    return null;
                case -2056817302:
                    if (str.equals("java.lang.Integer")) {
                        return "kotlin.Int";
                    }
                    break;
                case -2034166429:
                    if (str.equals("java.lang.Cloneable")) {
                        return "kotlin.Cloneable";
                    }
                    break;
                case -1979556166:
                    if (str.equals("java.lang.annotation.Annotation")) {
                        return "kotlin.Annotation";
                    }
                    break;
                case -1571515090:
                    if (str.equals("java.lang.Comparable")) {
                        return "kotlin.Comparable";
                    }
                    break;
                case -1383349348:
                    if (str.equals("java.util.Map")) {
                        return "kotlin.collections.Map";
                    }
                    break;
                case -1383343454:
                    if (str.equals("java.util.Set")) {
                        return "kotlin.collections.Set";
                    }
                    break;
                case -1325958191:
                    break;
                case -1182275604:
                    if (str.equals("kotlin.jvm.internal.ByteCompanionObject")) {
                        return "kotlin.Byte.Companion";
                    }
                    break;
                case -1062240117:
                    if (str.equals("java.lang.CharSequence")) {
                        return "kotlin.CharSequence";
                    }
                    break;
                case -688322466:
                    if (str.equals("java.util.Collection")) {
                        return "kotlin.collections.Collection";
                    }
                    break;
                case -527879800:
                    break;
                case -515992664:
                    break;
                case -246476834:
                    if (str.equals("kotlin.jvm.internal.CharCompanionObject")) {
                        return "kotlin.Char.Companion";
                    }
                    break;
                case -207262728:
                    if (str.equals("kotlin.jvm.internal.LongCompanionObject")) {
                        return "kotlin.Long.Companion";
                    }
                    break;
                case -165139126:
                    if (str.equals("java.util.Map$Entry")) {
                        return "kotlin.collections.Map.Entry";
                    }
                    break;
                case 104431:
                    if (str.equals("int")) {
                        return "kotlin.Int";
                    }
                    break;
                case 3039496:
                    break;
                case 3052374:
                    break;
                case 3327612:
                    break;
                case 64711720:
                    break;
                case 65821278:
                    if (str.equals("java.util.List")) {
                        return "kotlin.collections.List";
                    }
                    break;
                case 77230534:
                    if (str.equals("kotlin.jvm.internal.ShortCompanionObject")) {
                        return "kotlin.Short.Companion";
                    }
                    break;
                case 97526364:
                    break;
                case 109413500:
                    break;
                case 155276373:
                    break;
                case 226173651:
                    if (str.equals("kotlin.jvm.internal.EnumCompanionObject")) {
                        return "kotlin.Enum.Companion";
                    }
                    break;
                case 344809556:
                    break;
                case 398507100:
                    break;
                case 398585941:
                    if (str.equals("java.lang.Enum")) {
                        return "kotlin.Enum";
                    }
                    break;
                case 398795216:
                    break;
                case 482629606:
                    if (str.equals("kotlin.jvm.internal.FloatCompanionObject")) {
                        return "kotlin.Float.Companion";
                    }
                    break;
                case 499831342:
                    if (str.equals("java.util.Iterator")) {
                        return "kotlin.collections.Iterator";
                    }
                    break;
                case 577341676:
                    if (str.equals("java.util.ListIterator")) {
                        return "kotlin.collections.ListIterator";
                    }
                    break;
                case 599019395:
                    if (str.equals("kotlin.jvm.internal.StringCompanionObject")) {
                        return "kotlin.String.Companion";
                    }
                    break;
                case 761287205:
                    break;
                case 1052881309:
                    if (str.equals("java.lang.Number")) {
                        return "kotlin.Number";
                    }
                    break;
                case 1063877011:
                    if (str.equals("java.lang.Object")) {
                        return "kotlin.Any";
                    }
                    break;
                case 1195259493:
                    if (str.equals("java.lang.String")) {
                        return "kotlin.String";
                    }
                    break;
                case 1275614662:
                    if (str.equals("java.lang.Iterable")) {
                        return "kotlin.collections.Iterable";
                    }
                    break;
                case 1383693018:
                    if (str.equals("kotlin.jvm.internal.BooleanCompanionObject")) {
                        return "kotlin.Boolean.Companion";
                    }
                    break;
                case 1630335596:
                    if (str.equals("java.lang.Throwable")) {
                        return "kotlin.Throwable";
                    }
                    break;
                case 1877171123:
                    if (str.equals("kotlin.jvm.internal.IntCompanionObject")) {
                        return "kotlin.Int.Companion";
                    }
                    break;
                default:
                    switch (hashCode) {
                        case -1811142716:
                            if (str.equals("kotlin.jvm.functions.Function10")) {
                                return "kotlin.Function10";
                            }
                            break;
                        case -1811142715:
                            if (str.equals("kotlin.jvm.functions.Function11")) {
                                return "kotlin.Function11";
                            }
                            break;
                        case -1811142714:
                            if (str.equals("kotlin.jvm.functions.Function12")) {
                                return "kotlin.Function12";
                            }
                            break;
                        case -1811142713:
                            if (str.equals("kotlin.jvm.functions.Function13")) {
                                return "kotlin.Function13";
                            }
                            break;
                        case -1811142712:
                            if (str.equals("kotlin.jvm.functions.Function14")) {
                                return "kotlin.Function14";
                            }
                            break;
                        case -1811142711:
                            if (str.equals("kotlin.jvm.functions.Function15")) {
                                return "kotlin.Function15";
                            }
                            break;
                        case -1811142710:
                            if (str.equals("kotlin.jvm.functions.Function16")) {
                                return "kotlin.Function16";
                            }
                            break;
                        case -1811142709:
                            if (str.equals("kotlin.jvm.functions.Function17")) {
                                return "kotlin.Function17";
                            }
                            break;
                        case -1811142708:
                            if (str.equals("kotlin.jvm.functions.Function18")) {
                                return "kotlin.Function18";
                            }
                            break;
                        case -1811142707:
                            if (str.equals("kotlin.jvm.functions.Function19")) {
                                return "kotlin.Function19";
                            }
                            break;
                        default:
                            switch (hashCode) {
                                case -1811142685:
                                    if (str.equals("kotlin.jvm.functions.Function20")) {
                                        return "kotlin.Function20";
                                    }
                                    break;
                                case -1811142684:
                                    if (str.equals("kotlin.jvm.functions.Function21")) {
                                        return "kotlin.Function21";
                                    }
                                    break;
                                case -1811142683:
                                    if (str.equals("kotlin.jvm.functions.Function22")) {
                                        return "kotlin.Function22";
                                    }
                                    break;
                                default:
                                    switch (hashCode) {
                                        case 80123371:
                                            if (str.equals("kotlin.jvm.functions.Function0")) {
                                                return "kotlin.Function0";
                                            }
                                            break;
                                        case 80123372:
                                            if (str.equals("kotlin.jvm.functions.Function1")) {
                                                return "kotlin.Function1";
                                            }
                                            break;
                                        case 80123373:
                                            if (str.equals("kotlin.jvm.functions.Function2")) {
                                                return "kotlin.Function2";
                                            }
                                            break;
                                        case 80123374:
                                            if (str.equals("kotlin.jvm.functions.Function3")) {
                                                return "kotlin.Function3";
                                            }
                                            break;
                                        case 80123375:
                                            if (str.equals("kotlin.jvm.functions.Function4")) {
                                                return "kotlin.Function4";
                                            }
                                            break;
                                        case 80123376:
                                            if (str.equals("kotlin.jvm.functions.Function5")) {
                                                return "kotlin.Function5";
                                            }
                                            break;
                                        case 80123377:
                                            if (str.equals("kotlin.jvm.functions.Function6")) {
                                                return "kotlin.Function6";
                                            }
                                            break;
                                        case 80123378:
                                            if (str.equals("kotlin.jvm.functions.Function7")) {
                                                return "kotlin.Function7";
                                            }
                                            break;
                                        case 80123379:
                                            if (str.equals("kotlin.jvm.functions.Function8")) {
                                                return "kotlin.Function8";
                                            }
                                            break;
                                        case 80123380:
                                            if (str.equals("kotlin.jvm.functions.Function9")) {
                                                return "kotlin.Function9";
                                            }
                                            break;
                                    }
                            }
                    }
            }
        }

        @Nullable
        public final String b(@NotNull Class<?> jClass) {
            M.p(jClass, "jClass");
            String str = null;
            if (jClass.isAnonymousClass() || jClass.isLocalClass()) {
                return null;
            }
            if (!jClass.isArray()) {
                String name = jClass.getName();
                M.o(name, "getName(...)");
                String a10 = a(name);
                return a10 == null ? jClass.getCanonicalName() : a10;
            }
            Class<?> componentType = jClass.getComponentType();
            if (componentType.isPrimitive()) {
                String name2 = componentType.getName();
                M.o(name2, "getName(...)");
                String a11 = a(name2);
                if (a11 != null) {
                    str = a11 + Array.f73819J;
                }
            }
            return str == null ? "kotlin.Array" : str;
        }

        @Nullable
        public final String c(@NotNull Class<?> jClass) {
            M.p(jClass, "jClass");
            String str = null;
            if (jClass.isAnonymousClass()) {
                return null;
            }
            if (!jClass.isLocalClass()) {
                if (!jClass.isArray()) {
                    String name = jClass.getName();
                    M.o(name, "getName(...)");
                    String e10 = e(name);
                    return e10 == null ? jClass.getSimpleName() : e10;
                }
                Class<?> componentType = jClass.getComponentType();
                if (componentType.isPrimitive()) {
                    String name2 = componentType.getName();
                    M.o(name2, "getName(...)");
                    String e11 = e(name2);
                    if (e11 != null) {
                        str = e11 + Array.f73819J;
                    }
                }
                return str == null ? Array.f73819J : str;
            }
            String simpleName = jClass.getSimpleName();
            Method enclosingMethod = jClass.getEnclosingMethod();
            if (enclosingMethod != null) {
                M.m(simpleName);
                String P52 = ag.P.P5(simpleName, enclosingMethod.getName() + '$', null, 2, null);
                if (P52 != null) {
                    return P52;
                }
            }
            Constructor<?> enclosingConstructor = jClass.getEnclosingConstructor();
            if (enclosingConstructor == null) {
                M.m(simpleName);
                return ag.P.O5(simpleName, '$', null, 2, null);
            }
            M.m(simpleName);
            return ag.P.P5(simpleName, enclosingConstructor.getName() + '$', null, 2, null);
        }

        public final boolean d(@Nullable Object obj, @NotNull Class<?> jClass) {
            M.p(jClass, "jClass");
            Map map = C14024v.f95788d;
            M.n(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
            Integer num = (Integer) map.get(jClass);
            if (num != null) {
                return w0.B(obj, num.intValue());
            }
            if (jClass.isPrimitive()) {
                jClass = Lf.b.g(Lf.b.i(jClass));
            }
            return jClass.isInstance(obj);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:101:?, code lost:
        
            return "Double";
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x01d6, code lost:
        
            if (r11.equals("kotlin.jvm.internal.StringCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x01fc, code lost:
        
            if (r11.equals("kotlin.jvm.internal.FloatCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x0206, code lost:
        
            if (r11.equals("java.lang.Long") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:?, code lost:
        
            return "Long";
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x0221, code lost:
        
            if (r11.equals("java.lang.Byte") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:?, code lost:
        
            return "Byte";
         */
        /* JADX WARN: Code restructure failed: missing block: B:124:0x022e, code lost:
        
            if (r11.equals("java.lang.Boolean") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:126:?, code lost:
        
            return "Boolean";
         */
        /* JADX WARN: Code restructure failed: missing block: B:128:0x023b, code lost:
        
            if (r11.equals("kotlin.jvm.internal.EnumCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:130:0x0245, code lost:
        
            if (r11.equals("java.lang.Character") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:132:?, code lost:
        
            return "Char";
         */
        /* JADX WARN: Code restructure failed: missing block: B:134:0x0252, code lost:
        
            if (r11.equals("short") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:136:?, code lost:
        
            return "Short";
         */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x025f, code lost:
        
            if (r11.equals(androidx.constraintlayout.core.motion.utils.TypedValues.Custom.S_FLOAT) == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:140:?, code lost:
        
            return com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f81148b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:142:0x026c, code lost:
        
            if (r11.equals("kotlin.jvm.internal.ShortCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:147:0x0284, code lost:
        
            if (r11.equals(androidx.constraintlayout.core.motion.utils.TypedValues.Custom.S_BOOLEAN) == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:149:0x028e, code lost:
        
            if (r11.equals("long") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x0298, code lost:
        
            if (r11.equals("char") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:153:0x02a2, code lost:
        
            if (r11.equals("byte") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:161:0x02c4, code lost:
        
            if (r11.equals("kotlin.jvm.internal.LongCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:163:0x02ce, code lost:
        
            if (r11.equals("kotlin.jvm.internal.CharCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:165:0x02d8, code lost:
        
            if (r11.equals("java.lang.Short") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:167:0x02e2, code lost:
        
            if (r11.equals("java.lang.Float") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:175:0x0308, code lost:
        
            if (r11.equals("kotlin.jvm.internal.ByteCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:177:0x0311, code lost:
        
            if (r11.equals("double") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:197:0x035f, code lost:
        
            if (r11.equals("kotlin.jvm.internal.DoubleCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x016c, code lost:
        
            if (r11.equals("kotlin.jvm.internal.IntCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
        
            return "Companion";
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0187, code lost:
        
            if (r11.equals("kotlin.jvm.internal.BooleanCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x01c9, code lost:
        
            if (r11.equals("java.lang.Double") == false) goto L253;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0016. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0361 A[ORIG_RETURN, RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final String e(String str) {
            int hashCode = str.hashCode();
            switch (hashCode) {
                case -2061550653:
                    break;
                case -2056817302:
                    if (str.equals("java.lang.Integer")) {
                        return SerializableShaderEntry.f81155i;
                    }
                    return null;
                case -2034166429:
                    if (str.equals("java.lang.Cloneable")) {
                        return "Cloneable";
                    }
                    break;
                case -1979556166:
                    if (str.equals("java.lang.annotation.Annotation")) {
                        return "Annotation";
                    }
                    break;
                case -1571515090:
                    if (str.equals("java.lang.Comparable")) {
                        return "Comparable";
                    }
                    break;
                case -1383349348:
                    if (str.equals("java.util.Map")) {
                        return C12667d1.f69077c;
                    }
                    break;
                case -1383343454:
                    if (str.equals("java.util.Set")) {
                        return "Set";
                    }
                    break;
                case -1325958191:
                    break;
                case -1182275604:
                    break;
                case -1062240117:
                    if (str.equals("java.lang.CharSequence")) {
                        return "CharSequence";
                    }
                    break;
                case -688322466:
                    if (str.equals("java.util.Collection")) {
                        return "Collection";
                    }
                    break;
                case -527879800:
                    break;
                case -515992664:
                    break;
                case -246476834:
                    break;
                case -207262728:
                    break;
                case -165139126:
                    if (str.equals("java.util.Map$Entry")) {
                        return "Entry";
                    }
                    break;
                case 104431:
                    if (str.equals("int")) {
                        return SerializableShaderEntry.f81155i;
                    }
                    break;
                case 3039496:
                    break;
                case 3052374:
                    break;
                case 3327612:
                    break;
                case 64711720:
                    break;
                case 65821278:
                    if (str.equals("java.util.List")) {
                        return C12667d1.f69075a;
                    }
                    break;
                case 77230534:
                    break;
                case 97526364:
                    break;
                case 109413500:
                    break;
                case 155276373:
                    break;
                case 226173651:
                    break;
                case 344809556:
                    break;
                case 398507100:
                    break;
                case 398585941:
                    if (str.equals("java.lang.Enum")) {
                        return "Enum";
                    }
                    break;
                case 398795216:
                    break;
                case 482629606:
                    break;
                case 499831342:
                    if (str.equals("java.util.Iterator")) {
                        return "Iterator";
                    }
                    break;
                case 577341676:
                    if (str.equals("java.util.ListIterator")) {
                        return "ListIterator";
                    }
                    break;
                case 599019395:
                    break;
                case 761287205:
                    break;
                case 1052881309:
                    if (str.equals("java.lang.Number")) {
                        return "Number";
                    }
                    break;
                case 1063877011:
                    if (str.equals("java.lang.Object")) {
                        return "Any";
                    }
                    break;
                case 1195259493:
                    if (str.equals("java.lang.String")) {
                        return SerializableShaderEntry.f81157k;
                    }
                    break;
                case 1275614662:
                    if (str.equals("java.lang.Iterable")) {
                        return "Iterable";
                    }
                    break;
                case 1383693018:
                    break;
                case 1630335596:
                    if (str.equals("java.lang.Throwable")) {
                        return "Throwable";
                    }
                    break;
                case 1877171123:
                    break;
                default:
                    switch (hashCode) {
                        case -1811142716:
                            if (str.equals("kotlin.jvm.functions.Function10")) {
                                return "Function10";
                            }
                            break;
                        case -1811142715:
                            if (str.equals("kotlin.jvm.functions.Function11")) {
                                return "Function11";
                            }
                            break;
                        case -1811142714:
                            if (str.equals("kotlin.jvm.functions.Function12")) {
                                return "Function12";
                            }
                            break;
                        case -1811142713:
                            if (str.equals("kotlin.jvm.functions.Function13")) {
                                return "Function13";
                            }
                            break;
                        case -1811142712:
                            if (str.equals("kotlin.jvm.functions.Function14")) {
                                return "Function14";
                            }
                            break;
                        case -1811142711:
                            if (str.equals("kotlin.jvm.functions.Function15")) {
                                return "Function15";
                            }
                            break;
                        case -1811142710:
                            if (str.equals("kotlin.jvm.functions.Function16")) {
                                return "Function16";
                            }
                            break;
                        case -1811142709:
                            if (str.equals("kotlin.jvm.functions.Function17")) {
                                return "Function17";
                            }
                            break;
                        case -1811142708:
                            if (str.equals("kotlin.jvm.functions.Function18")) {
                                return "Function18";
                            }
                            break;
                        case -1811142707:
                            if (str.equals("kotlin.jvm.functions.Function19")) {
                                return "Function19";
                            }
                            break;
                        default:
                            switch (hashCode) {
                                case -1811142685:
                                    if (str.equals("kotlin.jvm.functions.Function20")) {
                                        return "Function20";
                                    }
                                    break;
                                case -1811142684:
                                    if (str.equals("kotlin.jvm.functions.Function21")) {
                                        return "Function21";
                                    }
                                    break;
                                case -1811142683:
                                    if (str.equals("kotlin.jvm.functions.Function22")) {
                                        return "Function22";
                                    }
                                    break;
                                default:
                                    switch (hashCode) {
                                        case 80123371:
                                            if (str.equals("kotlin.jvm.functions.Function0")) {
                                                return "Function0";
                                            }
                                            break;
                                        case 80123372:
                                            if (str.equals("kotlin.jvm.functions.Function1")) {
                                                return "Function1";
                                            }
                                            break;
                                        case 80123373:
                                            if (str.equals("kotlin.jvm.functions.Function2")) {
                                                return "Function2";
                                            }
                                            break;
                                        case 80123374:
                                            if (str.equals("kotlin.jvm.functions.Function3")) {
                                                return "Function3";
                                            }
                                            break;
                                        case 80123375:
                                            if (str.equals("kotlin.jvm.functions.Function4")) {
                                                return "Function4";
                                            }
                                            break;
                                        case 80123376:
                                            if (str.equals("kotlin.jvm.functions.Function5")) {
                                                return "Function5";
                                            }
                                            break;
                                        case 80123377:
                                            if (str.equals("kotlin.jvm.functions.Function6")) {
                                                return "Function6";
                                            }
                                            break;
                                        case 80123378:
                                            if (str.equals("kotlin.jvm.functions.Function7")) {
                                                return "Function7";
                                            }
                                            break;
                                        case 80123379:
                                            if (str.equals("kotlin.jvm.functions.Function8")) {
                                                return "Function8";
                                            }
                                            break;
                                        case 80123380:
                                            if (str.equals("kotlin.jvm.functions.Function9")) {
                                                return "Function9";
                                            }
                                            break;
                                    }
                            }
                    }
            }
        }

        public a() {
        }
    }

    static {
        List Q10 = pf.H.Q(Mf.a.class, Mf.l.class, Mf.p.class, Mf.q.class, Mf.r.class, Mf.s.class, Mf.t.class, Mf.u.class, Mf.v.class, Mf.w.class, Mf.b.class, Mf.c.class, Mf.d.class, Mf.e.class, Mf.f.class, Mf.g.class, Mf.h.class, Mf.i.class, Mf.j.class, Mf.k.class, Mf.m.class, Mf.n.class, Mf.o.class);
        ArrayList arrayList = new ArrayList(pf.I.d0(Q10, 10));
        int i10 = 0;
        for (Object obj : Q10) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            arrayList.add(nf.v0.a((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        f95788d = pf.o0.D0(arrayList);
    }

    public C14024v(@NotNull Class<?> jClass) {
        M.p(jClass, "jClass");
        this.f95789b = jClass;
    }

    @InterfaceC14422l0(version = "1.1")
    public static void D() {
    }

    @InterfaceC14422l0(version = "1.4")
    public static void F() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void H() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void I() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void J() {
    }

    @InterfaceC14422l0(version = "1.5")
    public static void L() {
    }

    @InterfaceC14422l0(version = "1.3")
    public static void n() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void p() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void q() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void r() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void s() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void t() {
    }

    @InterfaceC14422l0(version = "1.1")
    public static void u() {
    }

    @Override
    @Nullable
    public Object A() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean B() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean C() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean K(@Nullable Object obj) {
        return f95787c.d(obj, f());
    }

    @Override
    public boolean O() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean Q() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    @NotNull
    public List<Wf.r> R() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean U() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean d() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C14024v) && M.g(Lf.b.g(this), Lf.b.g((KClass) obj));
    }

    @Override
    @NotNull
    public Class<?> f() {
        return this.f95789b;
    }

    @Override
    @NotNull
    public List<Annotation> getAnnotations() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    @NotNull
    public Collection<Wf.h<Object>> getConstructors() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    @NotNull
    public Collection<Wf.c<?>> getMembers() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    @Nullable
    public String getQualifiedName() {
        return f95787c.b(f());
    }

    @Override
    @Nullable
    public String getSimpleName() {
        return f95787c.c(f());
    }

    @Override
    @NotNull
    public List<Wf.s> getTypeParameters() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    @Nullable
    public Wf.v getVisibility() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public int hashCode() {
        return Lf.b.g(this).hashCode();
    }

    @Override
    public boolean isAbstract() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean isFinal() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean isOpen() {
        l();
        throw new KotlinNothingValueException();
    }

    public final Void l() {
        throw new KotlinReflectionNotSupportedError();
    }

    @NotNull
    public String toString() {
        return f().toString() + n0.f95758b;
    }

    @Override
    @NotNull
    public Collection<KClass<?>> x() {
        l();
        throw new KotlinNothingValueException();
    }

    @Override
    @NotNull
    public List<KClass<? extends Object>> z() {
        l();
        throw new KotlinNothingValueException();
    }
}
