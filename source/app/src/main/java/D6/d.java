package D6;

import C6.i;
import androidx.annotation.NonNull;
import b3.s;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import d8.j;
import d8.r;
import java.lang.reflect.Parameter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.utils.WordsManager;
import org.jetbrains.annotations.NotNull;

public class d implements SuggestionProvider {

    public WordsManager f4846a = new WordsManager();

    public Set<Suggestion> f4847b = new HashSet();

    public F6.b f4848c;

    public d(F6.b languageConnector) {
        this.f4848c = languageConnector;
    }

    private JavaMetaInfo c() {
        return this.f4848c.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(String line) {
        if (c() == null) {
            System.out.println("Could not generate auto complete for a null javametainfo");
            return;
        }
        j jVar = W7.b.f27310j;
        Class G02 = j.G0(c().f72515e);
        if (G02 == null) {
            System.out.println("Could not generate auto complete for a null java class");
            return;
        }
        String[] split = H6.a.a(line).replaceAll("]\\[", "]@<ENTRY>@\\[").split("@<ENTRY>@");
        LinkedList linkedList = new LinkedList();
        int length = split.length - 1;
        Class cls = null;
        i iVar = null;
        int i10 = 0;
        while (true) {
            if (length < 0) {
                break;
            }
            String str = split[length];
            if (!str.equals("[LPAREN]")) {
                if (!str.equals("[RPAREN]")) {
                    if (i10 != 0) {
                        if (i10 < 0) {
                            if (!str.startsWith("[ID@")) {
                                break;
                            }
                            if (iVar == null) {
                                linkedList.add(new i(str.substring(5, str.length() - 2), false, true));
                                iVar = null;
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else if (str.equals("[DOT]")) {
                        if (iVar != null) {
                            linkedList.add(iVar);
                            iVar = null;
                        }
                    } else if (str.startsWith("[ID@") && iVar == null) {
                        iVar = new i(str.substring(5, str.length() - 2), false, false);
                    }
                } else {
                    i10++;
                }
            } else {
                i10--;
            }
            length--;
        }
        if (iVar != null) {
            linkedList.add(iVar);
        }
        int size = linkedList.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            i iVar2 = (i) linkedList.get(size);
            if (cls != null) {
                Class c10 = H6.b.c(cls, iVar2.f2444a);
                if (c10 != null) {
                    cls = c10;
                }
            } else {
                if (iVar2.f2446c) {
                    cls = H6.b.a(iVar2.f2444a);
                    break;
                }
                try {
                    cls = H6.b.d(G02, iVar2.f2444a);
                    if (cls == null) {
                        cls = H6.b.a(iVar2.f2444a);
                    }
                } catch (Error | Exception e10) {
                    e10.printStackTrace();
                }
            }
            size--;
        }
        if (cls != null) {
            List<H6.j> b10 = H6.b.b(cls);
            LinkedList linkedList2 = new LinkedList();
            for (H6.j jVar2 : b10) {
                if (jVar2.f8263g) {
                    StringBuilder sb2 = new StringBuilder();
                    for (int i11 = 0; i11 < jVar2.f8261e.length; i11++) {
                        Parameter[] parameterArr = jVar2.f8262f;
                        if (parameterArr != null && parameterArr.length > i11 && parameterArr[i11].isNamePresent()) {
                            sb2.append(jVar2.f8262f[i11].getName());
                            sb2.append(s.f32937c);
                        }
                        sb2.append(jVar2.f8261e[i11].getSimpleName());
                        if (i11 < jVar2.f8261e.length - 1) {
                            sb2.append(", ");
                        }
                    }
                    linkedList2.add(sb2.toString());
                }
            }
            Iterator<E> it = linkedList2.iterator();
            while (it.hasNext()) {
                this.f4847b.add(new Suggestion(Suggestion.Type.NONE, (String) it.next(), ""));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(String line) {
        boolean z10;
        if (c() == null) {
            System.out.println("Could not generate auto complete for a null javametainfo");
            return;
        }
        j jVar = W7.b.f27310j;
        Class G02 = j.G0(c().f72515e);
        if (G02 == null) {
            System.out.println("Could not generate auto complete for a null java class");
            return;
        }
        String[] split = H6.a.a(line).replaceAll("]\\[", "]@<ENTRY>@\\[").split("@<ENTRY>@");
        LinkedList linkedList = new LinkedList();
        int length = split.length - 1;
        Class cls = null;
        i iVar = null;
        int i10 = 0;
        while (true) {
            if (length < 0) {
                break;
            }
            String str = split[length];
            if (!str.equals("[LPAREN]")) {
                if (!str.equals("[RPAREN]")) {
                    if (i10 != 0) {
                        if (i10 < 0) {
                            if (!str.startsWith("[ID@")) {
                                break;
                            }
                            if (iVar == null) {
                                linkedList.add(new i(str.substring(5, str.length() - 2), false, true));
                                iVar = null;
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else if (str.equals("[DOT]")) {
                        if (iVar != null) {
                            linkedList.add(iVar);
                            iVar = null;
                        }
                    } else if (str.startsWith("[ID@") && iVar == null) {
                        iVar = new i(str.substring(5, str.length() - 2), false, false);
                    }
                } else {
                    i10++;
                }
            } else {
                i10--;
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
                z10 = true;
            } else {
                try {
                    cls = H6.b.d(G02, iVar2.f2444a);
                    if (cls == null && (cls = H6.b.a(iVar2.f2444a)) == null) {
                        str2 = iVar2.f2444a;
                    }
                } catch (Error | Exception e10) {
                    e10.printStackTrace();
                }
            }
            size--;
        }
        if (cls != null) {
            List<H6.j> b10 = z10 ? H6.b.b(cls) : H6.b.g(cls == G02 ? H6.b.f(cls, str2) : H6.b.e(cls, str2));
            LinkedList linkedList2 = new LinkedList();
            for (H6.j jVar2 : b10) {
                if (jVar2.f8263g) {
                    StringBuilder sb2 = new StringBuilder();
                    for (int i11 = 0; i11 < jVar2.f8261e.length; i11++) {
                        Parameter[] parameterArr = jVar2.f8262f;
                        if (parameterArr != null && parameterArr.length > i11 && parameterArr[i11].isNamePresent()) {
                            sb2.append(jVar2.f8262f[i11].getName());
                            sb2.append(s.f32937c);
                        }
                        sb2.append(jVar2.f8261e[i11].getSimpleName());
                        if (i11 < jVar2.f8261e.length - 1) {
                            sb2.append(", ");
                        }
                    }
                    linkedList2.add("new " + jVar2.f8257a + "(" + sb2.toString() + ")");
                } else if (!jVar2.f8259c) {
                    linkedList2.add(jVar2.f8257a);
                } else if (jVar2.f8260d == 0) {
                    linkedList2.add(jVar2.f8257a + "()");
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    for (int i12 = 0; i12 < jVar2.f8261e.length; i12++) {
                        Parameter[] parameterArr2 = jVar2.f8262f;
                        if (parameterArr2 != null && parameterArr2.length > i12 && parameterArr2[i12].isNamePresent()) {
                            sb3.append(jVar2.f8262f[i12].getName());
                            sb3.append(s.f32937c);
                        }
                        sb3.append(jVar2.f8261e[i12].getSimpleName());
                        if (i12 < jVar2.f8261e.length - 1) {
                            sb3.append(", ");
                        }
                    }
                    linkedList2.add(jVar2.f8257a + "(" + sb3.toString() + ")" + (jVar2.f8258b.equals(Void.TYPE) ? "" : "->" + jVar2.f8258b.getSimpleName()));
                }
            }
            Iterator<E> it = linkedList2.iterator();
            while (it.hasNext()) {
                this.f4847b.add(new Suggestion(Suggestion.Type.NONE, (String) it.next(), ""));
            }
        }
    }

    @Override
    public void clearLines() {
        this.f4846a.clearLines();
        this.f4847b.clear();
        this.f4848c.e();
    }

    @Override
    public void deleteLine(int i10) {
        this.f4846a.deleteLine(i10);
        this.f4848c.a(i10);
    }

    @Override
    @NonNull
    public Set<Suggestion> getAll(@NotNull String query) {
        HashSet hashSet = new HashSet(this.f4846a.getWords());
        if (this.f4847b.isEmpty()) {
            for (int i10 = 0; i10 < j.k0(); i10++) {
                e8.c j02 = j.j0(i10);
                hashSet.add(new Suggestion(Suggestion.Type.WORD, j02.d(), j02.d()));
            }
            for (int i11 = 0; i11 < j.K0(); i11++) {
                r J02 = j.J0(i11);
                Suggestion.Type type = Suggestion.Type.WORD;
                String str = J02.f84453b;
                hashSet.add(new Suggestion(type, str, str));
            }
        } else {
            hashSet.addAll(this.f4847b);
        }
        return hashSet;
    }

    @Override
    public void processLine(int i10, @NonNull String s10) {
        this.f4846a.processLine(i10, s10);
        if (s10.endsWith(" ")) {
            this.f4847b.clear();
        } else if (s10.endsWith(".") || s10.endsWith("(")) {
            this.f4847b.clear();
            b(s10);
        } else if (s10.endsWith("()")) {
            this.f4847b.clear();
            a(s10);
        }
        if (c() != null) {
            this.f4848c.a(i10);
            try {
                for (d8.e eVar : c().f72514d) {
                    if (eVar.f84383c == i10 && eVar.d()) {
                        this.f4848c.b(i10 + 1);
                        return;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
