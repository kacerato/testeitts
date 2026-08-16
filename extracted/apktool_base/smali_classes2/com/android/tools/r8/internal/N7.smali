.class public final Lcom/android/tools/r8/internal/N7;
.super Lcom/android/tools/r8/internal/Hj;
.source "SourceFile"


# instance fields
.field public final f:Lcom/android/tools/r8/internal/n6;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/n6;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Hj;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/N7;->f:Lcom/android/tools/r8/internal/n6;

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/N7;->f:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1, p1}, Lcom/android/tools/r8/internal/l6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/N7;->f:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method
