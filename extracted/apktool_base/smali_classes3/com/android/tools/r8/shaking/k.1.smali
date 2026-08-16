.class public final Lcom/android/tools/r8/shaking/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/internal/E4;)V
    .locals 2

    .line 7
    iget-object v0, p2, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    .line 8
    iget-object v1, p2, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/E4;->c:Z

    invoke-static {v0, v1, p2}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)Lcom/android/tools/r8/internal/F4;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F4;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/hd;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/hd;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/E4;

    return-object p1
.end method

.method public final a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/k;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/shaking/l;
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/shaking/l;

    new-instance v1, Lcom/android/tools/r8/shaking/id;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/id;-><init>(Lcom/android/tools/r8/shaking/k;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    .line 5
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/TU;->a(Lcom/android/tools/r8/internal/e6;I)Ljava/util/IdentityHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/l;-><init>(Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public final synthetic a(Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/jd;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/jd;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
