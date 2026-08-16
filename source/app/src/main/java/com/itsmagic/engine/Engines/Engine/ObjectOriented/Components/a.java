package com.itsmagic.engine.Engines.Engine.ObjectOriented.Components;

import Ic.C2632k;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Input.Key;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import eb.C13051b;
import gb.C13317e;
import j9.C13813a;
import java.io.File;
import java.io.Serializable;
import java.util.List;
import java.util.function.Predicate;
import t3.C15377a;

public class a implements Serializable {

    public GameObject f79264d;

    public final SteppedArrayList<Component> f79262b = new SteppedArrayList<>();

    public final SteppedArrayList<Component> f79263c = new SteppedArrayList<>();

    public final eb.h f79265e = new C1338a();

    public final ThreadLocal<List<Component>> f79266f = new h();

    public class C1338a implements eb.h {

        public class RunnableC1339a implements Runnable {

            public final Activity f79268b;

            public final String f79269c;

            public final String f79270d;

            public class C1340a implements SweetAlertDialog.OnSweetClickListener {
                public C1340a() {
                }

                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    sweetAlertDialog.dismissWithAnimation();
                }
            }

            public RunnableC1339a(final Activity val$activity, final String val$tittle, final String val$message) {
                this.f79268b = val$activity;
                this.f79269c = val$tittle;
                this.f79270d = val$message;
            }

