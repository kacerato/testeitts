package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C6095Vn0;
import com.android.tools.r8.internal.C6201Xj0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public class StringRetrace extends Retrace<String, C6095Vn0> {
    public StringRetrace(StackTraceLineParser stackTraceLineParser, MappingSupplier mappingSupplier, DiagnosticsHandler diagnosticsHandler, boolean z10) {
        super(stackTraceLineParser, mappingSupplier, diagnosticsHandler, z10);
    }

    private static ArrayList a(List list) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RetraceStackFrameAmbiguousResult retraceStackFrameAmbiguousResult = (RetraceStackFrameAmbiguousResult) it.next();
            int i10 = 0;
            for (boolean z11 = true; z11; z11 = z10) {
                HashSet hashSet = new HashSet();
                RetraceStackFrameResult retraceStackFrameResult = null;
                z10 = false;
                for (RetraceStackFrameResult retraceStackFrameResult2 : retraceStackFrameAmbiguousResult.getAmbiguousResult()) {
                    if (retraceStackFrameResult == null) {
                        retraceStackFrameResult = retraceStackFrameResult2;
                    }
                    if (i10 < retraceStackFrameResult2.size()) {
                        String str = (String) retraceStackFrameResult2.get(i10);
                        if (hashSet.add(str)) {
                            if (retraceStackFrameResult2 != retraceStackFrameResult) {
                                arrayList.add(a(str));
                            } else {
                                arrayList.add(str);
                            }
                        }
                        z10 = true;
                    }
                }
                i10++;
            }
        }
        return arrayList;
    }

    public static StringRetrace create(RetraceOptions retraceOptions) {
        return create(retraceOptions.getMappingSupplier(), retraceOptions.getDiagnosticsHandler(), retraceOptions.getRegularExpression(), retraceOptions.isVerbose());
    }

    public RetraceStackFrameResultWithContext<String> retrace(List<String> list, RetraceStackTraceContext retraceStackTraceContext) {
        RetraceStackTraceResult<String> retraceStackTrace = retraceStackTrace(list, retraceStackTraceContext);
        return new C6201Xj0(a(retraceStackTrace.getResult()), retraceStackTrace.getContext());
    }

    public RetraceStackFrameResultWithContext<String> retraceParsed(List<C6095Vn0> list, RetraceStackTraceContext retraceStackTraceContext) {
        RetraceStackTraceResult<String> retraceStackTraceParsed = retraceStackTraceParsed(list, retraceStackTraceContext);
        return new C6201Xj0(a(retraceStackTraceParsed.getResult()), retraceStackTraceParsed.getContext());
    }

    public <E extends Throwable> void retraceSupplier(StreamSupplier<E> streamSupplier, Consumer<String> consumer) throws Throwable {
        RetraceStackTraceContext empty = RetraceStackTraceContext.empty();
        while (true) {
            String next = streamSupplier.getNext();
            if (next == null) {
                return;
            }
            RetraceStackFrameResultWithContext<String> retrace = retrace(next, empty);
            RetraceStackTraceContext context = retrace.getContext();
            retrace.forEach(consumer);
            empty = context;
        }
    }

    public RetraceStackFrameResultWithContext<String> retrace(String str, RetraceStackTraceContext retraceStackTraceContext) {
        RetraceStackFrameAmbiguousResultWithContext<String> retraceFrame = retraceFrame(str, retraceStackTraceContext);
        return new C6201Xj0(a(Collections.singletonList(retraceFrame)), retraceFrame.getContext());
    }

    public static StringRetrace create(MappingSupplier<?> mappingSupplier, DiagnosticsHandler diagnosticsHandler, String str, boolean z10) {
        return new StringRetrace(StackTraceLineParser.createRegularExpressionParser(str), mappingSupplier, diagnosticsHandler, z10);
    }

    private static String a(String str) {
        int indexOf = str.indexOf("at ");
        if (indexOf < 0) {
            char[] cArr = C10656zq0.f54545a;
            int i10 = 0;
            while (true) {
                if (i10 < str.length()) {
                    if (!C10656zq0.a(str.charAt(i10))) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = str.length();
                    break;
                }
            }
            indexOf = Math.max(i10, 0);
        }
        return str.substring(0, indexOf) + "<OR> " + str.substring(indexOf);
    }
}
