package org.eclipse.jdt.internal.core.search.matching;

import java.util.ArrayList;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.util.HashtableOfLong;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.util.Util;

public class MatchingNodeSet {
    public boolean mustResolve;
    static Integer EXACT_MATCH = 0;
    static Integer POTENTIAL_MATCH = 1;
    static Integer ERASURE_MATCH = 16;
    SimpleLookupTable matchingNodes = new SimpleLookupTable(3);
    private HashtableOfLong matchingNodesKeys = new HashtableOfLong(3);
    SimpleSet possibleMatchingNodesSet = new SimpleSet(7);
    private HashtableOfLong possibleMatchingNodesKeys = new HashtableOfLong(7);

    public MatchingNodeSet(boolean z10) {
        this.mustResolve = z10;
    }

    public int addMatch(ASTNode aSTNode, int i10) {
        int i11 = i10 & 15;
        if (i11 != 1) {
            if (i11 == 2) {
                addPossibleMatch(aSTNode);
            } else if (i11 != 3) {
                if (i11 == 4) {
                    if (i10 != i11) {
                        addTrustedMatch(aSTNode, Integer.valueOf((i10 & (-16)) + 16));
                    } else {
                        addTrustedMatch(aSTNode, ERASURE_MATCH);
                    }
                }
            } else if (i10 != i11) {
                addTrustedMatch(aSTNode, Integer.valueOf(i10 & (-16)));
            } else {
                addTrustedMatch(aSTNode, EXACT_MATCH);
            }
        } else if (i10 != i11) {
            addTrustedMatch(aSTNode, Integer.valueOf((i10 & (-16)) + 1));
        } else {
            addTrustedMatch(aSTNode, POTENTIAL_MATCH);
        }
        return i10;
    }

    public void addPossibleMatch(ASTNode aSTNode) {
        long j10 = (aSTNode.sourceStart << 32) + aSTNode.sourceEnd;
        ASTNode aSTNode2 = (ASTNode) this.possibleMatchingNodesKeys.get(j10);
        if (aSTNode2 != null && aSTNode2.getClass().equals(aSTNode.getClass())) {
            this.possibleMatchingNodesSet.remove(aSTNode2);
        }
        this.possibleMatchingNodesSet.add(aSTNode);
        this.possibleMatchingNodesKeys.put(j10, aSTNode);
    }

    public void addTrustedMatch(ASTNode aSTNode, boolean z10) {
        addTrustedMatch(aSTNode, z10 ? EXACT_MATCH : POTENTIAL_MATCH);
    }

    public boolean hasPossibleNodes(int i10, int i11) {
        for (Object obj : this.possibleMatchingNodesSet.values) {
            ASTNode aSTNode = (ASTNode) obj;
            if (aSTNode != null && i10 <= aSTNode.sourceStart && aSTNode.sourceEnd <= i11) {
                return true;
            }
        }
        for (Object obj2 : this.matchingNodes.keyTable) {
            ASTNode aSTNode2 = (ASTNode) obj2;
            if (aSTNode2 != null && i10 <= aSTNode2.sourceStart && aSTNode2.sourceEnd <= i11) {
                return true;
            }
        }
        return false;
    }

    public ASTNode[] matchingNodes(int i10, int i11) {
        ArrayList arrayList = null;
        for (Object obj : this.matchingNodes.keyTable) {
            ASTNode aSTNode = (ASTNode) obj;
            if (aSTNode != null && i10 <= aSTNode.sourceStart && aSTNode.sourceEnd <= i11) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(aSTNode);
            }
        }
        if (arrayList == null) {
            return null;
        }
        ASTNode[] aSTNodeArr = new ASTNode[arrayList.size()];
        arrayList.toArray(aSTNodeArr);
        Util.sort(aSTNodeArr, new Util.Comparer() {
            @Override
            public int compare(Object obj2, Object obj3) {
                return ((ASTNode) obj2).sourceStart - ((ASTNode) obj3).sourceStart;
            }
        });
        return aSTNodeArr;
    }

    public Object removePossibleMatch(ASTNode aSTNode) {
        long j10 = (aSTNode.sourceStart << 32) + aSTNode.sourceEnd;
        if (((ASTNode) this.possibleMatchingNodesKeys.get(j10)) == null) {
            return null;
        }
        this.possibleMatchingNodesKeys.put(j10, null);
        return this.possibleMatchingNodesSet.remove(aSTNode);
    }

    public Object removeTrustedMatch(ASTNode aSTNode) {
        long j10 = (aSTNode.sourceStart << 32) + aSTNode.sourceEnd;
        if (((ASTNode) this.matchingNodesKeys.get(j10)) == null) {
            return null;
        }
        this.matchingNodesKeys.put(j10, null);
        return this.matchingNodes.removeKey(aSTNode);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Exact matches:");
        SimpleLookupTable simpleLookupTable = this.matchingNodes;
        Object[] objArr = simpleLookupTable.keyTable;
        Object[] objArr2 = simpleLookupTable.valueTable;
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            ASTNode aSTNode = (ASTNode) objArr[i10];
            if (aSTNode != null) {
                stringBuffer.append("\n\t");
                int intValue = ((Integer) objArr2[i10]).intValue();
                if (intValue == 0) {
                    stringBuffer.append("ACCURATE_MATCH: ");
                } else if (intValue == 1) {
                    stringBuffer.append("INACCURATE_MATCH: ");
                } else if (intValue == 16) {
                    stringBuffer.append("ERASURE_MATCH: ");
                }
                aSTNode.print(0, stringBuffer);
            }
        }
        stringBuffer.append("\nPossible matches:");
        for (Object obj : this.possibleMatchingNodesSet.values) {
            ASTNode aSTNode2 = (ASTNode) obj;
            if (aSTNode2 != null) {
                stringBuffer.append("\nPOSSIBLE_MATCH: ");
                aSTNode2.print(0, stringBuffer);
            }
        }
        return stringBuffer.toString();
    }

    public void addTrustedMatch(ASTNode aSTNode, Integer num) {
        long j10 = (aSTNode.sourceStart << 32) + aSTNode.sourceEnd;
        ASTNode aSTNode2 = (ASTNode) this.matchingNodesKeys.get(j10);
        if (aSTNode2 != null && aSTNode2.getClass().equals(aSTNode.getClass())) {
            this.matchingNodes.removeKey(aSTNode2);
        }
        this.matchingNodes.put(aSTNode, num);
        this.matchingNodesKeys.put(j10, aSTNode);
    }
}
