package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import com.google.gson.Gson;
import java.util.Collections;
import java.util.LinkedHashMap;

public final class e implements k0.o {

    public static final Gson f69874b = new Gson();

    public final v f69875a;

    public e(v toolObject) {
        if (toolObject == null) {
            throw new IllegalArgumentException("toolObject cannot be null");
        }
        this.f69875a = toolObject;
    }

    public static String c(String result) {
        return f69874b.toJson(Collections.singletonMap("result", result));
    }

    @Override
    public String a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("name", this.f69875a.j());
        linkedHashMap.put("description", this.f69875a.h());
        linkedHashMap.put("parameters", this.f69875a.k());
        return f69874b.toJson(linkedHashMap);
    }

    @Override
    public String b(String paramsJsonString) {
        try {
            if (this.f69875a.g() == null) {
                return c("ERROR: tool callback is missing");
            }
            String e10 = this.f69875a.e(paramsJsonString);
            r.v("Tool call[" + this.f69875a.f69946a + "] args:" + e10);
            this.f69875a.p().a("<font color=\"yellow\">Sys.call[" + this.f69875a.f69946a + "] args:" + e10 + "</font>\n");
            String a10 = this.f69875a.g().a(e10);
            this.f69875a.p().a("<font color=\"yellow\">Sys.call[" + this.f69875a.f69946a + "] result:" + a10 + "</font>\n\n");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Tool call[");
            sb2.append(this.f69875a.f69946a);
            sb2.append("] result:");
            sb2.append(a10);
            r.v(sb2.toString());
            if (a10 == null) {
                a10 = "";
            }
            return c(a10);
        } catch (Exception e11) {
            return c("ERROR: " + e11.getMessage());
        }
    }
}
