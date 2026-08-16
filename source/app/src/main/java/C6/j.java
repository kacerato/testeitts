package C6;

import java.util.LinkedList;

public class j {
    /* JADX WARN: Multi-variable type inference failed */
    public void a(Class currentScriptClass, String line) {
        String[] split = H6.a.a(line).replaceAll("]\\[", "]@<ENTRY>@\\[").split("@<ENTRY>@");
        LinkedList linkedList = new LinkedList();
        boolean z10 = true;
        int length = split.length - 1;
        Class cls = null;
        i iVar = null;
        int i10 = 0;
        while (true) {
            if (length < 0) {
                break;
            }
            String str = split[length];
            if (str.equals("[LPAREN]")) {
                i10--;
            } else if (str.equals("[RPAREN]")) {
                i10++;
            } else if (i10 == 0) {
                if (str.equals("[DOT]")) {
                    if (iVar != null) {
                        linkedList.add(iVar);
                        iVar = null;
                    }
                } else if (str.startsWith("[ID@") && iVar == null) {
                    iVar = new i(str.substring(5, str.length() - 2), false, false);
                }
            } else if (i10 >= 0) {
                continue;
            } else {
                if (!str.startsWith("[ID@")) {
                    break;
                }
                if (iVar == null) {
                    linkedList.add(new i(str.substring(5, str.length() - 2), false, true));
                    iVar = null;
                    break;
                }
            }
            length--;
        }
        if (iVar != null) {
            linkedList.add(iVar);
        }
        int size = linkedList.size() - 1;
        String str2 = "";
        while (true) {
            if (size < 0) {
                z10 = false;
                break;
            }
            i iVar2 = (i) linkedList.get(size);
            if (cls != null) {
                Class c10 = H6.b.c(cls, iVar2.f2444a);
                if (c10 != null) {
                    cls = c10;
                } else {
                    str2 = iVar2.f2444a;
                }
            } else if (iVar2.f2446c) {
                cls = H6.b.a(iVar2.f2444a);
                if (cls == null) {
                    str2 = iVar2.f2444a;
                }
            } else {
                cls = H6.b.d(currentScriptClass, iVar2.f2444a);
                if (cls == null && (cls = H6.b.a(iVar2.f2444a)) == null) {
                    str2 = iVar2.f2444a;
                }
            }
            size--;
        }
        if (cls != null) {
            if (z10) {
                H6.b.b(cls);
            } else {
                H6.b.g(cls == currentScriptClass ? H6.b.f(cls, str2) : H6.b.e(cls, str2));
            }
        }
    }
}
