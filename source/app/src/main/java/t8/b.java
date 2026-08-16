package t8;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;

public class b {

    public final String f117184a;

    public String f117185b = "";

    public b(String originalCode) {
        this.f117184a = originalCode;
    }

    public void a() {
        this.f117185b = null;
        String str = this.f117184a;
        if (str == null || str.isEmpty()) {
            return;
        }
        this.f117185b = c(this.f117184a);
    }

    public final String b(String codigo) {
        return codigo.replaceAll("class\\s+(\\w+)", "public class $1");
    }

    public final String c(String codigoCSharp) {
        SteppedArrayList<String> steppedArrayList = new SteppedArrayList<>();
        return s(d(r(codigoCSharp, steppedArrayList)), steppedArrayList);
    }

    public final String d(String codigo) {
        return e(g(k(h(q(f(j(i(b(l(p(o(codigo))))))))))));
    }

    public final String e(String codigo) {
        return codigo.replaceAll("\\bvar\\b", "GenericVar");
    }

    public final String f(String codigo) {
        return codigo.replaceAll("foreach\\s*\\((\\w+)\\s+(\\w+)\\s+in\\s+(.*?)\\)", "for ($1 $2 : $3)").replaceAll("for\\s*\\(([^;]*);([^;]*);([^)]*)\\)", "for ($1; $2; $3)");
    }

    public final String g(String codigo) {
        Matcher matcher = Pattern.compile("class\\s+(\\w+)(<[^>]+>)?\\s*:\\s*(\\w+)(<[^>]+>)?").matcher(codigo);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            String str = "";
            String group2 = matcher.group(2) != null ? matcher.group(2) : "";
            String group3 = matcher.group(3);
            if (matcher.group(4) != null) {
                str = matcher.group(4);
            }
            matcher.appendReplacement(stringBuffer, ExternalAnnotationProvider.CLASS_PREFIX + group + group2 + " extends " + group3 + str);
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public final String h(String codigo) {
        Matcher matcher = Pattern.compile("List<([^>]*)>\\s+(\\w+)\\s*=\\s*new\\s+List<([^>]*)>\\s*\\{([^}]*)\\};").matcher(codigo);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            String group3 = matcher.group(4);
            matcher.appendReplacement(stringBuffer, "");
            stringBuffer.append(String.format("SteppedArrayList<%s> %s = new SteppedArrayList<%s>();\n", group, group2, group));
            stringBuffer.append(String.format("%s.addAll(Arrays.asList(%s));", group2, group3));
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public final String i(String codigo) {
        return codigo.replaceAll("static\\s+(\\w+)\\s+(\\w+)\\s*\\((.*?)\\)\\s*\\{", "public $1 $2($3) {");
    }

    public final String j(String codigo) {
        return codigo.replaceAll("(\\w+)\\s+(\\w+)\\s*\\((.*?)\\)\\s*\\{", "$1 $2($3) {");
    }

    public final String k(String codigo) {
        return codigo.replaceAll("\\bStart\\b", "start").replaceAll("\\bRepeat\\b", "repeat");
    }

    public final String l(String codigo) {
        return codigo.replaceAll("using\\s+([\\w.]+);", "import $1;");
    }

    public String m() {
        return this.f117185b;
    }

    public final String n(String palavra) {
        return palavra.substring(0, 1).toLowerCase() + palavra.substring(1);
    }

    public final String o(String codigo) {
        return codigo.replaceAll("//.*|/\\*(.|\\R)*?\\*/", "");
    }

    public final String p(String codigo) {
        return codigo.replaceAll("using\\s+System;", "");
    }

    public final String q(String codigo) {
        return codigo.replaceAll("Console\\.(\\w+)\\(", "System.out.println(");
    }

    public final String r(String codigo, SteppedArrayList<String> stringsLiterais) {
        Matcher matcher = Pattern.compile("\"(?:\\\\\"|[^\"])*\"").matcher(codigo);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            stringsLiterais.add(matcher.group(0));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("__TOKEN__");
            sb2.append(stringsLiterais.size() - 1);
            matcher.appendReplacement(stringBuffer, sb2.toString());
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public final String s(String codigo, SteppedArrayList<String> stringsLiterais) {
        for (int i10 = 0; i10 < stringsLiterais.size(); i10++) {
            codigo = codigo.replace("__TOKEN__" + i10, stringsLiterais.get(i10));
        }
        return codigo;
    }
}
