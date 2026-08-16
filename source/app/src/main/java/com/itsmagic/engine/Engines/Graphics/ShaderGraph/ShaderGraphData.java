package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import Ic.C2629h;
import Ic.C2632k;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public class ShaderGraphData {

    public static long f81294e;

    public transient boolean f81296b;

    public transient long f81297c;

    public transient Runnable f81298d;

    @Expose
    public List<ShaderGraphNodeRecord> serializedNodes = new SteppedArrayList();

    @Expose
    public List<ShaderGraphNodeConnection> connections = new SteppedArrayList();

    @Expose
    public List<ShaderGraphBranchConnection> branchConnections = new SteppedArrayList();

    @Expose
    public ShaderGraphSettings settings = new ShaderGraphSettings();

    public transient List<ShaderGraphNode> f81295a = new SteppedArrayList();

    public static void d() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - f81294e < 1000) {
            return;
        }
        f81294e = currentTimeMillis;
        ShaderGraphDiskCache.c();
    }

    public static boolean i(ShaderGraphNode shaderGraphNode, ShaderGraphNodeConnection shaderGraphNodeConnection) {
        return shaderGraphNode.j().equals(shaderGraphNodeConnection.fromNodeId) || shaderGraphNode.j().equals(shaderGraphNodeConnection.toNodeId);
    }

    public static boolean j(ShaderGraphNode shaderGraphNode, ShaderGraphBranchConnection shaderGraphBranchConnection) {
        return shaderGraphNode.j().equals(shaderGraphBranchConnection.fromNodeId) || shaderGraphNode.j().equals(shaderGraphBranchConnection.toNodeId);
    }

    public void c(ShaderGraphNode node) {
        e();
        if (node == null) {
            return;
        }
        String j10 = node.j();
        if (j10 != null && !j10.isEmpty()) {
            Iterator<ShaderGraphNode> it = this.f81295a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ShaderGraphNode next = it.next();
                if (next != null && next != node && j10.equals(next.j())) {
                    node.f81309id = Tc.b.L();
                    break;
                }
            }
        }
        this.f81295a.add(node);
        k();
    }

    public void e() {
        ShaderGraphNode c10;
        r.a();
        if (this.f81295a == null) {
            this.f81295a = new SteppedArrayList();
        }
        if (!this.f81295a.isEmpty()) {
            m();
            return;
        }
        List<ShaderGraphNodeRecord> list = this.serializedNodes;
        if (list == null) {
            return;
        }
        for (ShaderGraphNodeRecord shaderGraphNodeRecord : list) {
            if (shaderGraphNodeRecord != null && (c10 = p.c(shaderGraphNodeRecord.serializedType, shaderGraphNodeRecord.data)) != null) {
                this.f81295a.add(c10);
            }
        }
        m();
    }

    public ShaderGraphNode f(String id2) {
        if (id2 == null) {
            return null;
        }
        e();
        for (ShaderGraphNode shaderGraphNode : this.f81295a) {
            if (shaderGraphNode != null && id2.equals(shaderGraphNode.j())) {
                return shaderGraphNode;
            }
        }
        return null;
    }

    public C2632k g(C2629h dependencyRequest) {
        e();
        C2632k c2632k = new C2632k();
        for (int i10 = 0; i10 < this.f81295a.size(); i10++) {
            ShaderGraphNode shaderGraphNode = this.f81295a.get(i10);
            if (shaderGraphNode != null) {
                c2632k.f9114a.addAll(shaderGraphNode.i(dependencyRequest).f9114a);
            }
        }
        return c2632k;
    }

    public ShaderGraphNode h() {
        e();
        for (ShaderGraphNode shaderGraphNode : this.f81295a) {
            if (shaderGraphNode != null && !shaderGraphNode.f() && shaderGraphNode.w()) {
                return shaderGraphNode;
            }
        }
        return null;
    }

    public void k() {
        this.f81296b = true;
        this.f81297c = System.currentTimeMillis();
        d();
        Runnable runnable = this.f81298d;
        if (runnable != null) {
            runnable.run();
        }
    }

    public String l() {
        return Tc.b.L();
    }

    public final void m() {
        List<ShaderGraphNode> list = this.f81295a;
        if (list == null || list.size() < 2) {
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(this.f81295a.size());
        HashSet hashSet = new HashSet();
        for (int size = this.f81295a.size() - 1; size >= 0; size--) {
            ShaderGraphNode shaderGraphNode = this.f81295a.get(size);
            if (shaderGraphNode != null) {
                String j10 = shaderGraphNode.j();
                if (j10 == null || j10.isEmpty()) {
                    steppedArrayList.add(0, shaderGraphNode);
                } else if (hashSet.add(j10)) {
                    steppedArrayList.add(0, shaderGraphNode);
                }
            }
        }
        if (steppedArrayList.size() != this.f81295a.size()) {
            this.f81295a.clear();
            this.f81295a.addAll(steppedArrayList);
        }
    }

    public void n(BuildDictionary dictionary) {
        e();
        for (int i10 = 0; i10 < this.f81295a.size(); i10++) {
            ShaderGraphNode shaderGraphNode = this.f81295a.get(i10);
            if (shaderGraphNode != null) {
                shaderGraphNode.C(dictionary);
            }
        }
    }

    public void o(final ShaderGraphNode node) {
        if (node != null && node.f()) {
            e();
            this.f81295a.remove(node);
            List<ShaderGraphNodeConnection> list = this.connections;
            if (list != null) {
                list.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean i10;
                        i10 = ShaderGraphData.i(ShaderGraphNode.this, (ShaderGraphNodeConnection) obj);
                        return i10;
                    }
                });
            }
            List<ShaderGraphBranchConnection> list2 = this.branchConnections;
            if (list2 != null) {
                list2.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean j10;
                        j10 = ShaderGraphData.j(ShaderGraphNode.this, (ShaderGraphBranchConnection) obj);
                        return j10;
                    }
                });
            }
            k();
        }
    }

    public void p(Runnable pendingSaveListener) {
        this.f81298d = pendingSaveListener;
    }

    public void q() {
        if (this.serializedNodes == null) {
            this.serializedNodes = new SteppedArrayList();
        }
        this.serializedNodes.clear();
        List<ShaderGraphNode> list = this.f81295a;
        if (list == null) {
            return;
        }
        for (ShaderGraphNode shaderGraphNode : list) {
            if (shaderGraphNode != null) {
                String str = shaderGraphNode.serializedNodeType;
                if (str == null || str.isEmpty()) {
                    str = shaderGraphNode.t();
                }
                this.serializedNodes.add(new ShaderGraphNodeRecord(str, p.f(shaderGraphNode)));
            }
        }
    }
}
