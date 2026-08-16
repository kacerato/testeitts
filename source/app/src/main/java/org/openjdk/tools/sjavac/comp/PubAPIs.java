package org.openjdk.tools.sjavac.comp;

import b3.s;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class PubAPIs {
    protected static final Context.Key<PubAPIs> pubApisKey = new Context.Key<>();
    protected Log log;
    protected Map<Symbol.ClassSymbol, PubApi> publicApiPerClass = new HashMap();

    private PubAPIs(Context context) {
        context.put((Context.Key<Context.Key<PubAPIs>>) pubApisKey, (Context.Key<PubAPIs>) this);
        this.log = Log.instance(context);
    }

    public static PubAPIs instance(Context context) {
        PubAPIs pubAPIs = (PubAPIs) context.get(pubApisKey);
        return pubAPIs == null ? new PubAPIs(context) : pubAPIs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Map<String, PubApi> getPubapis(Collection<JavaFileObject> collection, boolean z10) {
        HashMap hashMap = new HashMap();
        for (Symbol.ClassSymbol classSymbol : this.publicApiPerClass.o()) {
            if (z10 == collection.contains(classSymbol.sourcefile)) {
                String str = s.f32937c + ((Object) classSymbol.packge().fullname);
                hashMap.put(str, PubApi.mergeTypes((PubApi) hashMap.getOrDefault(str, new PubApi()), this.publicApiPerClass.get(classSymbol)));
            }
        }
        return hashMap;
    }

    public void visitPubapi(Element element) {
        if (element == null) {
            return;
        }
        PubapiVisitor pubapiVisitor = new PubapiVisitor();
        pubapiVisitor.visit(element);
        this.publicApiPerClass.put((Symbol.ClassSymbol) element, pubapiVisitor.getCollectedPubApi());
    }
}
