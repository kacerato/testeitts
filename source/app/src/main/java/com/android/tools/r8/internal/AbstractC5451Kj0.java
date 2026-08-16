package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.retrace.MappingSupplierBase;
import com.android.tools.r8.retrace.RetraceInvalidStackTraceLineDiagnostics;
import com.android.tools.r8.retrace.RetraceStackFrameAmbiguousResultWithContext;
import com.android.tools.r8.retrace.RetraceStackFrameResult;
import com.android.tools.r8.retrace.RetraceStackFrameResultWithContext;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceStackTraceElementProxy;
import com.android.tools.r8.retrace.RetraceStackTraceElementProxyResult;
import com.android.tools.r8.retrace.RetraceStackTraceResult;
import com.android.tools.r8.retrace.Retracer;
import com.android.tools.r8.retrace.StackTraceElementProxy;
import com.android.tools.r8.retrace.StackTraceElementProxyRetracer;
import com.android.tools.r8.retrace.StackTraceLineParser;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public abstract class AbstractC5451Kj0 {

    private final StackTraceLineParser f41745a;

    private final MappingSupplierBase f41746b;

    private final DiagnosticsHandler f41747c;
    protected final boolean isVerbose;

    public AbstractC5451Kj0(StackTraceLineParser stackTraceLineParser, MappingSupplierBase mappingSupplierBase, DiagnosticsHandler diagnosticsHandler, boolean z10) {
        this.f41745a = stackTraceLineParser;
        this.f41746b = mappingSupplierBase;
        this.f41747c = diagnosticsHandler;
        this.isVerbose = z10;
    }

    public List<StackTraceElementProxy<Object, Object>> parse(List<Object> list) {
        AT.a(list, new InterfaceC10593zT() {
            @Override
            public final void accept(Object obj, int i10) {
                AbstractC5451Kj0.this.a(obj, i10);
            }
        });
        final StackTraceLineParser stackTraceLineParser = this.f41745a;
        Objects.requireNonNull(stackTraceLineParser);
        return AT.a((Collection) list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return StackTraceLineParser.this.parse(obj);
            }
        });
    }

    public void registerUses(List<StackTraceElementProxy<Object, Object>> list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5451Kj0.this.registerUses((StackTraceElementProxy<Object, Object>) obj);
            }
        });
    }

    public RetraceStackFrameAmbiguousResultWithContext<Object> retraceFrameWithRetracer(Retracer retracer, final StackTraceElementProxy<Object, Object> stackTraceElementProxy, RetraceStackTraceContext retraceStackTraceContext) {
        final HashMap hashMap = new HashMap();
        final ArrayList arrayList = new ArrayList();
        StackTraceElementProxyRetracer createDefault = StackTraceElementProxyRetracer.createDefault(retracer);
        final C7 c72 = new C7(retraceStackTraceContext);
        createDefault.retrace(stackTraceElementProxy, retraceStackTraceContext).stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5451Kj0.this.a(arrayList, hashMap, stackTraceElementProxy, c72, (RetraceStackTraceElementProxy) obj);
            }
        });
        Collections.sort(arrayList);
        final ArrayList arrayList2 = new ArrayList();
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5451Kj0.a(List.this, hashMap, (RetraceStackTraceElementProxy) obj);
            }
        });
        return new C6144Wj0(arrayList2, (RetraceStackTraceContext) c72.a());
    }

    public RetraceStackFrameResultWithContext<Object> retraceLineWithRetracer(Retracer retracer, final StackTraceElementProxy<Object, Object> stackTraceElementProxy, RetraceStackTraceContext retraceStackTraceContext) {
        StackTraceElementProxyRetracer createDefault = StackTraceElementProxyRetracer.createDefault(retracer);
        final C7 c72 = new C7(retraceStackTraceContext);
        return new C6201Xj0((List) createDefault.retrace(stackTraceElementProxy, retraceStackTraceContext).stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Object a10;
                a10 = AbstractC5451Kj0.this.a(c72, stackTraceElementProxy, (RetraceStackTraceElementProxy) obj);
                return a10;
            }
        }).collect(Collectors.toList()), (RetraceStackTraceContext) c72.a());
    }

    public RetraceStackTraceResult<Object> retraceStackTraceParsedWithRetracer(Retracer retracer, List<StackTraceElementProxy<Object, Object>> list, RetraceStackTraceContext retraceStackTraceContext) {
        final C5393Jj0 c5393Jj0 = new C5393Jj0(this.isVerbose);
        final StackTraceElementProxyRetracer createDefault = StackTraceElementProxyRetracer.createDefault(retracer);
        final ArrayList arrayList = new ArrayList();
        return new C6968dk0(arrayList, (RetraceStackTraceContext) AT.a(retraceStackTraceContext, list, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                RetraceStackTraceContext a10;
                a10 = AbstractC5451Kj0.this.a(createDefault, c5393Jj0, arrayList, (RetraceStackTraceContext) obj, (StackTraceElementProxy) obj2);
                return a10;
            }
        }));
    }

    public void a(Object obj, int i10) {
        if (obj != null) {
            return;
        }
        this.f41747c.error(RetraceInvalidStackTraceLineDiagnostics.createNull(i10));
        throw new C5335Ij0();
    }

    public void registerUses(StackTraceElementProxy<Object, Object> stackTraceElementProxy) {
        stackTraceElementProxy.registerUses(this.f41746b, this.f41747c);
    }

    public StackTraceElementProxy<Object, Object> parse(Object obj) {
        return this.f41745a.parse(obj);
    }

    public RetraceStackTraceContext a(StackTraceElementProxyRetracer stackTraceElementProxyRetracer, final C5393Jj0 c5393Jj0, List list, RetraceStackTraceContext retraceStackTraceContext, final StackTraceElementProxy stackTraceElementProxy) {
        final ArrayList arrayList = new ArrayList();
        final C7 c72 = new C7();
        final HashSet hashSet = new HashSet();
        final ArrayList arrayList2 = new ArrayList();
        RetraceStackTraceElementProxyResult retrace = stackTraceElementProxyRetracer.retrace(stackTraceElementProxy, retraceStackTraceContext);
        retrace.stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5451Kj0.this.a(hashSet, c5393Jj0, c72, arrayList, arrayList2, stackTraceElementProxy, (RetraceStackTraceElementProxy) obj);
            }
        });
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (RetraceStackTraceElementProxy) ((C8699o50) obj).a();
            }
        }));
        list.add(new C6144Wj0(AT.a((Collection) arrayList, new Function() {
            @Override
            public final Object apply(Object obj) {
                return (RetraceStackFrameResult) ((C8699o50) obj).b();
            }
        }), RetraceStackTraceContext.empty()));
        if (arrayList2.isEmpty()) {
            return retrace.getResultContext();
        }
        return arrayList2.size() == 1 ? (RetraceStackTraceContext) arrayList2.get(0) : RetraceStackTraceContext.empty();
    }

    public void a(Set set, C5393Jj0 c5393Jj0, C7 c72, List list, List list2, StackTraceElementProxy stackTraceElementProxy, RetraceStackTraceElementProxy retraceStackTraceElementProxy) {
        if (retraceStackTraceElementProxy.isTopFrame() || !retraceStackTraceElementProxy.hasRetracedClass()) {
            c5393Jj0.getClass();
            if (set.add(new C7333fv(c5393Jj0, retraceStackTraceElementProxy))) {
                c72.a((C7) new ArrayList());
                list.add(C8699o50.a(retraceStackTraceElementProxy, new C6201Xj0((List) c72.a(), RetraceStackTraceContext.empty())));
                list2.add(retraceStackTraceElementProxy.getContext());
            } else {
                c72.a((C7) null);
            }
        }
        if (c72.b()) {
            ((List) c72.a()).add(stackTraceElementProxy.toRetracedItem(retraceStackTraceElementProxy, this.isVerbose));
        }
    }

    public void a(List list, Map map, StackTraceElementProxy stackTraceElementProxy, C7 c72, RetraceStackTraceElementProxy retraceStackTraceElementProxy) {
        if (retraceStackTraceElementProxy.isTopFrame() || !retraceStackTraceElementProxy.hasRetracedClass()) {
            list.add(retraceStackTraceElementProxy);
            map.put(retraceStackTraceElementProxy, new ArrayList());
        }
        ((List) map.get(AT.b(list))).add(stackTraceElementProxy.toRetracedItem(retraceStackTraceElementProxy, this.isVerbose));
        c72.a((C7) retraceStackTraceElementProxy.getContext());
    }

    public static void a(List list, Map map, RetraceStackTraceElementProxy retraceStackTraceElementProxy) {
        list.add(new C6201Xj0((List) map.get(retraceStackTraceElementProxy), RetraceStackTraceContext.empty()));
    }

    public Object a(C7 c72, StackTraceElementProxy stackTraceElementProxy, RetraceStackTraceElementProxy retraceStackTraceElementProxy) {
        c72.a((C7) retraceStackTraceElementProxy.getContext());
        return stackTraceElementProxy.toRetracedItem(retraceStackTraceElementProxy, this.isVerbose);
    }
}