            @Override
            public void run() {
                SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.f79268b);
                sweetAlertDialog.setTitle(this.f79269c);
                sweetAlertDialog.setContentText(this.f79270d);
                sweetAlertDialog.setConfirmButton("Ok", new C1340a());
                sweetAlertDialog.show();
            }
        }

        public C1338a() {
        }

        @Override
        public GameObject a() {
            return a.this.f79264d;
        }

        @Override
        public void b(String tittle, String message) {
            Activity o10 = N7.c.o();
            o10.runOnUiThread(new RunnableC1339a(o10, tittle, message));
        }

        @Override
        public boolean c(Component component) {
            a.this.c(component);
            return true;
        }
    }

    public class b implements Runnable {

        public final Component f79273b;

        public b(final Component val$component) {
            this.f79273b = val$component;
        }

        @Override
        public void run() {
            this.f79273b.onAttachInternal();
            this.f79273b.onAttach();
        }
    }

    public class c implements Runnable {

        public final Component f79275b;

        public c(final Component val$component) {
            this.f79275b = val$component;
        }

        @Override
        public void run() {
            this.f79275b.onDetach();
        }
    }

    public class d implements Runnable {

        public final Component f79277b;

        public d(final Component val$component) {
            this.f79277b = val$component;
        }

        @Override
        public void run() {
            int indexOf = a.this.f79262b.indexOf(this.f79277b);
            if (indexOf > 0) {
                int i10 = indexOf - 1;
                Component component = (Component) a.this.f79262b.get(i10);
                a.this.f79262b.set(i10, this.f79277b);
                a.this.f79262b.set(indexOf, component);
                a.this.B();
            }
        }
    }

    public class e implements Runnable {

        public final Component f79279b;

        public e(final Component val$component) {
            this.f79279b = val$component;
        }

        @Override
        public void run() {
            int indexOf = a.this.f79262b.indexOf(this.f79279b);
            if (indexOf < 0 || indexOf >= a.this.f79262b.size() - 1) {
                return;
            }
            int i10 = indexOf + 1;
            Component component = (Component) a.this.f79262b.get(i10);
            a.this.f79262b.set(i10, this.f79279b);
            a.this.f79262b.set(indexOf, component);
            a.this.B();
        }
    }

    public class f implements Predicate<String> {
        public f() {
        }

        @Override
        public boolean test(String s10) {
            return s10 == null;
        }
    }

    public class g implements Predicate<String> {
        public g() {
        }

        @Override
        public boolean test(String s10) {
            return s10 == null;
        }
    }

    public class h extends ThreadLocal<List<Component>> {
        public h() {
        }

        @Override
        @Nullable
        public List<Component> initialValue() {
            return new SteppedArrayList();
        }
    }

    public interface i {
        boolean a(GameObject gameObject, Component component, int index);
    }

    public a() {
    }

    public static a l(JsonObject json, GameObject gameObject, boolean loadJavaComponents, GameObject.e componentFilter) {
        a aVar = (a) X7.a.m().fromJson((JsonElement) json, a.class);
        if (aVar == null) {
            aVar = new a();
        }
        aVar.f79264d = gameObject;
        JsonArray asJsonArray = json.getAsJsonArray("serializedComponentsArray");
        for (int i10 = 0; i10 < asJsonArray.size(); i10++) {
            Component deserialize = Component.deserialize(asJsonArray.get(i10).getAsJsonObject());
            if (deserialize != null && (componentFilter == null || componentFilter.a(deserialize))) {
                deserialize.f79250n = gameObject;
                if (loadJavaComponents && deserialize.getType() == Component.e.JavaComponent) {
                    try {
                        JavaComponent javaComponent = (JavaComponent) deserialize;
                        if (javaComponent.getRuntimeComponent() != null) {
                            javaComponent.getRuntimeComponent().myObject = gameObject.W1();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                aVar.f79263c.add(deserialize);
            }
        }
        return aVar;
    }

    public int A(Component component) {
        int indexOf = this.f79262b.indexOf(component);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    public final void B() {
        GameObject gameObject = this.f79264d;
        if (gameObject != null) {
            gameObject.l1();
            this.f79264d.n1();
        }
    }

    public void C(Component component) {
        K8.a.B(new e(component));
    }

    public void D(Component component) {
        K8.a.B(new d(component));
    }

    public void E(C13813a collision) {
        if (collision == null) {
            throw new NullPointerException("Collision can't be null");
        }
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.onCollision(collision);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void F(C13813a collision) {
        if (collision == null) {
            throw new NullPointerException("Collision can't be null");
        }
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.onCollisionEnter(collision);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void G(C13813a collision) {
        if (collision == null) {
            throw new NullPointerException("Collision can't be null");
        }
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.onCollisionStop(collision);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void H(Key key) {
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.onKeyDown(key);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void I(Key key) {
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.onKeyPressed(key);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void J(Key key) {
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.onKeyUp(key);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void K() {
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.posPhysics();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void L() {
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.posWheelPhysics();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void M() {
        synchronized (this.f79262b) {
            try {
                int size = this.f79262b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Component component = this.f79262b.get(i10);
                    if (component != null) {
                        component.prePhysics();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void N() {
        boolean isEmpty = this.f79263c.isEmpty();
        this.f79262b.addAll(this.f79263c);
        this.f79263c.clear();
        if (isEmpty) {
            return;
        }
        B();
    }

    public void O(BuildDictionary dictionary) {
        for (int i10 = 0; i10 < this.f79263c.size(); i10++) {
            this.f79263c.get(i10).reloadFilesPaths(dictionary);
        }
        for (int i11 = 0; i11 < this.f79262b.size(); i11++) {
            this.f79262b.get(i11).reloadFilesPaths(dictionary);
        }
    }

    public void P(Component component) {
        Q(component, false);
    }

    public void Q(Component component, boolean force) {
        boolean z10;
        GameObject gameObject;
        if (component == null) {
            return;
        }
        if (!this.f79262b.contains(component)) {
            throw new RuntimeException("Component not found");
        }
        int i10 = 0;
        boolean z11 = false;
        while (true) {
            z10 = true;
            if (i10 >= this.f79262b.size()) {
                break;
            }
            Component component2 = this.f79262b.get(i10);
            if (component2 != component && component2.serializedComponentType.equals(component.serializedComponentType)) {
                z11 = true;
            }
            i10++;
        }
        if (!z11) {
            for (int i11 = 0; i11 < this.f79262b.size(); i11++) {
                Component component3 = this.f79262b.get(i11);
                C13051b componentRequired = component3.getComponentRequired();
                if (componentRequired != null && componentRequired.d() && componentRequired.c(component)) {
                    this.f79265e.b("Ops!", "You cannot remove " + component.getTitle() + ", as the following component needs it: " + component3.getTitle() + ". " + this.f79265e.a().P0());
                    z10 = false;
                }
            }
        }
        if (z10 || z11 || force) {
            R8.f.r(component);
            this.f79262b.remove(component);
            B();
            if (K8.a.r()) {
                component.onDetach();
            } else {
                K8.a.I(new c(component));
            }
            if (C13317e.J(this.f79264d) && (gameObject = W7.b.f27309i.f31909a.f31910a) != null && gameObject == this.f79264d) {
                N7.c.l(0.3f, new eb.e());
            }
        }
    }

    public JsonElement R() {
        JsonElement serialize;
        JsonElement serialize2;
        Context t10 = N7.c.t();
        JsonElement jsonTree = X7.a.m().toJsonTree(this);
        JsonObject jsonObject = (JsonObject) jsonTree;
        JsonArray jsonArray = new JsonArray();
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            Component component = this.f79262b.get(i10);
            if (component != null && (serialize2 = component.serialize(t10)) != null) {
                jsonArray.add(serialize2);
            }
        }
        for (int i11 = 0; i11 < this.f79263c.size(); i11++) {
            Component component2 = this.f79263c.get(i11);
            if (component2 != null && (serialize = component2.serialize(t10)) != null) {
                jsonArray.add(serialize);
            }
        }
        jsonObject.add("serializedComponentsArray", jsonArray);
        return jsonTree;
    }

    public void S() {
        for (int i10 = 0; i10 < this.f79263c.size(); i10++) {
            c(this.f79263c.get(i10));
        }
        this.f79263c.clear();
    }

    public void T() {
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            Component component = this.f79262b.get(i10);
            R8.f.r(component);
            component.onDetach();
            component.onDetachInternal();
        }
        this.f79262b.clear();
    }

    public void c(Component component) {
        GameObject gameObject;
        if (component == null) {
            return;
        }
        if (this.f79262b.contains(component)) {
            throw new RuntimeException("Double add");
        }
        C13051b componentRequired = component.getComponentRequired();
        boolean z10 = true;
        if (componentRequired != null && componentRequired.d() && !componentRequired.a(this.f79262b, null, this.f79265e)) {
            z10 = false;
        }
        if (z10 && component.allowOncePerObject()) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.f79262b.size()) {
                    break;
                }
                Component component2 = this.f79262b.get(i10);
                if (component2.getClass() == component.getClass() && component2 != component) {
                    z10 = false;
                    break;
                }
                i10++;
            }
        }
        if (z10) {
            R8.f.b(component);
            this.f79262b.add(component);
            component.setGameObject(this.f79264d);
            B();
            component.onHierarchyActiveChangedInternal(this.f79264d.isHierarchyActive(), false);
            if (K8.a.r()) {
                component.onAttachInternal();
                component.onAttach();
            } else {
                K8.a.I(new b(component));
            }
            if (C13317e.J(this.f79264d) && (gameObject = W7.b.f27309i.f31909a.f31910a) != null && gameObject == this.f79264d) {
                N7.c.l(0.3f, new eb.e());
            }
        }
    }

    public void d(String functionName, Object... value) {
        int i10;
        try {
            List<Component> list = this.f79266f.get();
            synchronized (this.f79262b) {
                try {
                    int size = this.f79262b.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        Component component = this.f79262b.get(i11);
                        if (component != null && component.willCallFunction(functionName, value)) {
                            list.add(component);
                        }
                    }
                } finally {
                }
            }
            if (list.isEmpty()) {
                return;
            }
            for (i10 = 0; i10 < list.size(); i10++) {
                list.get(i10).callFunction(functionName, value);
            }
            list.clear();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public a clone() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            Component component = this.f79262b.get(i10);
            if (component != null) {
                Component clone = Component.clone(component);
                if (clone == null) {
                    throw new RuntimeException("The component " + component.getTitle() + " doesnt explict implement cloneable method");
                }
                steppedArrayList.add(clone);
            }
        }
        return new a(this.f79264d, steppedArrayList);
    }

    public void f(GameObject gameObject, a objectComponents) {
        this.f79264d = gameObject;
        this.f79262b.clear();
        this.f79263c.clear();
        for (int i10 = 0; i10 < objectComponents.f79263c.size(); i10++) {
            Component component = objectComponents.f79263c.get(i10);
            if (component != null) {
                Component clone = Component.clone(component);
                if (clone == null) {
                    throw new RuntimeException("The component " + component.getTitle() + " doesnt explict implement cloneable method");
                }
                this.f79263c.add(clone);
            }
        }
        for (int i11 = 0; i11 < objectComponents.f79262b.size(); i11++) {
            Component component2 = objectComponents.f79262b.get(i11);
            if (component2 != null) {
                Component clone2 = Component.clone(component2);
                if (clone2 == null) {
                    throw new RuntimeException("The component " + component2.getTitle() + " doesnt explict implement cloneable method");
                }
                this.f79263c.add(clone2);
            }
        }
    }

    public Component g(int idx) {
        return this.f79262b.get(idx);
    }

    public Component h(int idx) {
        return this.f79262b.get(idx);
    }

    public int i() {
        return this.f79262b.size();
    }

    public int j() {
        return this.f79262b.size();
    }

    public int k(List<Component> output, GameObject gameObject) {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f79262b.size(); i11++) {
            Component component = this.f79262b.get(i11);
            component.f79250n = gameObject;
            i10 += component.countAsync();
            output.add(component);
        }
        for (int i12 = 0; i12 < this.f79263c.size(); i12++) {
            Component component2 = this.f79263c.get(i12);
            component2.f79250n = gameObject;
            i10 += component2.countAsync();
            output.add(component2);
        }
        return i10;
    }

    public void m(GameObject gameObject, a objectComponents) {
        this.f79264d = gameObject;
        this.f79262b.clear();
        this.f79263c.clear();
        for (int i10 = 0; i10 < objectComponents.f79263c.size(); i10++) {
            Component component = objectComponents.f79263c.get(i10);
            if (component != null) {
                this.f79263c.add(component);
            }
        }
        for (int i11 = 0; i11 < objectComponents.f79262b.size(); i11++) {
            Component component2 = objectComponents.f79262b.get(i11);
            if (component2 != null) {
                this.f79263c.add(component2);
            }
        }
    }

    public <T extends Component> T n(Component.e type, GameObject gameObject) {
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            T t10 = (T) this.f79262b.get(i10);
            if (t10 != null && t10.getType() == type) {
                return t10;
            }
        }
        return null;
    }

    public <T extends Component> T o(Class classReference, GameObject gameObject) {
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            T t10 = (T) this.f79262b.get(i10);
            if (t10 != null && classReference.isInstance(t10)) {
                return t10;
            }
        }
        return null;
    }

    public <T extends Component> T p(String tittle, GameObject gameObject) {
        if (tittle == null || tittle.isEmpty()) {
            throw new NullPointerException("name can't be empty or null");
        }
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            T t10 = (T) this.f79262b.get(i10);
            if (t10 != null && t10.getTitle().equalsIgnoreCase(tittle)) {
                return t10;
            }
        }
        return null;
    }

    public JAVARuntime.Component q(Class classReference, GameObject gameObject) {
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            Component component = this.f79262b.get(i10);
            if (component != null && classReference.isInstance(component.toJAVARuntime())) {
                return component.toJAVARuntime();
            }
        }
        return null;
    }

    public <T extends Component> T r(String SGUID, GameObject gameObject) {
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            T t10 = (T) this.f79262b.get(i10);
            if (t10 != null) {
                if (t10.getType() == Component.e.JavaComponent) {
                    try {
                        JavaComponent javaComponent = (JavaComponent) t10;
                        javaComponent.getRuntimeComponent();
                        if (javaComponent.getGuid() != null && javaComponent.getGuid().l().equalsIgnoreCase(SGUID)) {
                            return javaComponent;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else if (t10.getGuid() != null && t10.getGuid().l().equalsIgnoreCase(SGUID)) {
                    return t10;
                }
            }
        }
        return null;
    }

    public List<Component> s(Component.e type, GameObject gameObject) {
        return u(type, new SteppedArrayList(), gameObject);
    }

    public List<Component> u(Component.e type, List<Component> out, GameObject gameObject) {
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            Component component = this.f79262b.get(i10);
            if (component != null && component.getType() == type) {
                out.add(component);
            }
        }
        return out;
    }

    public List<JAVARuntime.Component> v(Class classReference, GameObject gameObject) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            Component component = this.f79262b.get(i10);
            if (component != null && classReference.isInstance(component.toJAVARuntime())) {
                steppedArrayList.add(component.toJAVARuntime());
            }
        }
        return steppedArrayList;
    }

    public List<Component> w(String tittle, GameObject gameObject) {
        return x(tittle, new SteppedArrayList(), gameObject);
    }

    public List<Component> x(String tittle, List<Component> out, GameObject gameObject) {
        for (int i10 = 0; i10 < this.f79262b.size(); i10++) {
            Component component = this.f79262b.get(i10);
            if (component != null && component.getTitle().equalsIgnoreCase(tittle)) {
                out.add(component);
            }
        }
        return out;
    }

    public boolean y(GameObject gameObject, i listener) {
        int size = this.f79262b.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (listener.a(gameObject, this.f79262b.get(i10), i10)) {
                return true;
            }
        }
        return false;
    }

    public void z(Context context, C2632k dependency, File file) {
        for (int i10 = 0; i10 < this.f79263c.size(); i10++) {
            C2632k dependencyFiles = this.f79263c.get(i10).getDependencyFiles(null);
            if (dependencyFiles != null) {
                if (!C15377a.f109719g.booleanValue()) {
                    for (int i11 = 0; i11 < dependencyFiles.f9114a.size(); i11++) {
                        String str = dependencyFiles.f9114a.get(i11);
                        if (str != null && str.contains(com.itsmagic.engine.Core.Components.ProjectController.a.R())) {
                            System.out.println("File[" + str + "] stored with full path instead of IPP on component:" + ((Object) getClass()));
                        }
                    }
                }
                dependencyFiles.f9114a.removeIf(new f());
                dependency.f9114a.addAll(dependencyFiles.f9114a);
                dependencyFiles.f9114a.clear();
            }
        }
        for (int i12 = 0; i12 < this.f79262b.size(); i12++) {
            C2632k dependencyFiles2 = this.f79262b.get(i12).getDependencyFiles(null);
            if (dependencyFiles2 != null) {
                if (!C15377a.f109719g.booleanValue()) {
                    for (int i13 = 0; i13 < dependencyFiles2.f9114a.size(); i13++) {
                        String str2 = dependencyFiles2.f9114a.get(i13);
                        if (str2 != null && str2.contains(com.itsmagic.engine.Core.Components.ProjectController.a.R())) {
                            System.out.println("File[" + str2 + "] stored with full path instead of IPP on component:" + ((Object) getClass()));
                        }
                    }
                }
                dependencyFiles2.f9114a.removeIf(new g());
                dependency.f9114a.addAll(dependencyFiles2.f9114a);
                dependencyFiles2.f9114a.clear();
            }
        }
    }

    public a(GameObject preUpdateObject) {
        this.f79264d = preUpdateObject;
    }

    public a(GameObject gameObject, SteppedArrayList<Component> componentsList) {
        this.f79264d = gameObject;
        for (int i10 = 0; i10 < componentsList.size(); i10++) {
            Component component = componentsList.get(i10);
            if (component != null) {
                c(component);
            }
        }
    }
}
