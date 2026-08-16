package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;

public final class OM {

    public static final boolean f42860c = true;

    public final HashMap f42861a = new HashMap();

    public final IdentityHashMap f42862b = new IdentityHashMap();

    public final OM a(KeepSpecProtos.Bindings bindings) {
        FO fo;
        List<KeepSpecProtos.Binding> bindingsList = bindings.getBindingsList();
        if (!f42860c && bindingsList.isEmpty()) {
            throw new AssertionError();
        }
        Iterator<KeepSpecProtos.Binding> it = bindingsList.iterator();
        while (it.hasNext()) {
            String name = it.next().getName();
            if (!name.isEmpty()) {
                a(name);
            } else {
                throw new FN("Invalid binding to empty name");
            }
        }
        for (KeepSpecProtos.Binding binding : bindingsList) {
            PM pm2 = (PM) this.f42861a.get(binding.getName());
            if (binding.hasItem()) {
                KeepSpecProtos.ItemPattern item = binding.getItem();
                final HashMap hashMap = this.f42861a;
                Objects.requireNonNull(hashMap);
                Function function = new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return (PM) Map.this.get((String) obj);
                    }
                };
                if (item.hasClassItem()) {
                    KeepSpecProtos.ClassItemPattern classItem = item.getClassItem();
                    YM ym2 = YM.f45975c;
                    XM xm2 = new XM();
                    AbstractC10198x40 abstractC10198x40 = C9864v40.f53012b;
                    if (!VM.f45027a) {
                        YM a10 = xm2.a();
                        if (!a10.f45976a.c() || !((CO) a10.f45977b).f39212a.c()) {
                            throw new AssertionError();
                        }
                    }
                    if (classItem.hasClassPattern()) {
                        YM a11 = YM.a(classItem.getClassPattern());
                        XM xm3 = new XM();
                        xm3.f45671a = a11.f45976a;
                        xm3.f45672b = a11.f45977b;
                        xm2 = xm3;
                    }
                    if (classItem.hasAnnotatedBy()) {
                        KeepSpecProtos.AnnotatedByPattern annotatedBy = classItem.getAnnotatedBy();
                        if (!annotatedBy.hasName()) {
                            abstractC10198x40 = AbstractC10198x40.a(C8415mP.a());
                        } else {
                            abstractC10198x40 = AbstractC10198x40.a(C8415mP.a(annotatedBy.getName()));
                        }
                    }
                    fo = new WM(xm2.a(), abstractC10198x40);
                } else if (item.hasMemberItem()) {
                    KO a12 = new KO().a(item.getMemberItem(), function);
                    UM um2 = a12.f41662a;
                    if (um2 != null) {
                        fo = new LO(um2, a12.f41663b);
                    } else {
                        throw new FN("Invalid attempt to build a member pattern without a class reference");
                    }
                } else {
                    fo = null;
                }
                if (fo != null) {
                    a(pm2, fo);
                }
            }
        }
        if (f42860c || this.f42862b.size() == bindingsList.size()) {
            return this;
        }
        throw new AssertionError();
    }

    public final MM b(String str) {
        PM pm2 = (PM) this.f42861a.get(str);
        if (pm2 != null) {
            if (((FO) this.f42862b.get(pm2)).e()) {
                return new UM(pm2);
            }
            return new JO(pm2);
        }
        throw new FN("Undefined binding for name '" + str + "'");
    }

    public final NM b(PM pm2) {
        FO fo = (FO) this.f42862b.get(pm2);
        for (MM mm2 : fo.d()) {
            PM pm3 = mm2.f42280a;
            pm3.getClass();
            if (pm3 != pm2) {
                if (!this.f42862b.containsKey(mm2.f42280a)) {
                    PM pm4 = mm2.f42280a;
                    throw new FN("Undefined binding for binding '" + ((Object) pm4) + "' or type '" + (mm2.d() ? "class" : "member") + "' referenced in binding of '" + ((Object) pm2) + "'");
                }
            } else {
                throw new FN("Recursive binding for name '" + ((Object) mm2) + "'");
            }
        }
        return new NM(fo);
    }

    public final PM a(String str) {
        PM pm2 = new PM(str);
        if (((PM) this.f42861a.put(str, pm2)) == null) {
            return pm2;
        }
        throw new FN("Multiple bindings with name '" + str + "'");
    }

    public final void a(PM pm2, FO fo) {
        if (pm2 != null && fo != null) {
            if (((FO) this.f42862b.put(pm2, fo)) == null) {
                return;
            }
            throw new FN("Multiple definitions for binding '" + ((Object) pm2) + "'");
        }
        throw new FN("Invalid binding of '" + ((Object) pm2) + "'");
    }

    public final FO a(PM pm2) {
        FO fo = (FO) this.f42862b.remove(pm2);
        if (fo != null) {
            return fo;
        }
        throw new FN("Invalid deletion of binding '" + ((Object) pm2) + "'");
    }

    public final QM a() {
        if (this.f42862b.isEmpty()) {
            return QM.f43556b;
        }
        HashMap hashMap = new HashMap(this.f42862b.size());
        for (PM pm2 : this.f42862b.o()) {
            PM pm3 = (PM) this.f42861a.get(pm2.toString());
            if (pm3 != pm2) {
                int i10 = 0;
                while (pm3 != null) {
                    i10++;
                    pm2.f43186b = Integer.toString(i10);
                    pm3 = (PM) this.f42861a.get(pm2.toString());
                }
                this.f42861a.put(pm2.toString(), pm2);
            }
            hashMap.put(pm2, b(pm2));
        }
        return new QM(hashMap);
    }
}
