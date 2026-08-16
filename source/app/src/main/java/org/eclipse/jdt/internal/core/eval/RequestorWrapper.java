package org.eclipse.jdt.internal.core.eval;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.eval.ICodeSnippetRequestor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.eval.IRequestor;

public class RequestorWrapper implements IRequestor {
    ICodeSnippetRequestor requestor;

    public RequestorWrapper(ICodeSnippetRequestor iCodeSnippetRequestor) {
        this.requestor = iCodeSnippetRequestor;
    }

    @Override
    public boolean acceptClassFiles(ClassFile[] classFileArr, char[] cArr) {
        int length = classFileArr.length;
        byte[][] bArr = new byte[length];
        String[][] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            ClassFile classFile = classFileArr[i10];
            bArr[i10] = classFile.getBytes();
            char[][] compoundName = classFile.getCompoundName();
            int length2 = compoundName.length;
            String[] strArr2 = new String[length2];
            for (int i11 = 0; i11 < length2; i11++) {
                strArr2[i11] = new String(compoundName[i11]);
            }
            strArr[i10] = strArr2;
        }
        return this.requestor.acceptClassFiles(bArr, strArr, cArr == null ? null : new String(cArr));
    }

    @Override
    public void acceptProblem(CategorizedProblem categorizedProblem, char[] cArr, int i10) {
        try {
            IMarker createMarker = ResourcesPlugin.getWorkspace().getRoot().createMarker(IJavaModelMarker.TRANSIENT_PROBLEM);
            createMarker.setAttribute("id", categorizedProblem.getID());
            createMarker.setAttribute("charStart", categorizedProblem.getSourceStart());
            int i11 = 1;
            createMarker.setAttribute("charEnd", categorizedProblem.getSourceEnd() + 1);
            createMarker.setAttribute("lineNumber", categorizedProblem.getSourceLineNumber());
            createMarker.setAttribute("message", categorizedProblem.getMessage());
            if (categorizedProblem.isError()) {
                i11 = 2;
            } else if (!categorizedProblem.isWarning()) {
                i11 = 0;
            }
            createMarker.setAttribute("severity", i11);
            createMarker.setAttribute("sourceId", JavaBuilder.SOURCE_ID);
            this.requestor.acceptProblem(createMarker, new String(cArr), i10);
        } catch (CoreException e10) {
            e10.printStackTrace();
        }
    }
}
