package com.android.tools.r8.shaking;

import com.android.tools.r8.ResourceException;
import com.android.tools.r8.internal.AbstractC7914jP;
import com.android.tools.r8.internal.C10084wP;
import com.android.tools.r8.internal.C10251xP;
import com.android.tools.r8.internal.C6744cN;
import com.android.tools.r8.internal.C7415gP;
import com.android.tools.r8.internal.C7582hP;
import com.android.tools.r8.internal.C7749iP;
import com.android.tools.r8.internal.C9249rP;
import com.android.tools.r8.internal.CN;
import com.android.tools.r8.internal.EnumC9583tP;
import com.android.tools.r8.internal.FN;
import com.android.tools.r8.internal.MM;
import com.android.tools.r8.internal.MN;
import com.android.tools.r8.internal.OM;
import com.android.tools.r8.internal.SM;
import com.android.tools.r8.internal.ZM;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public abstract class AbstractC11112a2 {

    public final Origin f57168a;

    public AbstractC11112a2(Origin origin) {
        this.f57168a = origin;
    }

    public abstract KeepSpecProtos.KeepSpec a();

    public final void a(Consumer consumer) {
        EnumC9583tP enumC9583tP;
        Object obj;
        AbstractC7914jP c7749iP;
        AbstractC7914jP c7749iP2;
        KeepSpecProtos.KeepSpec a10 = a();
        KeepSpecProtos.Version version = a10.getVersion();
        EnumC9583tP[] enumC9583tPArr = (EnumC9583tP[]) EnumC9583tP.f52596d.clone();
        int length = enumC9583tPArr.length;
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                enumC9583tP = enumC9583tPArr[i10];
                enumC9583tP.getClass();
                if (version.getMajor() == 0 && enumC9583tP.f52597b == version.getMinor() && version.getPatch() == 0) {
                    break;
                } else {
                    i10++;
                }
            } else {
                enumC9583tP = EnumC9583tP.UNKNOWN;
                break;
            }
        }
        if (enumC9583tP != EnumC9583tP.UNKNOWN) {
            for (KeepSpecProtos.Declaration declaration : a10.getDeclarationsList()) {
                if (declaration.hasEdge()) {
                    KeepSpecProtos.Edge edge = declaration.getEdge();
                    CN cn2 = new CN();
                    cn2.f39203a = MN.a(edge.getMetaInfo(), enumC9583tP);
                    KeepSpecProtos.Bindings bindings = edge.getBindings();
                    if (bindings != null) {
                        C9249rP c9249rP = new C9249rP(new OM().a(bindings));
                        cn2.f39204b = c9249rP.f52034b;
                        List<KeepSpecProtos.Condition> preconditionsList = edge.getPreconditionsList();
                        ArrayList arrayList = new ArrayList();
                        Iterator<KeepSpecProtos.Condition> it = preconditionsList.iterator();
                        while (it.hasNext()) {
                            arrayList.add(new ZM(c9249rP.a(it.next().getItem())));
                        }
                        if (!C7582hP.f48547b && preconditionsList.isEmpty()) {
                            if (arrayList.isEmpty()) {
                                c7749iP2 = C7415gP.f48257a;
                            } else {
                                c7749iP2 = new C7749iP(arrayList);
                            }
                            if (!c7749iP2.a()) {
                                throw new AssertionError();
                            }
                        }
                        if (arrayList.isEmpty()) {
                            c7749iP = C7415gP.f48257a;
                        } else {
                            c7749iP = new C7749iP(arrayList);
                        }
                        cn2.f39205c = c7749iP;
                        List<KeepSpecProtos.Target> consequencesList = edge.getConsequencesList();
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<KeepSpecProtos.Target> it2 = consequencesList.iterator();
                        while (it2.hasNext()) {
                            C10084wP a11 = new C10084wP().a(it2.next(), c9249rP);
                            MM mm2 = a11.f53496a;
                            if (mm2 != null) {
                                arrayList2.add(new C10251xP(mm2, a11.f53497b));
                            } else {
                                throw new FN("Target must define an item pattern");
                            }
                        }
                        if (!arrayList2.isEmpty()) {
                            cn2.f39206d = new C6744cN(arrayList2);
                            obj = cn2.a();
                        } else {
                            throw new FN("Invalid empty consequent set");
                        }
                    } else {
                        throw new FN("Invalid keep spec, must have valid bindings.");
                    }
                } else if (declaration.hasCheck()) {
                    KeepSpecProtos.Check check = declaration.getCheck();
                    SM sm2 = new SM();
                    sm2.f44193a = MN.a(check.getMetaInfo(), enumC9583tP);
                    if (check.getKindValue() != 2) {
                        if (!SM.f44192e && check.getKind() != KeepSpecProtos.CheckKind.CHECK_REMOVED) {
                            throw new AssertionError();
                        }
                        sm2.f44194b = 1;
                    } else {
                        sm2.f44194b = 2;
                    }
                    KeepSpecProtos.Bindings bindings2 = check.getBindings();
                    if (bindings2 != null) {
                        C9249rP c9249rP2 = new C9249rP(new OM().a(bindings2));
                        sm2.f44195c = c9249rP2.f52034b;
                        sm2.f44196d = c9249rP2.a(check.getItem());
                        obj = sm2.a();
                    } else {
                        throw new FN("Invalid keep spec, must have valid bindings.");
                    }
                } else {
                    obj = null;
                }
                if (obj != null) {
                    consumer.accept(obj);
                } else {
                    throw new ResourceException(this.f57168a, "Unable to parse declaration " + ((Object) declaration));
                }
            }
            return;
        }
        throw new ResourceException(this.f57168a, "Unknown keepspec version " + ((Object) a10.getVersion()));
    }
}
