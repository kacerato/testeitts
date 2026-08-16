.class Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->copyExtraResourcesBack(Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

.field private final synthetic val$deletedAll:Z

.field private final synthetic val$exclusionPatterns:[[C

.field private final synthetic val$inclusionPatterns:[[C

.field private final synthetic val$isAlsoProject:Z

.field private final synthetic val$outputFolder:Lorg/eclipse/core/resources/IContainer;

.field private final synthetic val$segmentCount:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;[[C[[CILorg/eclipse/core/resources/IContainer;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$exclusionPatterns:[[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$inclusionPatterns:[[C

    iput p4, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$segmentCount:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$outputFolder:Lorg/eclipse/core/resources/IContainer;

    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$deletedAll:Z

    iput-boolean p7, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$isAlsoProject:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->filterExtraResource(Lorg/eclipse/core/resources/IResource;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$isAlsoProject:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->isExcludedFromProject(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$exclusionPatterns:[[C

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$inclusionPatterns:[[C

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$exclusionPatterns:[[C

    invoke-static {p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    :goto_0
    return v2

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->filterExtraResource(Lorg/eclipse/core/resources/IResource;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$exclusionPatterns:[[C

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$inclusionPatterns:[[C

    if-eqz v0, :cond_8

    :cond_7
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$inclusionPatterns:[[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$exclusionPatterns:[[C

    invoke-static {v0, v4, v5, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_8
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget v4, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$segmentCount:I

    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$outputFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v4, v0}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$deletedAll:Z

    if-eqz v5, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->findOriginalResource(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->build_duplicateResource:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v6, "org.eclipse.jdt.core.builder.duplicateResourceTask"

    invoke-virtual {v5, v6, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createProblemFor(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_9
    invoke-interface {v4, v2, v1}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->val$outputFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    invoke-virtual {v0, p1, v4}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->copyResource(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/resources/IResource;)V

    :cond_b
    :goto_1
    return v3
.end method
