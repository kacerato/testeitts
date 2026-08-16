package L6;

import M6.b;
import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Position;
import com.github.javaparser.Range;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import okhttp3.v;

public abstract class a {

    public static final String f11613a = ".fori";

    public static final String f11614b = "/*CURSOR*/";

    public abstract String a(String receiverExpression, Class<?> receiverType);

    public String b(String accessExpression) {
        return "for (int i = 0; i < " + accessExpression + "; i ++) {\n    /*CURSOR*/\n}";
    }

    public String c(String receiverExpression, Class<?> receiverType) {
        return "for loop over " + receiverExpression;
    }

    public M6.b d(String fullScript, String lineText, int lineNumber, int cursorPosition, String lineSuffix) {
        Class<?> cls;
        String a10;
        M6.b bVar = null;
        if (!EditorSettings.a().codeCompletion.e() || !n(lineText)) {
            return null;
        }
        String g10 = g(lineText);
        if (g10.isEmpty()) {
            return null;
        }
        if (!l(g10)) {
            if (!m(g10)) {
                return null;
            }
            Class<?> v10 = v(fullScript, lineNumber, g10);
            if (v10 != null && x(v10)) {
                cls = v10;
                a10 = a(g10, v10);
            }
            return bVar;
        }
        if (!w(g10)) {
            return null;
        }
        a10 = a(g10, null);
        cls = null;
        if (a10 != null && !a10.isEmpty()) {
            String b10 = b(a10);
            bVar = new M6.b();
            bVar.f14567a = c(g10, cls);
            bVar.f14568b = "fori";
            bVar.f14576j = "for-index";
            bVar.f14572f = false;
            bVar.f14573g = false;
            bVar.f14575i = R.drawable.letter_l_v2;
            bVar.f14581o = b10;
            bVar.f14582p = true;
            b.a aVar = bVar.f14583q;
            aVar.f14584a = lineText;
            if (lineSuffix == null) {
                lineSuffix = "";
            }
            aVar.f14585b = lineSuffix;
            aVar.f14586c = lineNumber;
            aVar.f14587d = cursorPosition;
        }
        return bVar;
    }

    public final void e(Node node, int lineNumber, List<Node> matches) {
        Optional<Range> range = node.getRange();
        if (range.isPresent() && f(range.get(), lineNumber)) {
            matches.add(node);
        }
        Iterator<Node> it = node.getChildNodes().iterator();
        while (it.hasNext()) {
            e(it.next(), lineNumber, matches);
        }
    }

    public final boolean f(Range range, int lineNumber) {
        return lineNumber >= range.begin.line && lineNumber <= range.end.line;
    }

    public final String g(String lineText) {
        String trim;
        int lastIndexOf;
        return (lineText == null || lineText.isEmpty() || (lastIndexOf = (trim = lineText.trim()).lastIndexOf(46)) < 0) ? "" : trim.substring(0, lastIndexOf).trim();
    }

    public final Node h(Node root, int lineNumber) {
        int q10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        e(root, lineNumber, steppedArrayList);
        int i10 = Integer.MAX_VALUE;
        for (Node node : steppedArrayList) {
            Optional<Range> range = node.getRange();
            if (range.isPresent() && (q10 = q(range.get())) < i10) {
                root = node;
                i10 = q10;
            }
        }
        return root;
    }

    public final boolean i(Node node, int lineNumber) {
        Optional<Range> range = node.getRange();
        return !range.isPresent() || range.get().begin.line <= lineNumber;
    }

    public final boolean j(VariableDeclarator variableDeclarator, BlockStmt blockStmt) {
        Optional<N> findAncestor = variableDeclarator.findAncestor(BlockStmt.class);
        return findAncestor.isPresent() && findAncestor.get() == blockStmt;
    }

