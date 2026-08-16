.class public final Lcom/android/tools/r8/internal/o70;
.super Lcom/android/tools/r8/internal/k70;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/r70;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/r70;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/o70;->c:Lcom/android/tools/r8/internal/r70;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/k70;-><init>(Lcom/android/tools/r8/internal/r70;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Dq;->a(Ljava/lang/Iterable;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/o70;->c:Lcom/android/tools/r8/internal/r70;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r70;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/q70;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
