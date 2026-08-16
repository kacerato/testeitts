.class Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->copyResource(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IWorkspaceRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

.field private final synthetic val$destFolder:Lorg/eclipse/core/resources/IFolder;

.field private final synthetic val$nestedFolders:[Lorg/eclipse/core/runtime/IPath;

.field private final synthetic val$sourceSegmentCount:I

.field private final synthetic val$workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IFolder;ILorg/eclipse/core/resources/IWorkspaceRoot;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$nestedFolders:[Lorg/eclipse/core/runtime/IPath;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$destFolder:Lorg/eclipse/core/resources/IFolder;

    iput p4, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$sourceSegmentCount:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$nestedFolders:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->prefixesOneOf(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$nestedFolders:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->equalsOneOf(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$destFolder:Lorg/eclipse/core/resources/IFolder;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$sourceSegmentCount:I

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IFolder;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget v2, v0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, v2, v1, v0}, Lorg/eclipse/core/resources/IFolder;->create(IZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return v1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$sourceSegmentCount:I

    invoke-interface {v0, v3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget v1, v1, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget v4, v3, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v1, v4, v3}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget v3, v1, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, v0, v3, v1}, Lorg/eclipse/core/resources/IResource;->copy(Lorg/eclipse/core/runtime/IPath;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return v2

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$sourceSegmentCount:I

    invoke-interface {v0, v3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget v1, v1, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->val$workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget v4, v3, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v1, v4, v3}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_5
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    iget v3, v1, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, v0, v3, v1}, Lorg/eclipse/core/resources/IResource;->copy(Lorg/eclipse/core/runtime/IPath;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return v2
.end method
