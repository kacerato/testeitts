.class public Lorg/eclipse/jdt/internal/core/builder/WorkQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private compiledList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/builder/SourceFile;",
            ">;"
        }
    .end annotation
.end field

.field private needsCompileList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/builder/SourceFile;",
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

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->needsCompileList:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->compiledList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->needsCompileList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->needsCompileList:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->needsCompileList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->compiledList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public finished(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->needsCompileList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->compiledList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isCompiled(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->compiledList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isWaiting(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->needsCompileList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkQueue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->needsCompileList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
