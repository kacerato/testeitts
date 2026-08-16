package B6;

import Vf.l;
import ag.C3639v;
import ag.EnumC3641x;
import ag.r;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.ardor3d.util.resource.ResourceLocatorTool;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.blacksquircle.ui.language.base.span.StyleSpan;
import org.blacksquircle.ui.language.base.span.SyntaxHighlightSpan;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import pf.z0;

@t0({"SMAP\nGLSLStyler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLSLStyler.kt\ncom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/GLSL/GLSLStyler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1807#2,3:143\n*S KotlinDebug\n*F\n+ 1 GLSLStyler.kt\ncom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/GLSL/GLSLStyler\n*L\n58#1:143,3\n*E\n"})
public final class d implements LanguageStyler {

    @NotNull
    public static final a f1573a = new a(null);

    @NotNull
    public static final Set<String> f1574b = z0.u("void", "bool", "int", TypedValues.Custom.S_FLOAT, "vec2", "vec3", "vec4", "mat2", "mat3", "mat4", "sampler2D", "samplerCube", "in", "out", "inout", "uniform", "varying", ClasspathEntry.TAG_ATTRIBUTE, "layout", "const", "break", "continue", "do", "for", "while", "if", "else", "return", "struct", "discard", "precision", "highp", "mediump", "lowp");

    @NotNull
    public static final Set<String> f1575c = z0.u("radians", "degrees", "sin", "cos", "tan", "asin", "acos", "atan", "pow", Telephony.BaseMmsColumns.EXPIRY, "log", "exp2", "log2", "sqrt", "inversesqrt", "abs", "sign", "floor", "ceil", "fract", "mod", "min", "max", "clamp", "mix", "step", "smoothstep", "length", "distance", "dot", "cross", "normalize", "faceforward", "reflect", "refract", ResourceLocatorTool.TYPE_TEXTURE, "texture2D", "textureCube");

    @NotNull
    public static final C3639v f1576d = new C3639v("#\\s*\\w+");

    @NotNull
    public static final C3639v f1577e = new C3639v("//.*");

    @NotNull
    public static final C3639v f1578f = new C3639v("/\\*.*?\\*/", EnumC3641x.DOT_MATCHES_ALL);

    @NotNull
    public static final C3639v f1579g = new C3639v("\"([^\"\\\\]|\\\\.)*\"");

    @NotNull
    public static final C3639v f1580h = new C3639v("'([^'\\\\]|\\\\.)*'");

    @NotNull
    public static final C3639v f1581i = new C3639v("\\b\\d+(\\.\\d+)?\\b");

    @NotNull
    public static final C3639v f1582j = new C3639v("\\b[a-zA-Z_][a-zA-Z0-9_]*\\b");

    @NotNull
    public static final C3639v f1583k = new C3639v("[+\\-*/%=<>!&|^~]+");

    @NotNull
    public static final C3639v f1584l = new C3639v("\\bvoid\\s+([a-zA-Z_][a-zA0-9_]*)\\s*\\(");

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public static final void a(List<SyntaxHighlightSpan> list, List<l> list2, r rVar, int i10) {
        list.add(new SyntaxHighlightSpan(new StyleSpan(i10, false, false, false, false, 30, null), rVar.getRange().c(), rVar.getRange().d() + 1));
        list2.add(rVar.getRange());
    }

    public static final boolean b(List<l> list, int i10) {
        List<l> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (l lVar : list2) {
            int c10 = lVar.c();
            if (i10 <= lVar.d() && c10 <= i10) {
                return true;
            }
        }
        return false;
    }

    @Override
    @NotNull
    public List<SyntaxHighlightSpan> execute(@NotNull String source, @NotNull ColorScheme scheme) {
        M.p(source, "source");
        M.p(scheme, "scheme");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = C3639v.g(f1584l, source, 0, 2, null).iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((r) it.next()).c().get(1));
        }
        Iterator it2 = C3639v.g(f1578f, source, 0, 2, null).iterator();
        while (it2.hasNext()) {
            a(arrayList, arrayList2, (r) it2.next(), scheme.getCommentColor());
        }
        Iterator it3 = C3639v.g(f1577e, source, 0, 2, null).iterator();
        while (it3.hasNext()) {
            a(arrayList, arrayList2, (r) it3.next(), scheme.getCommentColor());
        }
        Iterator it4 = C3639v.g(f1579g, source, 0, 2, null).iterator();
        while (it4.hasNext()) {
            a(arrayList, arrayList2, (r) it4.next(), scheme.getStringColor());
        }
        Iterator it5 = C3639v.g(f1580h, source, 0, 2, null).iterator();
        while (it5.hasNext()) {
            a(arrayList, arrayList2, (r) it5.next(), scheme.getStringColor());
        }
        for (r rVar : C3639v.g(f1576d, source, 0, 2, null)) {
            if (!b(arrayList2, rVar.getRange().c())) {
                arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getKeywordColor(), false, false, false, false, 30, null), rVar.getRange().c(), rVar.getRange().d() + 1));
            }
        }
        for (r rVar2 : C3639v.g(f1581i, source, 0, 2, null)) {
            if (!b(arrayList2, rVar2.getRange().c())) {
                arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getNumberColor(), false, false, false, false, 30, null), rVar2.getRange().c(), rVar2.getRange().d() + 1));
            }
        }
        for (r rVar3 : C3639v.g(f1583k, source, 0, 2, null)) {
            if (!b(arrayList2, rVar3.getRange().c())) {
                arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getOperatorColor(), false, false, false, false, 30, null), rVar3.getRange().c(), rVar3.getRange().d() + 1));
            }
        }
        for (r rVar4 : C3639v.g(f1582j, source, 0, 2, null)) {
            if (!b(arrayList2, rVar4.getRange().c())) {
                String value = rVar4.getValue();
                if (f1574b.contains(value)) {
                    arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getKeywordColor(), false, false, false, false, 30, null), rVar4.getRange().c(), rVar4.getRange().d() + 1));
                } else if (f1575c.contains(value)) {
                    arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getMethodColor(), false, false, false, false, 30, null), rVar4.getRange().c(), rVar4.getRange().d() + 1));
                } else if (linkedHashSet.contains(value)) {
                    arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getMethodColor(), false, false, false, false, 30, null), rVar4.getRange().c(), rVar4.getRange().d() + 1));
                }
            }
        }
        for (r rVar5 : C3639v.g(new C3639v("[\\[\\]]"), source, 0, 2, null)) {
            arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getGutterDividerColor(), false, false, false, false, 30, null), rVar5.getRange().c(), rVar5.getRange().d() + 1));
        }
        for (r rVar6 : C3639v.g(new C3639v("\\b([a-zA-Z_][a-zA-Z0-9_]*)\\s*\\("), source, 0, 2, null)) {
            String str = rVar6.c().get(1);
            if (linkedHashSet.contains(str) || f1575c.contains(str)) {
                arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getMethodColor(), false, false, false, false, 30, null), rVar6.getRange().c(), rVar6.getRange().d() + 1));
            }
        }
        return arrayList;
    }
}
