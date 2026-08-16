package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.DefinitionClassContext;
import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.diagnostic.DefinitionFieldContext;
import com.android.tools.r8.diagnostic.DefinitionMethodContext;
import com.android.tools.r8.diagnostic.MissingClassInfo;
import com.android.tools.r8.diagnostic.MissingDefinitionInfo;
import com.android.tools.r8.diagnostic.MissingFieldInfo;
import com.android.tools.r8.diagnostic.MissingMethodInfo;
import com.android.tools.r8.internal.C5244Gw;
import com.android.tools.r8.internal.C6186Xd;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7598hX;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.Consumer;

public abstract class k {

    public static final Comparator f36006a = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return k.a((MissingDefinitionInfo) obj, (MissingDefinitionInfo) obj2);
        }
    };

    public static final boolean f36007b = true;

    public static int a(MissingDefinitionInfo missingDefinitionInfo, MissingDefinitionInfo missingDefinitionInfo2) {
        if (missingDefinitionInfo.isMissingClass()) {
            ClassReference classReference = missingDefinitionInfo.asMissingClass().getClassReference();
            if (missingDefinitionInfo2.isMissingClass()) {
                return C6186Xd.a().compare(classReference, missingDefinitionInfo2.asMissingClass().getClassReference());
            }
            if (missingDefinitionInfo2.isMissingField()) {
                int compare = C6186Xd.a().compare(classReference, missingDefinitionInfo2.asMissingField().getFieldReference().getHolderClass());
                if (compare != 0) {
                    return compare;
                }
                return -1;
            }
            int compare2 = C6186Xd.a().compare(classReference, missingDefinitionInfo2.asMissingMethod().getMethodReference().getHolderClass());
            if (compare2 != 0) {
                return compare2;
            }
            return -1;
        }
        if (missingDefinitionInfo.isMissingField()) {
            FieldReference fieldReference = missingDefinitionInfo.asMissingField().getFieldReference();
            if (missingDefinitionInfo2.isMissingClass()) {
                ClassReference classReference2 = missingDefinitionInfo2.asMissingClass().getClassReference();
                Comparator comparator = C5244Gw.f40624a;
                int compare3 = C6186Xd.a().compare(classReference2, fieldReference.getHolderClass());
                if (compare3 == 0) {
                    compare3 = -1;
                }
                return compare3 * (-1);
            }
            if (missingDefinitionInfo2.isMissingField()) {
                return C5244Gw.f40624a.compare(fieldReference, missingDefinitionInfo2.asMissingField().getFieldReference());
            }
            MethodReference methodReference = missingDefinitionInfo2.asMissingMethod().getMethodReference();
            Comparator comparator2 = C5244Gw.f40624a;
            int compare4 = C6186Xd.a().compare(fieldReference.getHolderClass(), methodReference.getHolderClass());
            if (compare4 != 0) {
                return compare4;
            }
            return -1;
        }
        MethodReference methodReference2 = missingDefinitionInfo.asMissingMethod().getMethodReference();
        if (missingDefinitionInfo2.isMissingClass()) {
            ClassReference classReference3 = missingDefinitionInfo2.asMissingClass().getClassReference();
            Comparator comparator3 = C7598hX.f48572a;
            int compare5 = C6186Xd.a().compare(classReference3, methodReference2.getHolderClass());
            if (compare5 == 0) {
                compare5 = -1;
            }
            return compare5 * (-1);
        }
        if (missingDefinitionInfo2.isMissingField()) {
            FieldReference fieldReference2 = missingDefinitionInfo2.asMissingField().getFieldReference();
            Comparator comparator4 = C7598hX.f48572a;
            Comparator comparator5 = C5244Gw.f40624a;
            int compare6 = C6186Xd.a().compare(fieldReference2.getHolderClass(), methodReference2.getHolderClass());
            if (compare6 == 0) {
                compare6 = -1;
            }
            return compare6 * (-1);
        }
        return C7598hX.a().compare(methodReference2, missingDefinitionInfo2.asMissingMethod().getMethodReference());
    }

    public static void b(StringBuilder sb2, MissingDefinitionInfo missingDefinitionInfo) {
        final C7 c72 = new C7();
        final C7 c73 = new C7();
        final C7 c74 = new C7();
        Iterator<DefinitionContext> it = missingDefinitionInfo.getReferencedFromContexts().iterator();
        while (it.hasNext()) {
            d.a(it.next(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    k.a(C7.this, (DefinitionClassContext) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    k.a(C7.this, (DefinitionFieldContext) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    k.a(C7.this, (DefinitionMethodContext) obj);
                }
            });
        }
        if (c73.b()) {
            a(sb2, missingDefinitionInfo, C5244Gw.a((FieldReference) c73.a()));
        } else if (c74.b()) {
            a(sb2, missingDefinitionInfo, C7598hX.b((MethodReference) c74.a()));
        } else if (c72.b()) {
            a(sb2, missingDefinitionInfo, ((ClassReference) c72.a()).getTypeName());
        }
    }

    public static void a(final StringBuilder sb2, MissingDefinitionInfo missingDefinitionInfo) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                k.a(StringBuilder.this, (MissingClassInfo) obj);
            }
        };
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                k.a(StringBuilder.this, (MissingFieldInfo) obj);
            }
        };
        Consumer consumer3 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                k.a(StringBuilder.this, (MissingMethodInfo) obj);
            }
        };
        if (missingDefinitionInfo.isMissingClass()) {
            consumer.accept(missingDefinitionInfo.asMissingClass());
        } else if (missingDefinitionInfo.isMissingField()) {
            consumer2.accept(missingDefinitionInfo.asMissingField());
        } else {
            if (!f36007b && !missingDefinitionInfo.isMissingMethod()) {
                throw new AssertionError();
            }
            consumer3.accept(missingDefinitionInfo.asMissingMethod());
        }
        b(sb2, missingDefinitionInfo);
    }

    public static void a(StringBuilder sb2, MissingClassInfo missingClassInfo) {
        sb2.append("Missing class ");
        sb2.append(missingClassInfo.getClassReference().getTypeName());
    }

    public static void a(StringBuilder sb2, MissingFieldInfo missingFieldInfo) {
        sb2.append("Missing field ");
        sb2.append(C5244Gw.a(missingFieldInfo.getFieldReference()));
    }

    public static void a(StringBuilder sb2, MissingMethodInfo missingMethodInfo) {
        sb2.append("Missing method ");
        sb2.append(C7598hX.b(missingMethodInfo.getMethodReference()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(C7 c72, DefinitionClassContext definitionClassContext) {
        ClassReference classReference = definitionClassContext.getClassReference();
        Comparator<ClassReference> a10 = C6186Xd.a();
        if (!c72.b() || a10.compare(classReference, c72.a()) < 0) {
            c72.a((C7) classReference);
        }
    }

    public static void a(C7 c72, DefinitionFieldContext definitionFieldContext) {
        FieldReference fieldReference = definitionFieldContext.getFieldReference();
        Comparator comparator = C5244Gw.f40624a;
        if (!c72.b() || comparator.compare(fieldReference, c72.a()) < 0) {
            c72.a((C7) fieldReference);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(C7 c72, DefinitionMethodContext definitionMethodContext) {
        MethodReference methodReference = definitionMethodContext.getMethodReference();
        Comparator<MethodReference> a10 = C7598hX.a();
        if (!c72.b() || a10.compare(methodReference, c72.a()) < 0) {
            c72.a((C7) methodReference);
        }
    }

    public static void a(StringBuilder sb2, MissingDefinitionInfo missingDefinitionInfo, String str) {
        int size = missingDefinitionInfo.getReferencedFromContexts().size() - 1;
        if (!f36007b && size < 0) {
            throw new AssertionError();
        }
        sb2.append(" (referenced from: ");
        sb2.append(str);
        if (size >= 1) {
            sb2.append(" and ");
            sb2.append(size);
            sb2.append(" other context");
            if (size >= 2) {
                sb2.append("s");
            }
        }
        sb2.append(")");
    }
}
