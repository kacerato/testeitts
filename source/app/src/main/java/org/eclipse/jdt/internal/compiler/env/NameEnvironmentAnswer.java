package org.eclipse.jdt.internal.compiler.env;

import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public class NameEnvironmentAnswer {
    AccessRestriction accessRestriction;
    IBinaryType binaryType;
    ReferenceBinding binding;
    ICompilationUnit compilationUnit;
    String externalAnnotationPath;
    public ModuleBinding moduleBinding;
    char[] moduleName;
    ISourceType[] sourceTypes;

    public NameEnvironmentAnswer(IBinaryType iBinaryType, AccessRestriction accessRestriction) {
        this(iBinaryType, accessRestriction, iBinaryType.getModule());
    }

    public AccessRestriction getAccessRestriction() {
        return this.accessRestriction;
    }

    public IBinaryType getBinaryType() {
        return this.binaryType;
    }

    public ICompilationUnit getCompilationUnit() {
        return this.compilationUnit;
    }

    public String getExternalAnnotationPath() {
        return this.externalAnnotationPath;
    }

    public ReferenceBinding getResolvedBinding() {
        return this.binding;
    }

    public ISourceType[] getSourceTypes() {
        return this.sourceTypes;
    }

    public boolean ignoreIfBetter() {
        AccessRestriction accessRestriction = this.accessRestriction;
        return accessRestriction != null && accessRestriction.ignoreIfBetter();
    }

    public boolean isBetter(NameEnvironmentAnswer nameEnvironmentAnswer) {
        AccessRestriction accessRestriction;
        if (nameEnvironmentAnswer == null || (accessRestriction = this.accessRestriction) == null) {
            return true;
        }
        return nameEnvironmentAnswer.accessRestriction != null && accessRestriction.getProblemId() < nameEnvironmentAnswer.accessRestriction.getProblemId();
    }

    public boolean isBinaryType() {
        return this.binaryType != null;
    }

    public boolean isCompilationUnit() {
        return this.compilationUnit != null;
    }

    public boolean isResolvedBinding() {
        return this.binding != null;
    }

    public boolean isSourceType() {
        return this.sourceTypes != null;
    }

    public char[] moduleName() {
        return this.moduleName;
    }

    public void setBinaryType(IBinaryType iBinaryType) {
        this.binaryType = iBinaryType;
    }

    public String toString() {
        String str;
        IBinaryType iBinaryType = this.binaryType;
        str = "";
        if (iBinaryType != null) {
            char[] fileName = iBinaryType.getFileName();
            str = "IBinaryType " + (fileName != null ? new String(fileName) : "");
        }
        if (this.compilationUnit != null) {
            str = "ICompilationUnit " + this.compilationUnit.toString();
        }
        ISourceType[] iSourceTypeArr = this.sourceTypes;
        if (iSourceTypeArr != null) {
            str = Arrays.toString(iSourceTypeArr);
        }
        if (this.accessRestriction != null) {
            str = String.valueOf(str) + " " + this.accessRestriction.toString();
        }
        if (this.externalAnnotationPath != null) {
            str = String.valueOf(str) + " extPath=" + this.externalAnnotationPath.toString();
        }
        if (this.moduleName == null) {
            return str;
        }
        return String.valueOf(str) + " module=" + String.valueOf(this.moduleName);
    }

    public NameEnvironmentAnswer(IBinaryType iBinaryType, AccessRestriction accessRestriction, char[] cArr) {
        this.binaryType = iBinaryType;
        this.accessRestriction = accessRestriction;
        this.moduleName = cArr;
    }

    public NameEnvironmentAnswer(ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction) {
        this(iCompilationUnit, accessRestriction, iCompilationUnit.getModuleName());
    }

    public NameEnvironmentAnswer(ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction, char[] cArr) {
        this.compilationUnit = iCompilationUnit;
        this.accessRestriction = accessRestriction;
        this.moduleName = cArr;
    }

    public NameEnvironmentAnswer(ISourceType[] iSourceTypeArr, AccessRestriction accessRestriction, String str, char[] cArr) {
        this.sourceTypes = iSourceTypeArr;
        this.accessRestriction = accessRestriction;
        this.externalAnnotationPath = str;
        this.moduleName = cArr;
    }

    public NameEnvironmentAnswer(ReferenceBinding referenceBinding, ModuleBinding moduleBinding) {
        this.binding = referenceBinding;
        this.moduleBinding = moduleBinding;
    }
}
