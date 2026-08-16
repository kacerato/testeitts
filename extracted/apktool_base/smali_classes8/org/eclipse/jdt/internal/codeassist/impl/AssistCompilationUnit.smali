.class public Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;
.super Lorg/eclipse/jdt/internal/core/CompilationUnit;
.source "SourceFile"


# instance fields
.field private bindingCache:Ljava/util/Map;

.field private infoCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/WorkingCopyOwner;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;->bindingCache:Ljava/util/Map;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;->infoCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;->infoCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportContainer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportContainer;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/util/Map;)V

    return-object v0
.end method

.method public getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistPackageDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistPackageDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;->bindingCache:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;->infoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
