.class public Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootInfo"
.end annotation


# instance fields
.field cache:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

.field final entryKind:I

.field final exclusionPatterns:[[C

.field final inclusionPatterns:[[C

.field public final project:Lorg/eclipse/jdt/internal/core/JavaProject;

.field root:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

.field final rootPath:Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;[[C[[CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->rootPath:Lorg/eclipse/core/runtime/IPath;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->inclusionPatterns:[[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->exclusionPatterns:[[C

    iput p5, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->entryKind:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->cache:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-void
.end method


# virtual methods
.method public getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->rootPath:Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/eclipse/core/resources/IResource;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    check-cast v0, Lorg/eclipse/core/resources/IResource;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->rootPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->rootPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->root:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->root:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->root:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->root:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz p1, :cond_2

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->cache:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    :cond_2
    return-object p1
.end method

.method public isRootOfProject(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->rootPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "project="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v2, "null"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "\npath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->rootPath:Lorg/eclipse/core/runtime/IPath;

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, "\nincluding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->inclusionPatterns:[[C

    const-string v3, "|"

    const/4 v4, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    array-length v1, v1

    move v5, v4

    :goto_2
    if-lt v5, v1, :cond_6

    :goto_3
    const-string v1, "\nexcluding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->exclusionPatterns:[[C

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_3
    array-length v6, v1

    :goto_4
    if-lt v4, v6, :cond_4

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->exclusionPatterns:[[C

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v6, -0x1

    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->inclusionPatterns:[[C

    aget-object v7, v7, v5

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
