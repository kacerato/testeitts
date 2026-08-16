.class public abstract Lorg/eclipse/jdt/core/WorkingCopyOwner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPrimaryBufferProvider(Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->primaryBufferProvider:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-void
.end method


# virtual methods
.method public createBuffer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/BufferManager;->createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    return-object p1
.end method

.method public findSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getProblemRequestor(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IProblemRequestor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isPackage([Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final newWorkingCopy(Ljava/lang/String;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalJavaProject;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/core/ExternalJavaProject;-><init>([Lorg/eclipse/jdt/core/IClasspathEntry;)V

    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p2

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-direct {v0, p2, p1, p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    .line 8
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->getProblemRequestor(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->becomeWorkingCopy(Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-object v0
.end method

.method public final newWorkingCopy(Ljava/lang/String;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalJavaProject;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/core/ExternalJavaProject;-><init>([Lorg/eclipse/jdt/core/IClasspathEntry;)V

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p2

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-direct {v0, p2, p1, p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    .line 4
    invoke-virtual {v0, p3, p4}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->becomeWorkingCopy(Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-object v0
.end method
