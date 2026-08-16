package com.itsmagic.engine.Activities.Editor.Utils;

import G8.a;
import Ob.a;
import android.content.Context;
import android.view.View;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialShader;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import dd.C12908b;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import n.C14331a;
import r4.C15147a;

public class A {

    public class a implements dd.d {

        public final B f71952a;

        public a(final B val$callBack) {
            this.f71952a = val$callBack;
        }

        @Override
        public void onSelected(View v10) {
            if (C14331a.c()) {
                Z6.k.w1("https://itsmagic.com.br/index.html", v10, C15147a.e.Below, 300.0f, 450.0f);
                return;
            }
            B b10 = this.f71952a;
            if (b10 != null) {
                b10.onSelected(com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.f81159a);
            }
        }
    }

    public class b implements dd.d {

        public final G8.a f71953a;

        public final B f71954b;

        public b(final G8.a val$shader, final B val$callBack) {
            this.f71953a = val$shader;
            this.f71954b = val$callBack;
        }

        @Override
        public void onSelected(View v10) {
            B b10;
            G8.a aVar = this.f71953a;
            if (aVar == null || aVar.j() == a.EnumC0148a.Folder || (b10 = this.f71954b) == null) {
                return;
            }
            b10.onSelected(this.f71953a.i());
        }
    }

    public static List<G8.a> a(List<G8.a> list) {
        LinkedList linkedList = new LinkedList();
        for (G8.a aVar : list) {
            Iterator<E> it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    linkedList.add(aVar);
                    break;
                }
                G8.a aVar2 = (G8.a) it.next();
                if (aVar.j() == aVar2.j() && aVar.h().equalsIgnoreCase(aVar2.h())) {
                    aVar2.f().addAll(aVar.f());
                    break;
                }
            }
            if (aVar.f() != null && !aVar.f().isEmpty()) {
                aVar.k(a(aVar.f()));
            }
        }
        return linkedList;
    }

    public static List<C12908b> b(Context context, View holder, G8.a parent, B callBack) {
        List<G8.a> f10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (context != null) {
            if (parent == null) {
                steppedArrayList.add(new C12908b(com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.f81159a, new a(callBack)));
                f10 = null;
                try {
                    SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                    synchronized (K8.a.l().d().materialShaders) {
                        for (int i10 = 0; i10 < K8.a.l().d().materialShaders.size(); i10++) {
                            try {
                                MaterialShader materialShader = K8.a.l().d().materialShaders.get(i10);
                                steppedArrayList2.add(new d8.p(materialShader.c(), materialShader.b()));
                            } finally {
                            }
                        }
                    }
                    if (steppedArrayList2.isEmpty()) {
                        f10 = a.b.f16600a.i();
                    } else {
                        List<G8.a> i11 = a.b.f16600a.i();
                        Iterator<T> it = steppedArrayList2.iterator();
                        while (it.hasNext()) {
                            i11.add(((d8.p) it.next()).a());
                        }
                        f10 = a(i11);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else {
                f10 = parent.f();
            }
            if (f10 != null) {
                for (int i12 = 0; i12 < f10.size(); i12++) {
                    G8.a aVar = f10.get(i12);
                    if (aVar.j() != a.EnumC0148a.Folder) {
                        steppedArrayList.add(new C12908b(aVar.h(), new b(aVar, callBack)));
                    } else if (aVar.d() > 0) {
                        steppedArrayList.add(new C12908b(aVar.h(), b(context, holder, aVar, callBack)));
                    }
                }
            }
        }
        return steppedArrayList;
    }

    public static void c(Context context, View holder, B callBack) {
        if (context != null) {
            Y6.a.F1(holder, C15147a.e.Below, b(context, holder, null, callBack));
        }
    }
}
