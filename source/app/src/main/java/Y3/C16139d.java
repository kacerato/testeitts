package y3;

import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;

public class C16139d extends v {

    public static final Gson f129957k = new Gson();

    public class a implements u {
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        
            if (r6.trim().isEmpty() == false) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
        
            return "ERROR: name cannot be empty";
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        
            r1 = r0.f129959b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
        
            if (r1 != null) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
        
            r1 = "equals";
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
        
            r4 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
        
            if (r1.isEmpty() != false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
        
            if ("contains".equalsIgnoreCase(r1) == false) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
        
            r1 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
        
            r2 = r0.f129960c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
        
            if (r2 == null) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        
            if (r2.trim().isEmpty() != false) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
        
            r4 = java.lang.Boolean.parseBoolean(r0.f129960c.trim());
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
        
            r6 = D3.a.b(r6, r4, r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x007f, code lost:
        
            if (r6.isEmpty() == false) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
        
            return "NOT FOUND: no matching files.";
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0084, code lost:
        
            r0 = new java.lang.StringBuilder();
            r6 = r6.iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0091, code lost:
        
            if (r6.hasNext() == false) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0093, code lost:
        
            r1 = r6.next();
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x009d, code lost:
        
            if (r0.length() <= 0) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x009f, code lost:
        
            r0.append("\n");
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00a4, code lost:
        
            r0.append(D3.a.n(r1));
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00b0, code lost:
        
            return r0.toString();
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0059, code lost:
        
            if ("equals".equalsIgnoreCase(r1) != false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x005b, code lost:
        
            return "ERROR: matchMode must be equals or contains";
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x005e, code lost:
        
            r1 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0040, code lost:
        
            r1 = r1.trim();
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public String a(String text) {
            try {
                b D10 = C16139d.D(text);
                if (D10 == null) {
                    return "ERROR: invalid request";
                }
                String str = D10.f129958a;
                if ((str != null && !str.trim().isEmpty()) || (text != null && text.trim().startsWith("{"))) {
                    text = str;
                }
                return "ERROR: name cannot be empty";
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public static final class b {

        public String f129958a;

        public String f129959b;

        public String f129960c;

        public b() {
        }

        public b(a aVar) {
            this();
        }
    }

    public C16139d() {
        super("io.find", "Searches files by name inside the loaded project and returns their full paths. Supports wildcard patterns in name, like *.java.", new a());
        b("name", "File name to search for. Supports wildcard patterns like *.java and extension-only searches like .java.", true);
        b("matchMode", "Search mode: equals or contains. Defaults to equals.", false);
        b("caseInsensitive", "true or false. Defaults to true.", false);
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }

    public static b D(String text) {
        a aVar = null;
        if (text == null || text.trim().isEmpty()) {
            return new b(aVar);
        }
        String trim = text.trim();
        if (trim.startsWith("{")) {
            b bVar = (b) f129957k.fromJson(trim, b.class);
            return bVar == null ? new b(aVar) : bVar;
        }
        b bVar2 = new b(aVar);
        bVar2.f129958a = trim;
        return bVar2;
    }
}
