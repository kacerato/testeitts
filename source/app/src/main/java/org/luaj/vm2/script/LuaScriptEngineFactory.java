package org.luaj.vm2.script;

import b3.s;
import java.util.Arrays;
import java.util.List;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineFactory;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class LuaScriptEngineFactory implements ScriptEngineFactory {
    private static final String[] EXTENSIONS = {"lua", ".lua"};
    private static final String[] MIMETYPES = {"text/lua", "application/lua"};
    private static final String[] NAMES = {"lua", "luaj"};
    private List extensions = Arrays.asList(EXTENSIONS);
    private List mimeTypes = Arrays.asList(MIMETYPES);
    private List names = Arrays.asList(NAMES);

    public String getEngineName() {
        return getScriptEngine().get("javax.script.engine").toString();
    }

    public String getEngineVersion() {
        return getScriptEngine().get("javax.script.engine_version").toString();
    }

    public List getExtensions() {
        return this.extensions;
    }

    public String getLanguageName() {
        return getScriptEngine().get("javax.script.language").toString();
    }

    public String getLanguageVersion() {
        return getScriptEngine().get("javax.script.language_version").toString();
    }

    public String getMethodCallSyntax(String str, String str2, String... strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str + s.f32937c + str2 + "(");
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            stringBuffer.append(strArr[i10]);
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    public List getMimeTypes() {
        return this.mimeTypes;
    }

    public List getNames() {
        return this.names;
    }

    public String getOutputStatement(String str) {
        return "print(" + str + ")";
    }

    public Object getParameter(String str) {
        return getScriptEngine().get(str).toString();
    }

    public String getProgram(String... strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append('\n');
            }
            stringBuffer.append(strArr[i10]);
        }
        return stringBuffer.toString();
    }

    public ScriptEngine getScriptEngine() {
        return new LuaScriptEngine();
    }
}
