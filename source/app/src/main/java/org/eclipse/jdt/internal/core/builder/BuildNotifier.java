package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.util.Messages;
import w2.C15883c;

public class BuildNotifier {
    public static int FixedErrorCount;
    public static int FixedWarningCount;
    public static int NewErrorCount;
    public static int NewWarningCount;
    protected IProgressMonitor monitor;
    protected float percentComplete;
    protected String previousSubtask;
    protected float progressPerCompilationUnit;
    protected boolean cancelling = false;
    protected int newErrorCount = NewErrorCount;
    protected int fixedErrorCount = FixedErrorCount;
    protected int newWarningCount = NewWarningCount;
    protected int fixedWarningCount = FixedWarningCount;
    protected int workDone = 0;
    protected int totalWork = 1000000;

    public BuildNotifier(IProgressMonitor iProgressMonitor, IProject iProject) {
        this.monitor = iProgressMonitor;
    }

    public static void resetProblemCounters() {
        NewErrorCount = 0;
        FixedErrorCount = 0;
        NewWarningCount = 0;
        FixedWarningCount = 0;
    }

    public void aboutToCompile(SourceFile sourceFile) {
        subTask(Messages.bind(Messages.build_compiling, sourceFile.resource.getFullPath().removeLastSegments(1).makeRelative().toString()));
    }

