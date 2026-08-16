package K6;

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
import com.github.javaparser.ast.stmt.BlockStmt;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import okhttp3.v;

public final class c {

    public final d f10885a = new d();

    public final void a(Node node, int lineNumber, List<Node> matches) {
        Optional<Range> range = node.getRange();
        if (range.isPresent() && b(range.get(), lineNumber)) {
            matches.add(node);
        }
        Iterator<Node> it = node.getChildNodes().iterator();
        while (it.hasNext()) {
            a(it.next(), lineNumber, matches);
        }
    }

    public final boolean b(Range range, int lineNumber) {
        return lineNumber >= range.begin.line && lineNumber <= range.end.line;
    }

    public final String c(String lineText) {
        int lastIndexOf;
        int e10;
        if (lineText == null || lineText.isEmpty() || (lastIndexOf = lineText.lastIndexOf(61)) < 0) {
            return null;
        }
        String trim = lineText.substring(0, lastIndexOf).trim();
        if (trim.isEmpty() || (e10 = e(trim)) < 0) {
            return null;
        }
        String trim2 = u(trim.substring(0, e10).trim()).trim();
        if (trim2.isEmpty()) {
            return null;
        }
        return trim2;
    }

    public final Node d(Node root, int lineNumber) {
        int o10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        a(root, lineNumber, steppedArrayList);
        int i10 = Integer.MAX_VALUE;
        for (Node node : steppedArrayList) {
            Optional<Range> range = node.getRange();
            if (range.isPresent() && (o10 = o(range.get())) < i10) {
                root = node;
                i10 = o10;
            }
        }
        return root;
    }

    public final int e(String text) {
        int length = text.length() - 1;
        while (length >= 0 && !Character.isJavaIdentifierPart(text.charAt(length))) {
            length--;
        }
        if (length < 0) {
            return -1;
        }
        while (length >= 0 && Character.isJavaIdentifierPart(text.charAt(length))) {
            length--;
        }
        return length + 1;
    }

    public final boolean f(Node node, int lineNumber) {
        Optional<Range> range = node.getRange();
        return !range.isPresent() || range.get().begin.line <= lineNumber;
    }

    public final boolean g(VariableDeclarator variableDeclarator, BlockStmt blockStmt) {
        Optional<N> findAncestor = variableDeclarator.findAncestor(BlockStmt.class);
        return findAncestor.isPresent() && findAncestor.get() == blockStmt;
    }

    public final boolean h(String token) {
        return "public".equals(token) || "protected".equals(token) || "private".equals(token) || "static".equals(token) || "final".equals(token) || "volatile".equals(token) || "transient".equals(token) || "synchronized".equals(token) || "abstract".equals(token) || "native".equals(token) || "strictfp".equals(token);
    }

