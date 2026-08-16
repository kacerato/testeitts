package org.eclipse.jdt.internal.core.search.matching;

import java.util.HashSet;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class PossibleMatchSet {
    private SimpleLookupTable rootsToPossibleMatches = new SimpleLookupTable(5);
    private int elementCount = 0;

    public void add(PossibleMatch possibleMatch) {
        IPath path = possibleMatch.openable.getPackageFragmentRoot().getPath();
        ObjectVector objectVector = (ObjectVector) this.rootsToPossibleMatches.get(path);
        if (objectVector != null) {
            PossibleMatch possibleMatch2 = (PossibleMatch) objectVector.find(possibleMatch);
            if (possibleMatch2 != null) {
                while (possibleMatch2.getSimilarMatch() != null) {
                    possibleMatch2 = possibleMatch2.getSimilarMatch();
                }
                possibleMatch2.setSimilarMatch(possibleMatch);
                return;
            }
        } else {
            SimpleLookupTable simpleLookupTable = this.rootsToPossibleMatches;
            ObjectVector objectVector2 = new ObjectVector();
            simpleLookupTable.put(path, objectVector2);
            objectVector = objectVector2;
        }
        objectVector.add(possibleMatch);
        this.elementCount++;
    }

    public PossibleMatch[] getPossibleMatches(IPackageFragmentRoot[] iPackageFragmentRootArr) {
        PossibleMatch[] possibleMatchArr = new PossibleMatch[this.elementCount];
        HashSet hashSet = new HashSet();
        int i10 = 0;
        for (IPackageFragmentRoot iPackageFragmentRoot : iPackageFragmentRootArr) {
            IPath path = iPackageFragmentRoot.getPath();
            ObjectVector objectVector = (ObjectVector) this.rootsToPossibleMatches.get(path);
            if (objectVector != null && !hashSet.contains(path)) {
                objectVector.copyInto(possibleMatchArr, i10);
                i10 += objectVector.size();
                hashSet.add(path);
            }
        }
        if (i10 >= this.elementCount) {
            return possibleMatchArr;
        }
        PossibleMatch[] possibleMatchArr2 = new PossibleMatch[i10];
        System.arraycopy(possibleMatchArr, 0, possibleMatchArr2, 0, i10);
        return possibleMatchArr2;
    }

    public void reset() {
        this.rootsToPossibleMatches = new SimpleLookupTable(5);
        this.elementCount = 0;
    }
}
