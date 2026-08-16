.class public Lorg/openjdk/tools/sjavac/CompileChunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/openjdk/tools/sjavac/CompileChunk;",
        ">;"
    }
.end annotation


# instance fields
.field public numDependents:I

.field public numPackages:I

.field public pkgFromTos:Ljava/lang/String;

.field public pkgNames:Ljava/lang/StringBuilder;

.field public srcs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/CompileChunk;->srcs:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/CompileChunk;->pkgNames:Ljava/lang/StringBuilder;

    const-string v0, ""

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/CompileChunk;->pkgFromTos:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/sjavac/CompileChunk;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/CompileChunk;->compareTo(Lorg/openjdk/tools/sjavac/CompileChunk;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/openjdk/tools/sjavac/CompileChunk;)I
    .locals 1

    .line 2
    iget v0, p0, Lorg/openjdk/tools/sjavac/CompileChunk;->numDependents:I

    iget p1, p1, Lorg/openjdk/tools/sjavac/CompileChunk;->numDependents:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public equal(Lorg/openjdk/tools/sjavac/CompileChunk;)Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/sjavac/CompileChunk;->numDependents:I

    iget p1, p1, Lorg/openjdk/tools/sjavac/CompileChunk;->numDependents:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
