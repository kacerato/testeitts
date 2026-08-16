.class Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->addAllSourceFiles(Ljava/util/LinkedHashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;

.field private final synthetic val$exclusionPatterns:[[C

.field private final synthetic val$inclusionPatterns:[[C

.field private final synthetic val$isAlsoProject:Z

.field private final synthetic val$isOutputFolder:Z

.field private final synthetic val$outputFolder:Lorg/eclipse/core/resources/IContainer;

.field private final synthetic val$segmentCount:I

.field private final synthetic val$sourceFiles:Ljava/util/LinkedHashSet;

.field private final synthetic val$sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;[[C[[CLorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Ljava/util/LinkedHashSet;ZZILorg/eclipse/core/resources/IContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->this$0:Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$exclusionPatterns:[[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$inclusionPatterns:[[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$sourceFiles:Ljava/util/LinkedHashSet;

    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$isAlsoProject:Z

    iput-boolean p7, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$isOutputFolder:Z

    iput p8, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$segmentCount:I

    iput-object p9, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$outputFolder:Lorg/eclipse/core/resources/IContainer;

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

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$isAlsoProject:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->this$0:Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->isExcludedFromProject(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$exclusionPatterns:[[C

    if-eqz v0, :cond_5

    if-nez v3, :cond_3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$inclusionPatterns:[[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$exclusionPatterns:[[C

    invoke-static {v3, v0, v4, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$inclusionPatterns:[[C

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$isOutputFolder:Z

    if-nez v0, :cond_7

    if-nez v3, :cond_6

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->this$0:Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v1, "org.eclipse.jdt.core.compiler.source"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->this$0:Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v4, "org.eclipse.jdt.core.compiler.compliance"

    invoke-virtual {v1, v4, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->this$0:Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$segmentCount:I

    invoke-interface {v3, v0}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$outputFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;

    :cond_7
    :goto_0
    return v2

    :cond_8
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$exclusionPatterns:[[C

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$inclusionPatterns:[[C

    if-eqz v0, :cond_a

    :cond_9
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$inclusionPatterns:[[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$exclusionPatterns:[[C

    invoke-static {v0, v2, v3, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    invoke-direct {v0, p1, v2}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;->val$sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_b
    return v1
.end method
