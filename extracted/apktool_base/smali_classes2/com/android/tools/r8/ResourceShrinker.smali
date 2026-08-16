.class public final Lcom/android/tools/r8/ResourceShrinker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;,
        Lcom/android/tools/r8/ResourceShrinker$Builder;,
        Lcom/android/tools/r8/ResourceShrinker$Command;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/ResourceShrinker$Command;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/ResourceShrinker$Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/ResourceShrinker;->runForTesting(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V

    return-void
.end method

.method public static runForTesting(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ns0;

    const-string v1, "resource shrinker analyzer"

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ns0;-><init>(Ljava/lang/String;Z)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/dex/c;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/c;->a()Lcom/android/tools/r8/graph/w4;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/tools/r8/ResourceShrinker;->runForTesting(Ljava/util/Collection;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V

    return-void
.end method

.method public static runForTesting(Ljava/util/Collection;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/H2;",
            ">;",
            "Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 6
    new-instance v1, Lcom/android/tools/r8/t0;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/t0;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/t0;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
