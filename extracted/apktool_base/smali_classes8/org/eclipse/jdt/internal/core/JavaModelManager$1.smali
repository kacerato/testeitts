.class Lorg/eclipse/jdt/internal/core/JavaModelManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IClasspathContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Container Initialization In Progress"

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$1;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
