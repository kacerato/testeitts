.class public final Lcom/android/tools/r8/shaking/C4;
.super Lcom/android/tools/r8/shaking/I4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/shaking/w4;->c:Lcom/android/tools/r8/shaking/w4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p2, Lcom/android/tools/r8/internal/b10;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/X70;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/X70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/tools/r8/shaking/I4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/x4;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/D4;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/C4;->c(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/B4;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/B4;
    .locals 4

    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/D4;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/shaking/B4;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    iget-object v3, p1, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/shaking/B4;-><init>(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/internal/hC;Ljava/util/Set;Ljava/util/ArrayList;)V

    return-object v0
.end method
