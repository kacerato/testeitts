package com.android.dx.ssa;

import com.android.dx.util.IntSet;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class DomFront {
    private static final boolean DEBUG = false;
    private final DomInfo[] domInfos;
    private final SsaMethod meth;
    private final ArrayList<SsaBasicBlock> nodes;

    public static class DomInfo {
        public IntSet dominanceFrontiers;
        public int idom = -1;
    }

    public DomFront(SsaMethod ssaMethod) {
        this.meth = ssaMethod;
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        this.nodes = blocks;
        int size = blocks.size();
        this.domInfos = new DomInfo[size];
        for (int i10 = 0; i10 < size; i10++) {
            this.domInfos[i10] = new DomInfo();
        }
    }

    private void buildDomTree() {
        int size = this.nodes.size();
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = this.domInfos[i10].idom;
            if (i11 != -1) {
                this.nodes.get(i11).addDomChild(this.nodes.get(i10));
            }
        }
    }

    private void calcDomFronts() {
        int size = this.nodes.size();
        for (int i10 = 0; i10 < size; i10++) {
            SsaBasicBlock ssaBasicBlock = this.nodes.get(i10);
            DomInfo domInfo = this.domInfos[i10];
            BitSet predecessors = ssaBasicBlock.getPredecessors();
            if (predecessors.cardinality() > 1) {
                for (int nextSetBit = predecessors.nextSetBit(0); nextSetBit >= 0; nextSetBit = predecessors.nextSetBit(nextSetBit + 1)) {
                    int i11 = nextSetBit;
                    while (i11 != domInfo.idom && i11 != -1) {
                        DomInfo domInfo2 = this.domInfos[i11];
                        if (domInfo2.dominanceFrontiers.has(i10)) {
                            break;
                        }
                        domInfo2.dominanceFrontiers.add(i10);
                        i11 = domInfo2.idom;
                    }
                }
            }
        }
    }

    private void debugPrintDomChildren() {
        int size = this.nodes.size();
        for (int i10 = 0; i10 < size; i10++) {
            SsaBasicBlock ssaBasicBlock = this.nodes.get(i10);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
            Iterator<SsaBasicBlock> it = ssaBasicBlock.getDomChildren().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                SsaBasicBlock next = it.next();
                if (z10) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append((Object) next);
                z10 = true;
            }
            stringBuffer.append(JavaElement.JEM_ANNOTATION);
            System.out.println("domChildren[" + ((Object) ssaBasicBlock) + "]: " + ((Object) stringBuffer));
        }
    }

    public DomInfo[] run() {
        int size = this.nodes.size();
        Dominators.make(this.meth, this.domInfos, false);
        buildDomTree();
        for (int i10 = 0; i10 < size; i10++) {
            this.domInfos[i10].dominanceFrontiers = SetFactory.makeDomFrontSet(size);
        }
        calcDomFronts();
        return this.domInfos;
    }
}
