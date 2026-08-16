.class Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->deleteResource(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IClasspathEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;

.field private final synthetic val$nestedFolders:[Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;[Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;->val$nestedFolders:[Lorg/eclipse/core/runtime/IPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;->val$nestedFolders:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->prefixesOneOf(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;->val$nestedFolders:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->equalsOneOf(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateResourceFlags:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, v1, v0}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return v2

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateResourceFlags:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, v1, v0}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return v2
.end method
