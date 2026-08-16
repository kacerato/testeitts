package com.itsmagic.engine.Engines.Graphics.MaterialShader.Dictionary;

import G8.a;
import Ic.C2634m;
import Ic.InterfaceC2638q;
import JAVARuntime.Order;
import Xb.B;
import Xb.C3196b;
import ac.C3598a;
import bc.InterfaceC3866a;
import bc.b;
import cc.C4173d;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.h;
import ec.i;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

@InterfaceC2638q
public class ShaderTemplates {

    @b
    @Order(idx = {0})
    @InterfaceC3866a
    private final C4173d litPBR = C3196b.b();

    @b
    @Order(idx = {1})
    @InterfaceC3866a
    private final C4173d litUltra = C3196b.d();

    @b
    @Order(idx = {2})
    @InterfaceC3866a
    private final C4173d litORM = B.a();

    @b
    @Order(idx = {3})
    @InterfaceC3866a
    private final C4173d litRefractive = C3196b.c();

    @b
    @Order(idx = {4})
    @InterfaceC3866a
    private final C4173d litLightMap = C3196b.a();

    @b
    @Order(idx = {5})
    @InterfaceC3866a
    private final C4173d unlitSimple = C3598a.b();

    @b
    @Order(idx = {6})
    @InterfaceC3866a
    private final C4173d litPS1 = Zb.a.b();

    @b
    @Order(idx = {7})
    @InterfaceC3866a
    private final C4173d unlitPS1 = Zb.a.c();

    @b
    @Order(idx = {8})
    @InterfaceC3866a
    private final C4173d litMatcap = Yb.a.a();

    @b
    @Order(idx = {9})
    @InterfaceC3866a
    private final C4173d unlitMatcap = Yb.a.b();

    @b
    @Order(idx = {10})
    @InterfaceC3866a
    private final C4173d carPaintCarbonFiber = Wb.a.b();
    private boolean initialized = false;
    private final List<C4173d> shadersList = new SteppedArrayList();
    private final List<C4173d> displayableShadersList = new SteppedArrayList();
    private final List<G8.a> dictionary = new SteppedArrayList();

    public static class a extends C2634m {

        public C4173d f81110b;

        public h f81111c;

        public i f81112d;

        public a(C4173d shaderConstructor, h forwardShader, i variance) {
            this.f81110b = shaderConstructor;
            this.f81111c = forwardShader;
            this.f81112d = variance;
        }
    }

    public final void a(String[] name, String totalName) {
        if (name.length == 0) {
            throw new NullPointerException("name can't be empty");
        }
        G8.a aVar = null;
        int i10 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= name.length - 1) {
                break;
            }
            String str = name[i10];
            if (aVar == null) {
                int i11 = 0;
                while (true) {
                    if (i11 >= this.dictionary.size()) {
                        z10 = false;
                        break;
                    }
                    G8.a aVar2 = this.dictionary.get(i11);
                    if (aVar2.j() == a.EnumC0148a.Folder && aVar2.h().equals(str)) {
                        aVar = aVar2;
                        break;
                    }
                    i11++;
                }
                if (!z10) {
                    aVar = new G8.a(a.EnumC0148a.Folder, str);
                    this.dictionary.add(aVar);
                }
            } else {
                boolean z11 = false;
                for (int i12 = 0; i12 < aVar.d(); i12++) {
                    G8.a c10 = aVar.c(i12);
                    if (c10.j() == a.EnumC0148a.Folder && c10.h().equals(str)) {
                        z11 = true;
                        aVar = c10;
                    }
                }
                if (!z11) {
                    G8.a aVar3 = new G8.a(a.EnumC0148a.Folder, str);
                    aVar.a(aVar3);
                    aVar = aVar3;
                }
            }
            i10++;
        }
        String str2 = name[name.length - 1];
        if (aVar != null) {
            aVar.a(new G8.a(str2, totalName));
        } else {
            this.dictionary.add(new G8.a(str2, totalName));
        }
    }

    public G8.a b(int i10) {
        j();
        return this.dictionary.get(i10);
    }

    public int c() {
        j();
        return this.dictionary.size();
    }

    public C4173d d(int i10) {
        j();
        return this.displayableShadersList.get(i10);
    }

    public int e() {
        j();
        return this.displayableShadersList.size();
    }

    public C4173d f(String name) {
        j();
        for (int i10 = 0; i10 < this.shadersList.size(); i10++) {
            C4173d c4173d = this.shadersList.get(i10);
            if (c4173d.l().equalsIgnoreCase(name)) {
                return c4173d;
            }
        }
        throw new ShaderNotFoundException("Shader:" + name);
    }

    public O9.a<a> g() {
        j();
        O9.a<a> aVar = new O9.a<>(500);
        for (int i10 = 0; i10 < this.shadersList.size(); i10++) {
            this.shadersList.get(i10).k(aVar);
        }
        return aVar;
    }

    public C4173d h() {
        return this.litPBR;
    }

    public List<G8.a> i() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.dictionary.size(); i10++) {
            steppedArrayList.add(this.dictionary.get(i10).clone());
        }
        return steppedArrayList;
    }

    public final void j() {
        if (this.initialized) {
            return;
        }
        this.shadersList.clear();
        this.displayableShadersList.clear();
        for (Field field : ShaderTemplates.class.getDeclaredFields()) {
            if (field.getAnnotation(b.class) != null && field.getType() == C4173d.class) {
                try {
                    this.shadersList.add((C4173d) field.get(this));
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            if (field.getAnnotation(InterfaceC3866a.class) != null && field.getType() == C4173d.class) {
                try {
                    C4173d c4173d = (C4173d) field.get(this);
                    Order order = (Order) field.getAnnotation(Order.class);
                    if (order != null) {
                        int i10 = order.idx()[0];
                        while (this.displayableShadersList.size() < i10) {
                            this.displayableShadersList.add(null);
                        }
                        this.displayableShadersList.add(i10, c4173d);
                    } else {
                        this.displayableShadersList.add(c4173d);
                    }
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            }
        }
        this.displayableShadersList.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.isNull((C4173d) obj);
            }
        });
        this.dictionary.clear();
        for (int i11 = 0; i11 < this.displayableShadersList.size(); i11++) {
            String l10 = this.displayableShadersList.get(i11).l();
            a(l10.split("/"), l10);
        }
        this.initialized = true;
    }

    public C4173d k(String name) {
        j();
        for (int i10 = 0; i10 < this.shadersList.size(); i10++) {
            C4173d c4173d = this.shadersList.get(i10);
            if (c4173d.l().equalsIgnoreCase(name)) {
                return c4173d;
            }
        }
        throw new ShaderNotFoundException("Shader:" + name);
    }
}
