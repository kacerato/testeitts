package com.android.tools.r8.internal;

import com.android.tools.r8.AndroidResourceInput;
import com.android.tools.r8.AndroidResourceProvider;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class AbstractC6136Wf0 {
    public static C10444yb0 a(final C4798y c4798y) {
        InterfaceC5976Tl0 c6021Uf0;
        AndroidResourceProvider androidResourceProvider;
        C8570nJ E10 = c4798y.E();
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC6136Wf0.a(C4798y.this, (Exception) obj);
            }
        };
        StringConsumer debugConsumer = E10.f50682g.getDebugConsumer();
        C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
        if (debugConsumer == null) {
            c6021Uf0 = UZ.f44793a;
        } else {
            c6021Uf0 = new C6021Uf0(debugConsumer, c5094Ef0);
        }
        C10444yb0 c10444yb0 = new C10444yb0(function, c6021Uf0);
        if (!E10.f50682g.isOptimizedShrinking() || (androidResourceProvider = E10.f50672d) == null) {
            return c10444yb0;
        }
        try {
            a(c4798y, c10444yb0, androidResourceProvider, FeatureSplit.BASE);
            if (E10.I()) {
                ArrayList arrayList = E10.f50718s.f43761a;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    FeatureSplit featureSplit = (FeatureSplit) obj;
                    if (featureSplit.getAndroidResourceProvider() != null) {
                        a(c4798y, c10444yb0, featureSplit.getAndroidResourceProvider(), featureSplit);
                    }
                }
            }
            c10444yb0.c();
            return c10444yb0;
        } catch (ResourceException unused) {
            throw c4798y.E().f50691j.b("Failed initializing resource table");
        }
    }

    public static InputStream e(C4798y c4798y, AndroidResourceInput androidResourceInput) {
        try {
            return androidResourceInput.getByteStream();
        } catch (ResourceException unused) {
            throw c4798y.E().f50691j.b("Failed reading " + androidResourceInput.getPath().location());
        }
    }

    public static void a(final C4798y c4798y, C10444yb0 c10444yb0, AndroidResourceProvider androidResourceProvider, FeatureSplit featureSplit) {
        for (final AndroidResourceInput androidResourceInput : androidResourceProvider.getAndroidResources()) {
            int i10 = AbstractC6079Vf0.f45116a[androidResourceInput.getKind().ordinal()];
            if (i10 == 1) {
                c10444yb0.f54060f.add(new Supplier() {
                    @Override
                    public final Object get() {
                        InputStream e10;
                        e10 = AbstractC6136Wf0.e(C4798y.this, androidResourceInput);
                        return e10;
                    }
                });
            } else if (i10 == 2) {
                InputStream byteStream = androidResourceInput.getByteStream();
                HashMap hashMap = c10444yb0.f54062h;
                C10277xb0 c10277xb0 = c10444yb0.f54056b;
                c10277xb0.getClass();
                try {
                    C6795ci0 a10 = C6795ci0.a(byteStream);
                    c10277xb0.a(a10, true);
                    hashMap.put(featureSplit, a10);
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            } else if (i10 == 3) {
                Supplier supplier = new Supplier() {
                    @Override
                    public final Object get() {
                        InputStream e11;
                        e11 = AbstractC6136Wf0.e(C4798y.this, androidResourceInput);
                        return e11;
                    }
                };
                String location = androidResourceInput.getPath().location();
                if (c10444yb0.f54057c.containsKey(location)) {
                    c10444yb0.f54058d.add(location);
                } else {
                    c10444yb0.f54057c.put(location, supplier);
                }
            } else if (i10 == 4) {
                c10444yb0.f54059e.add(new Supplier() {
                    @Override
                    public final Object get() {
                        InputStream e11;
                        e11 = AbstractC6136Wf0.e(C4798y.this, androidResourceInput);
                        return e11;
                    }
                });
            } else if (i10 == 5) {
                Supplier supplier2 = new Supplier() {
                    @Override
                    public final Object get() {
                        InputStream e11;
                        e11 = AbstractC6136Wf0.e(C4798y.this, androidResourceInput);
                        return e11;
                    }
                };
                String location2 = androidResourceInput.getPath().location();
                if (c10444yb0.f54061g.containsKey(location2)) {
                    c10444yb0.f54058d.add(location2);
                }
                c10444yb0.f54061g.put(location2, supplier2);
            }
        }
    }

    public static RuntimeException a(C4798y c4798y, Exception exc) {
        C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
        c5094Ef0.a(null, new ExceptionDiagnostic(exc));
        throw c5094Ef0.f39969c;
    }
}