    public void begin() {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null) {
            iProgressMonitor.beginTask("", this.totalWork);
        }
        this.previousSubtask = null;
    }

    public void checkCancel() {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public void checkCancelWithinCompiler() {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor == null || !iProgressMonitor.isCanceled() || this.cancelling) {
            return;
        }
        setCancelling(true);
        throw new AbortCompilation(true, (RuntimeException) null);
    }

    public void compiled(SourceFile sourceFile) {
        subTask(Messages.bind(Messages.build_compiling, sourceFile.resource.getFullPath().removeLastSegments(1).makeRelative().toString()));
        updateProgressDelta(this.progressPerCompilationUnit);
        checkCancelWithinCompiler();
    }

    public void done() {
        NewErrorCount = this.newErrorCount;
        FixedErrorCount = this.fixedErrorCount;
        NewWarningCount = this.newWarningCount;
        FixedWarningCount = this.fixedWarningCount;
        updateProgress(1.0f);
        subTask(Messages.build_done);
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null) {
            iProgressMonitor.done();
        }
        this.previousSubtask = null;
    }

    public String problemsMessage() {
        int i10 = this.newErrorCount + this.newWarningCount;
        int i11 = this.fixedErrorCount + this.fixedWarningCount;
        if (i10 == 0 && i11 == 0) {
            return "";
        }
        boolean z10 = i10 > 0 && i11 > 0;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        if (i10 > 0) {
            stringBuffer.append(Messages.build_foundHeader);
            stringBuffer.append(C15883c.f126249O);
            if (z10 || this.newErrorCount > 0) {
                int i12 = this.newErrorCount;
                if (i12 == 1) {
                    stringBuffer.append(Messages.build_oneError);
                } else {
                    stringBuffer.append(Messages.bind(Messages.build_multipleErrors, String.valueOf(i12)));
                }
                if (z10 || this.newWarningCount > 0) {
                    stringBuffer.append(" + ");
                }
            }
            if (z10 || this.newWarningCount > 0) {
                int i13 = this.newWarningCount;
                if (i13 == 1) {
                    stringBuffer.append(Messages.build_oneWarning);
                } else {
                    stringBuffer.append(Messages.bind(Messages.build_multipleWarnings, String.valueOf(i13)));
                }
            }
            if (i11 > 0) {
                stringBuffer.append(", ");
            }
        }
        if (i11 > 0) {
            stringBuffer.append(Messages.build_fixedHeader);
            stringBuffer.append(C15883c.f126249O);
            if (z10) {
                stringBuffer.append(String.valueOf(this.fixedErrorCount));
                stringBuffer.append(" + ");
                stringBuffer.append(String.valueOf(this.fixedWarningCount));
            } else {
                int i14 = this.fixedErrorCount;
                if (i14 > 0) {
                    if (i14 == 1) {
                        stringBuffer.append(Messages.build_oneError);
                    } else {
                        stringBuffer.append(Messages.bind(Messages.build_multipleErrors, String.valueOf(i14)));
                    }
                    if (this.fixedWarningCount > 0) {
                        stringBuffer.append(" + ");
                    }
                }
                int i15 = this.fixedWarningCount;
                if (i15 > 0) {
                    if (i15 == 1) {
                        stringBuffer.append(Messages.build_oneWarning);
                    } else {
                        stringBuffer.append(Messages.bind(Messages.build_multipleWarnings, String.valueOf(i15)));
                    }
                }
            }
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public void setCancelling(boolean z10) {
        this.cancelling = z10;
    }

    public void setProgressPerCompilationUnit(float f10) {
        this.progressPerCompilationUnit = f10;
    }

    public void subTask(String str) {
        String problemsMessage = problemsMessage();
        if (problemsMessage.length() != 0) {
            str = problemsMessage + " " + str;
        }
        if (str.equals(this.previousSubtask)) {
            return;
        }
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null) {
            iProgressMonitor.subTask(str);
        }
        this.previousSubtask = str;
    }

    public void updateProblemCounts(CategorizedProblem[] categorizedProblemArr) {
        for (CategorizedProblem categorizedProblem : categorizedProblemArr) {
            if (categorizedProblem.isError()) {
                this.newErrorCount++;
            } else {
                this.newWarningCount++;
            }
        }
    }

    public void updateProgress(float f10) {
        if (f10 > this.percentComplete) {
            float min = Math.min(f10, 1.0f);
            this.percentComplete = min;
            int round = Math.round(min * this.totalWork);
            int i10 = this.workDone;
            if (round > i10) {
                IProgressMonitor iProgressMonitor = this.monitor;
                if (iProgressMonitor != null) {
                    iProgressMonitor.worked(round - i10);
                }
                this.workDone = round;
            }
        }
    }

    public void updateProgressDelta(float f10) {
        updateProgress(this.percentComplete + f10);
    }

    public void updateProblemCounts(IMarker[] iMarkerArr, CategorizedProblem[] categorizedProblemArr) {
        int i10 = IProblem.Task;
        int i11 = 2;
        if (categorizedProblemArr != null) {
            int length = categorizedProblemArr.length;
            int i12 = 0;
            while (i12 < length) {
                CategorizedProblem categorizedProblem = categorizedProblemArr[i12];
                if (categorizedProblem.getID() != i10) {
                    boolean isError = categorizedProblem.isError();
                    String message = categorizedProblem.getMessage();
                    if (iMarkerArr != null) {
                        int length2 = iMarkerArr.length;
                        for (int i13 = 0; i13 < length2; i13++) {
                            IMarker iMarker = iMarkerArr[i13];
                            if (iMarker != null) {
                                if (isError == (2 == iMarker.getAttribute("severity", 2)) && message.equals(iMarker.getAttribute("message", ""))) {
                                    iMarkerArr[i13] = null;
                                    break;
                                }
                            }
                        }
                    }
                    if (isError) {
                        this.newErrorCount++;
                    } else {
                        this.newWarningCount++;
                    }
                }
                i12++;
                i10 = IProblem.Task;
            }
        }
        if (iMarkerArr != null) {
            int length3 = iMarkerArr.length;
            int i14 = 0;
            while (i14 < length3) {
                IMarker iMarker2 = iMarkerArr[i14];
                if (iMarker2 != null) {
                    boolean z10 = i11 == iMarker2.getAttribute("severity", i11);
                    String attribute = iMarker2.getAttribute("message", "");
                    if (categorizedProblemArr != null) {
                        for (CategorizedProblem categorizedProblem2 : categorizedProblemArr) {
                            if (categorizedProblem2.getID() != 536871362 && z10 == categorizedProblem2.isError() && attribute.equals(categorizedProblem2.getMessage())) {
                                break;
                            }
                        }
                    }
                    if (z10) {
                        this.fixedErrorCount++;
                    } else {
                        this.fixedWarningCount++;
                    }
                }
                i14++;
                i11 = 2;
            }
        }
    }
}