    public final boolean k(FieldDeclaration fieldDeclaration) {
        if (fieldDeclaration == null) {
            return false;
        }
        String simpleName = H6.g.class.getSimpleName();
        Iterator<AnnotationExpr> it = fieldDeclaration.getAnnotations().iterator();
        while (it.hasNext()) {
            AnnotationExpr next = it.next();
            if (next != null) {
                String nameAsString = next.getNameAsString();
                if (simpleName.equals(nameAsString)) {
                    return true;
                }
                if (nameAsString.endsWith("." + simpleName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean l(String value) {
        return value != null && value.matches("[+-]?(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eE][+-]?\\d+)?[fFdDlL]?");
    }

    public final boolean m(String value) {
        return value != null && value.matches("[A-Za-z_][A-Za-z0-9_]*");
    }

    public final boolean n(String lineText) {
        String d10;
        if (lineText == null || (d10 = K6.h.d(lineText.trim())) == null || d10.isEmpty()) {
            return false;
        }
        if (".".equals(d10)) {
            return true;
        }
        return f11613a.startsWith("." + d10.toLowerCase());
    }

    public final boolean o(String declaredName, String typedPrefix) {
        return (declaredName == null || typedPrefix == null || typedPrefix.isEmpty() || !declaredName.regionMatches(true, 0, typedPrefix, 0, typedPrefix.length())) ? false : true;
    }

    public final String p(String typeName) {
        if (typeName == null) {
            return "";
        }
        String trim = typeName.trim();
        int indexOf = trim.indexOf(60);
        if (indexOf >= 0) {
            trim = trim.substring(0, indexOf);
        }
        while (trim.endsWith(v.f99450n)) {
            trim = trim.substring(0, trim.length() - 2);
        }
        return trim.trim();
    }

    public final int q(Range range) {
        Position position = range.end;
        int i10 = position.line;
        Position position2 = range.begin;
        return ((i10 - position2.line) * 1000) + (position.column - position2.column);
    }

    public final String r(String fullScript, int lineNumber, String replacement) {
        if (fullScript != null && !fullScript.isEmpty()) {
            String[] split = fullScript.split("\\r?\\n", -1);
            if (lineNumber >= 0 && lineNumber < split.length) {
                if (replacement == null) {
                    replacement = "";
                }
                split[lineNumber] = replacement;
                StringBuilder sb2 = new StringBuilder();
                for (int i10 = 0; i10 < split.length; i10++) {
                    if (i10 > 0) {
                        sb2.append('\n');
                    }
                    sb2.append(split[i10]);
                }
                return sb2.toString();
            }
        }
        return "";
    }

    public final Class<?> s(BlockStmt blockStmt, String targetName, int lineNumber) {
        Class<?> u10;
        for (VariableDeclarator variableDeclarator : blockStmt.findAll(VariableDeclarator.class)) {
            if (o(variableDeclarator.getNameAsString(), targetName) && j(variableDeclarator, blockStmt) && i(variableDeclarator, lineNumber) && (u10 = u(variableDeclarator.getType2().asString())) != null) {
                return u10;
            }
        }
        return null;
    }

    public final Class<?> t(Node scopeNode, String targetName, int lineNumber) {
        Class<?> u10;
        Class<?> u11;
        Class<?> u12;
        Class<?> u13;
        if (scopeNode instanceof BlockStmt) {
            return s((BlockStmt) scopeNode, targetName, lineNumber);
        }
        if (scopeNode instanceof MethodDeclaration) {
            Iterator<Parameter> it = ((MethodDeclaration) scopeNode).getParameters().iterator();
            while (it.hasNext()) {
                Parameter next = it.next();
                if (o(next.getNameAsString(), targetName) && i(next, lineNumber) && (u13 = u(next.getType2().asString())) != null) {
                    return u13;
                }
            }
            return null;
        }
        if (scopeNode instanceof ConstructorDeclaration) {
            Iterator<Parameter> it2 = ((ConstructorDeclaration) scopeNode).getParameters().iterator();
            while (it2.hasNext()) {
                Parameter next2 = it2.next();
                if (o(next2.getNameAsString(), targetName) && i(next2, lineNumber) && (u12 = u(next2.getType2().asString())) != null) {
                    return u12;
                }
            }
            return null;
        }
        if (scopeNode instanceof ClassOrInterfaceDeclaration) {
            for (FieldDeclaration fieldDeclaration : ((ClassOrInterfaceDeclaration) scopeNode).getFields()) {
                if (!k(fieldDeclaration)) {
                    Iterator<VariableDeclarator> it3 = fieldDeclaration.getVariables().iterator();
                    while (it3.hasNext()) {
                        VariableDeclarator next3 = it3.next();
                        if (o(next3.getNameAsString(), targetName) && (u11 = u(next3.getType2().asString())) != null) {
                            return u11;
                        }
                    }
                }
            }
            return null;
        }
        if (!(scopeNode instanceof EnumDeclaration)) {
            return null;
        }
        for (FieldDeclaration fieldDeclaration2 : ((EnumDeclaration) scopeNode).getFields()) {
            if (!k(fieldDeclaration2)) {
                Iterator<VariableDeclarator> it4 = fieldDeclaration2.getVariables().iterator();
                while (it4.hasNext()) {
                    VariableDeclarator next4 = it4.next();
                    if (o(next4.getNameAsString(), targetName) && (u10 = u(next4.getType2().asString())) != null) {
                        return u10;
                    }
                }
            }
        }
        return null;
    }

    public final Class<?> u(String typeName) {
        String p10 = p(typeName);
        if (p10.isEmpty()) {
            return null;
        }
        try {
            return Class.forName(p10);
        } catch (Throwable unused) {
            Class<?> u10 = d8.k.u(p10);
            if (u10 != null) {
                return u10;
            }
            if (p10.indexOf(46) < 0) {
                Class<?> y10 = y("java.util." + p10);
                if (y10 != null) {
                    return y10;
                }
                Class<?> y11 = y("java.lang." + p10);
                if (y11 != null) {
                    return y11;
                }
                Class<?> y12 = y("JAVARuntime.AList");
                if (y12 != null && y12.getSimpleName().equals(p10)) {
                    return y12;
                }
                Class<?> y13 = y("JAVARuntime." + p10);
                if (y13 != null) {
                    return y13;
                }
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f A[Catch: Exception -> 0x0026, TryCatch #0 {Exception -> 0x0026, blocks: (B:3:0x0001, B:5:0x001b, B:8:0x003e, B:10:0x0044, B:13:0x004f, B:15:0x005f, B:17:0x0066, B:25:0x0028, B:27:0x0034, B:29:0x003a), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Class<?> v(String fullScript, int lineNumber, String targetName) {
        JavaParser javaParser;
        ParseResult<CompilationUnit> parse;
        Node h10;
        try {
            javaParser = new JavaParser(new ParserConfiguration().setLanguageLevel(ParserConfiguration.LanguageLevel.JAVA_8));
            parse = javaParser.parse(fullScript);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (parse.isSuccessful()) {
            if (!parse.getResult().isPresent()) {
            }
            if (parse.isSuccessful() && parse.getResult().isPresent()) {
                for (h10 = h(parse.getResult().get(), lineNumber); h10 != null; h10 = h10.getParentNode().orElse(null)) {
                    Class<?> t10 = t(h10, targetName, lineNumber);
                    if (t10 != null) {
                        return t10;
                    }
                }
                return null;
            }
            return null;
        }
        String r10 = r(fullScript, lineNumber, ";");
        if (!r10.isEmpty() && !r10.equals(fullScript)) {
            parse = javaParser.parse(r10);
        }
        if (parse.isSuccessful()) {
            while (h10 != null) {
            }
            return null;
        }
        return null;
    }

    public boolean w(String receiverExpression) {
        return false;
    }

    public abstract boolean x(Class<?> receiverType);

    public final Class<?> y(String fqcn) {
        try {
            return Class.forName(fqcn);
        } catch (Throwable unused) {
            return null;
        }
    }
}