    public boolean i(String fullScript, String lineText, int lineNumber) {
        if (lineText == null || lineText.isEmpty() || lineText.trim().endsWith(".")) {
            return false;
        }
        String a10 = h.a(lineText);
        if (a10.isEmpty()) {
            return false;
        }
        if (j(fullScript, lineText, lineNumber, a10) || l(lineText, a10)) {
            return true;
        }
        return k(lineText, a10);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007a A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:6:0x001d, B:8:0x0037, B:11:0x0059, B:13:0x005f, B:16:0x006a, B:18:0x007a, B:20:0x007f, B:25:0x00c5, B:26:0x008d, B:28:0x0091, B:33:0x009f, B:35:0x00a3, B:36:0x00ae, B:38:0x00b4, B:49:0x0045, B:51:0x004f, B:53:0x0055), top: B:5:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean j(String fullScript, String lineText, int lineNumber, String currentIdentifier) {
        JavaParser javaParser;
        ParseResult<CompilationUnit> parse;
        Node d10;
        String p10 = p(fullScript, lineNumber, lineText + ";");
        if (p10.isEmpty()) {
            return false;
        }
        try {
            javaParser = new JavaParser(new ParserConfiguration().setLanguageLevel(ParserConfiguration.LanguageLevel.JAVA_8));
            parse = javaParser.parse(p10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (parse.isSuccessful()) {
            if (!parse.getResult().isPresent()) {
            }
            if (parse.isSuccessful() && parse.getResult().isPresent()) {
                for (d10 = d(parse.getResult().get(), lineNumber); d10 != null; d10 = d10.getParentNode().orElse(null)) {
                    if (d10 instanceof VariableDeclarator) {
                        if (m(((VariableDeclarator) d10).getNameAsString(), currentIdentifier)) {
                            return true;
                        }
                    } else if (d10 instanceof Parameter) {
                        if (m(((Parameter) d10).getNameAsString(), currentIdentifier)) {
                            return true;
                        }
                    } else if (d10 instanceof FieldDeclaration) {
                        Iterator<VariableDeclarator> it = ((FieldDeclaration) d10).getVariables().iterator();
                        while (it.hasNext()) {
                            if (m(it.next().getNameAsString(), currentIdentifier)) {
                                return true;
                            }
                        }
                    } else {
                        continue;
                    }
                }
                return false;
            }
            return false;
        }
        String p11 = p(fullScript, lineNumber, ";");
        if (!p11.isEmpty() && !p11.equals(fullScript)) {
            parse = javaParser.parse(p11);
        }
        if (parse.isSuccessful()) {
            while (d10 != null) {
            }
            return false;
        }
        return false;
    }

    public final boolean k(String lineText, String currentIdentifier) {
        int b10;
        int i10;
        if (lineText == null || lineText.isEmpty() || currentIdentifier == null || currentIdentifier.isEmpty() || (b10 = h.b(lineText)) <= 0 || b10 > lineText.length()) {
            return false;
        }
        String trim = lineText.substring(0, b10).trim();
        if (trim.isEmpty()) {
            return false;
        }
        int max = Math.max(trim.lastIndexOf(40), Math.max(trim.lastIndexOf(59), Math.max(trim.lastIndexOf(123), trim.lastIndexOf(125))));
        if (max >= 0 && (i10 = max + 1) < trim.length()) {
            trim = trim.substring(i10).trim();
        }
        String u10 = u(trim);
        if (u10.isEmpty()) {
            return false;
        }
        int max2 = Math.max(u10.lastIndexOf(32), Math.max(u10.lastIndexOf(9), u10.lastIndexOf(10)));
        if (max2 >= 0) {
            u10 = u10.substring(max2 + 1).trim();
        }
        String n10 = n(u10);
        return (n10.isEmpty() || t(n10) == null) ? false : true;
    }

    public final boolean l(String lineText, String currentIdentifier) {
        int b10;
        int i10;
        if (lineText == null || lineText.isEmpty() || currentIdentifier == null || currentIdentifier.isEmpty() || (b10 = h.b(lineText)) <= 0 || b10 > lineText.length()) {
            return false;
        }
        String trim = lineText.substring(0, b10).trim();
        if (trim.isEmpty()) {
            return false;
        }
        int max = Math.max(trim.lastIndexOf(40), Math.max(trim.lastIndexOf(59), Math.max(trim.lastIndexOf(123), trim.lastIndexOf(125))));
        if (max >= 0 && (i10 = max + 1) < trim.length()) {
            trim = trim.substring(i10).trim();
        }
        String u10 = u(trim);
        if (u10.isEmpty()) {
            return false;
        }
        String[] split = u10.split("\\s+");
        if (split.length < 2) {
            return false;
        }
        String n10 = n(split[0]);
        if (n10.isEmpty()) {
            return false;
        }
        if (t(n10) != null || "void".equalsIgnoreCase(n10)) {
            return m(split[split.length - 1], currentIdentifier);
        }
        return false;
    }

    public final boolean m(String declaredName, String typedPrefix) {
        if (declaredName == null || typedPrefix == null || typedPrefix.isEmpty()) {
            return false;
        }
        return declaredName.regionMatches(true, 0, typedPrefix, 0, typedPrefix.length());
    }

    public final String n(String typeName) {
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

    public final int o(Range range) {
        Position position = range.end;
        int i10 = position.line;
        Position position2 = range.begin;
        return ((i10 - position2.line) * 1000) + (position.column - position2.column);
    }

    public final String p(String fullScript, int lineNumber, String replacement) {
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

    /* JADX WARN: Removed duplicated region for block: B:24:0x007c A[Catch: Exception -> 0x0043, TryCatch #0 {Exception -> 0x0043, blocks: (B:12:0x001e, B:14:0x0038, B:17:0x005b, B:19:0x0061, B:22:0x006c, B:24:0x007c, B:26:0x0083, B:32:0x0045, B:34:0x0051, B:36:0x0057), top: B:11:0x001e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Class<?> q(String fullScript, String lineText, int lineNumber) {
        Node d10;
        Class<?> t10;
        String c10 = c(lineText);
        if (c10 != null && (t10 = t(c10)) != null) {
            return t10;
        }
        String a10 = this.f10885a.a(lineText);
        if (a10 != null && !a10.isEmpty()) {
            try {
                JavaParser javaParser = new JavaParser(new ParserConfiguration().setLanguageLevel(ParserConfiguration.LanguageLevel.JAVA_8));
                ParseResult<CompilationUnit> parse = javaParser.parse(fullScript);
                if (parse.isSuccessful()) {
                    if (!parse.getResult().isPresent()) {
                    }
                    if (parse.isSuccessful() && parse.getResult().isPresent()) {
                        for (d10 = d(parse.getResult().get(), lineNumber); d10 != null; d10 = d10.getParentNode().orElse(null)) {
                            Class<?> s10 = s(d10, a10, lineNumber);
                            if (s10 != null) {
                                return s10;
                            }
                        }
                    }
                    return null;
                }
                String p10 = p(fullScript, lineNumber, ";");
                if (!p10.isEmpty() && !p10.equals(fullScript)) {
                    parse = javaParser.parse(p10);
                }
                if (parse.isSuccessful()) {
                    while (d10 != null) {
                    }
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public final Class<?> r(BlockStmt blockStmt, String targetName, int lineNumber) {
        Class<?> t10;
        for (VariableDeclarator variableDeclarator : blockStmt.findAll(VariableDeclarator.class)) {
            if (targetName.equals(variableDeclarator.getNameAsString()) && g(variableDeclarator, blockStmt) && f(variableDeclarator, lineNumber) && (t10 = t(variableDeclarator.getType2().asString())) != null) {
                return t10;
            }
        }
        return null;
    }

    public final Class<?> s(Node scopeNode, String targetName, int lineNumber) {
        Class<?> t10;
        Class<?> t11;
        Class<?> t12;
        Class<?> t13;
        if (scopeNode instanceof BlockStmt) {
            Class<?> r10 = r((BlockStmt) scopeNode, targetName, lineNumber);
            if (r10 != null) {
                return r10;
            }
            return null;
        }
        if (scopeNode instanceof MethodDeclaration) {
            Iterator<Parameter> it = ((MethodDeclaration) scopeNode).getParameters().iterator();
            while (it.hasNext()) {
                Parameter next = it.next();
                if (targetName.equals(next.getNameAsString()) && f(next, lineNumber) && (t13 = t(next.getType2().asString())) != null) {
                    return t13;
                }
            }
            return null;
        }
        if (scopeNode instanceof ConstructorDeclaration) {
            Iterator<Parameter> it2 = ((ConstructorDeclaration) scopeNode).getParameters().iterator();
            while (it2.hasNext()) {
                Parameter next2 = it2.next();
                if (targetName.equals(next2.getNameAsString()) && f(next2, lineNumber) && (t12 = t(next2.getType2().asString())) != null) {
                    return t12;
                }
            }
            return null;
        }
        if (scopeNode instanceof ClassOrInterfaceDeclaration) {
            Iterator<FieldDeclaration> it3 = ((ClassOrInterfaceDeclaration) scopeNode).getFields().iterator();
            while (it3.hasNext()) {
                Iterator<VariableDeclarator> it4 = it3.next().getVariables().iterator();
                while (it4.hasNext()) {
                    VariableDeclarator next3 = it4.next();
                    if (targetName.equals(next3.getNameAsString()) && (t11 = t(next3.getType2().asString())) != null) {
                        return t11;
                    }
                }
            }
            return null;
        }
        if (!(scopeNode instanceof EnumDeclaration)) {
            return null;
        }
        Iterator<FieldDeclaration> it5 = ((EnumDeclaration) scopeNode).getFields().iterator();
        while (it5.hasNext()) {
            Iterator<VariableDeclarator> it6 = it5.next().getVariables().iterator();
            while (it6.hasNext()) {
                VariableDeclarator next4 = it6.next();
                if (targetName.equals(next4.getNameAsString()) && (t10 = t(next4.getType2().asString())) != null) {
                    return t10;
                }
            }
        }
        return null;
    }

    public final Class<?> t(String typeName) {
        String n10 = n(typeName);
        if (n10.isEmpty()) {
            return null;
        }
        try {
            return Class.forName(n10);
        } catch (Throwable unused) {
            Class<?> u10 = d8.k.u(n10);
            if (u10 != null) {
                return u10;
            }
            if (n10.indexOf(46) < 0) {
                Class<?> v10 = v("java.util." + n10);
                if (v10 != null) {
                    return v10;
                }
                Class<?> v11 = v("java.lang." + n10);
                if (v11 != null) {
                    return v11;
                }
                Class<?> v12 = v("JAVARuntime.AList");
                if (v12 != null && v12.getSimpleName().equals(n10)) {
                    return v12;
                }
                Class<?> v13 = v("JAVARuntime." + n10);
                if (v13 != null) {
                    return v13;
                }
            }
            return null;
        }
    }

    public final String u(String text) {
        String trim = text == null ? "" : text.trim();
        loop0: while (true) {
            for (boolean z10 = true; z10 && !trim.isEmpty(); z10 = false) {
                String[] split = trim.split("\\s+", 2);
                if (split.length == 0) {
                    break loop0;
                }
                if (h(split[0])) {
                    trim = split.length > 1 ? split[1].trim() : "";
                }
            }
        }
        return trim;
    }

    public final Class<?> v(String fqcn) {
        try {
            return Class.forName(fqcn);
        } catch (Throwable unused) {
            return null;
        }
    }
}
