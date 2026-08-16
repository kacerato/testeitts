package si;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.naming.Binding;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import org.bouncycastle.cert.dane.DANEException;
import ri.C15183b;
import ri.InterfaceC15185d;
import ri.InterfaceC15186e;

public class C15313a implements InterfaceC15186e {

    public static final String f109637c = "53";

    public List f109638a = new ArrayList();

    public boolean f109639b;

    public class C2008a implements InterfaceC15185d {

        public final Hashtable f109640a;

        public final String f109641b;

        public C2008a(Hashtable hashtable, String str) {
            this.f109640a = hashtable;
            this.f109641b = str;
        }

        @Override
        public List getEntries() throws DANEException {
            ArrayList arrayList = new ArrayList();
            try {
                InitialDirContext initialDirContext = new InitialDirContext(this.f109640a);
                if (this.f109641b.indexOf("_smimecert.") > 0) {
                    Attribute attribute = initialDirContext.getAttributes(this.f109641b, new String[]{C15313a.f109637c}).get(C15313a.f109637c);
                    if (attribute != null) {
                        C15313a.this.c(arrayList, this.f109641b, attribute);
                    }
                } else {
                    NamingEnumeration listBindings = initialDirContext.listBindings("_smimecert." + this.f109641b);
                    while (listBindings.hasMore()) {
                        DirContext dirContext = (DirContext) ((Binding) listBindings.next()).getObject();
                        Attribute attribute2 = initialDirContext.getAttributes(dirContext.getNameInNamespace().substring(1, dirContext.getNameInNamespace().length() - 1), new String[]{C15313a.f109637c}).get(C15313a.f109637c);
                        if (attribute2 != null) {
                            String nameInNamespace = dirContext.getNameInNamespace();
                            C15313a.this.c(arrayList, nameInNamespace.substring(1, nameInNamespace.length() - 1), attribute2);
                        }
                    }
                }
                return arrayList;
            } catch (NamingException e10) {
                throw new DANEException("Exception dealing with DNS: " + e10.getMessage(), e10);
            }
        }
    }

    @Override
    public InterfaceC15185d a(String str) {
        Hashtable hashtable = new Hashtable();
        hashtable.put("java.naming.factory.initial", "com.sun.jndi.dns.DnsContextFactory");
        hashtable.put("java.naming.authoritative", this.f109639b ? "true" : "false");
        if (this.f109638a.size() > 0) {
            StringBuffer stringBuffer = new StringBuffer();
            Iterator it = this.f109638a.iterator();
            while (it.hasNext()) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(" ");
                }
                stringBuffer.append("dns://" + it.next());
            }
            hashtable.put("java.naming.provider.url", stringBuffer.toString());
        }
        return new C2008a(hashtable, str);
    }

    public final void c(List list, String str, Attribute attribute) throws NamingException, DANEException {
        for (int i10 = 0; i10 != attribute.size(); i10++) {
            byte[] bArr = (byte[]) attribute.get(i10);
            if (C15183b.e(bArr)) {
                try {
                    list.add(new C15183b(str, bArr));
                } catch (IOException e10) {
                    throw new DANEException("Exception parsing entry: " + e10.getMessage(), e10);
                }
            }
        }
    }

    public C15313a d(boolean z10) {
        this.f109639b = z10;
        return this;
    }

    public C15313a e(String str) {
        this.f109638a.add(str);
        return this;
    }
}
