package com.android.tools.r8.tracereferences;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.diagnostic.DefinitionClassContext;
import com.android.tools.r8.diagnostic.DefinitionFieldContext;
import com.android.tools.r8.diagnostic.DefinitionMethodContext;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.PackageReference;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public class TraceReferencesCheckConsumer extends TraceReferencesConsumer.ForwardingConsumer {

    private final ConcurrentHashMap f58405c;

    private final ConcurrentHashMap f58406d;

    private final ConcurrentHashMap f58407e;

    public TraceReferencesCheckConsumer(TraceReferencesConsumer traceReferencesConsumer) {
        super(traceReferencesConsumer);
        this.f58405c = new ConcurrentHashMap();
        this.f58406d = new ConcurrentHashMap();
        this.f58407e = new ConcurrentHashMap();
    }

    public static void a(com.android.tools.r8.diagnostic.internal.l lVar, ClassReference classReference, Map map) {
        com.android.tools.r8.diagnostic.internal.g gVar = new com.android.tools.r8.diagnostic.internal.g();
        gVar.f36002b = classReference;
        com.android.tools.r8.diagnostic.internal.g gVar2 = (com.android.tools.r8.diagnostic.internal.g) gVar.a(map.values());
        lVar.f36008a.a(new com.android.tools.r8.diagnostic.internal.h(gVar2.f36002b, gVar2.f36004a.a()));
    }

    public static void b(Map map, DefinitionClassContext definitionClassContext) {
        map.put(definitionClassContext.getClassReference(), definitionClassContext);
    }

    public static void c(Map map, DefinitionClassContext definitionClassContext) {
        map.put(definitionClassContext.getClassReference(), definitionClassContext);
    }

    @Override
    public void acceptField(TraceReferencesConsumer.TracedField tracedField, DiagnosticsHandler diagnosticsHandler) {
        super.acceptField(tracedField, diagnosticsHandler);
        if (tracedField.isMissingDefinition()) {
            final Map map = (Map) this.f58406d.computeIfAbsent(tracedField.getReference(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    Map a10;
                    a10 = TraceReferencesCheckConsumer.a((FieldReference) obj);
                    return a10;
                }
            });
            com.android.tools.r8.diagnostic.internal.d.a(tracedField.getReferencedFromContext(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.a(Map.this, (DefinitionClassContext) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.a(Map.this, (DefinitionFieldContext) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.a(Map.this, (DefinitionMethodContext) obj);
                }
            });
        }
    }

    @Override
    public void acceptMethod(TraceReferencesConsumer.TracedMethod tracedMethod, DiagnosticsHandler diagnosticsHandler) {
        super.acceptMethod(tracedMethod, diagnosticsHandler);
        if (tracedMethod.isMissingDefinition()) {
            final Map map = (Map) this.f58407e.computeIfAbsent(tracedMethod.getReference(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    Map a10;
                    a10 = TraceReferencesCheckConsumer.a((MethodReference) obj);
                    return a10;
                }
            });
            com.android.tools.r8.diagnostic.internal.d.a(tracedMethod.getReferencedFromContext(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.b(Map.this, (DefinitionClassContext) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.b(Map.this, (DefinitionFieldContext) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.b(Map.this, (DefinitionMethodContext) obj);
                }
            });
        }
    }

    @Override
    public void acceptPackage(PackageReference packageReference, DiagnosticsHandler diagnosticsHandler) {
        super.acceptPackage(packageReference, diagnosticsHandler);
    }

    @Override
    public void acceptType(TraceReferencesConsumer.TracedClass tracedClass, DiagnosticsHandler diagnosticsHandler) {
        super.acceptType(tracedClass, diagnosticsHandler);
        if (tracedClass.isMissingDefinition()) {
            final Map map = (Map) this.f58405c.computeIfAbsent(tracedClass.getReference(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    Map a10;
                    a10 = TraceReferencesCheckConsumer.a((ClassReference) obj);
                    return a10;
                }
            });
            com.android.tools.r8.diagnostic.internal.d.a(tracedClass.getReferencedFromContext(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.c(Map.this, (DefinitionClassContext) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.c(Map.this, (DefinitionFieldContext) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TraceReferencesCheckConsumer.c(Map.this, (DefinitionMethodContext) obj);
                }
            });
        }
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) {
        super.finished(diagnosticsHandler);
        if (this.f58405c.isEmpty() && this.f58406d.isEmpty() && this.f58407e.isEmpty()) {
            return;
        }
        diagnosticsHandler.error(a());
    }

    public static void b(Map map, DefinitionFieldContext definitionFieldContext) {
        map.put(definitionFieldContext.getFieldReference(), definitionFieldContext);
    }

    public static void c(Map map, DefinitionFieldContext definitionFieldContext) {
        map.put(definitionFieldContext.getFieldReference(), definitionFieldContext);
    }

    public static void b(Map map, DefinitionMethodContext definitionMethodContext) {
        map.put(definitionMethodContext.getMethodReference(), definitionMethodContext);
    }

    public static void c(Map map, DefinitionMethodContext definitionMethodContext) {
        map.put(definitionMethodContext.getMethodReference(), definitionMethodContext);
    }

    public static void a(com.android.tools.r8.diagnostic.internal.l lVar, FieldReference fieldReference, Map map) {
        com.android.tools.r8.diagnostic.internal.n nVar = new com.android.tools.r8.diagnostic.internal.n();
        nVar.f36011b = fieldReference;
        com.android.tools.r8.diagnostic.internal.n nVar2 = (com.android.tools.r8.diagnostic.internal.n) nVar.a(map.values());
        lVar.f36008a.a(new com.android.tools.r8.diagnostic.internal.o(nVar2.f36011b, nVar2.f36004a.a()));
    }

    public static void a(com.android.tools.r8.diagnostic.internal.l lVar, MethodReference methodReference, Map map) {
        com.android.tools.r8.diagnostic.internal.p pVar = new com.android.tools.r8.diagnostic.internal.p();
        pVar.f36013b = methodReference;
        com.android.tools.r8.diagnostic.internal.p pVar2 = (com.android.tools.r8.diagnostic.internal.p) pVar.a(map.values());
        lVar.f36008a.a(new com.android.tools.r8.diagnostic.internal.q(pVar2.f36013b, pVar2.f36004a.a()));
    }

    public static Map a(ClassReference classReference) {
        return new ConcurrentHashMap();
    }

    public static Map a(FieldReference fieldReference) {
        return new ConcurrentHashMap();
    }

    public static void a(Map map, DefinitionClassContext definitionClassContext) {
        map.put(definitionClassContext.getClassReference(), definitionClassContext);
    }

    public static void a(Map map, DefinitionFieldContext definitionFieldContext) {
        map.put(definitionFieldContext.getFieldReference(), definitionFieldContext);
    }

    public static void a(Map map, DefinitionMethodContext definitionMethodContext) {
        map.put(definitionMethodContext.getMethodReference(), definitionMethodContext);
    }

    public static Map a(MethodReference methodReference) {
        return new ConcurrentHashMap();
    }

    private com.android.tools.r8.diagnostic.internal.m a() {
        boolean z10 = com.android.tools.r8.diagnostic.internal.m.f36009c;
        final com.android.tools.r8.diagnostic.internal.l lVar = new com.android.tools.r8.diagnostic.internal.l();
        this.f58405c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TraceReferencesCheckConsumer.a(com.android.tools.r8.diagnostic.internal.l.this, (ClassReference) obj, (Map) obj2);
            }
        });
        this.f58406d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TraceReferencesCheckConsumer.a(com.android.tools.r8.diagnostic.internal.l.this, (FieldReference) obj, (Map) obj2);
            }
        });
        this.f58407e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TraceReferencesCheckConsumer.a(com.android.tools.r8.diagnostic.internal.l.this, (MethodReference) obj, (Map) obj2);
            }
        });
        return new com.android.tools.r8.diagnostic.internal.m(lVar.f36008a.a());
    }
}
