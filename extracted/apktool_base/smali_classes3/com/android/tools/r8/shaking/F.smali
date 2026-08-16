.class public Lcom/android/tools/r8/shaking/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/F;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/D5;)I
    .locals 0

    .line 6
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/J2;->b(Lcom/android/tools/r8/graph/J2;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/shaking/F;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/F;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/shaking/P5;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/P5;-><init>(Lcom/android/tools/r8/shaking/F;)V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/F;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {v1, p1, v0, p2}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/F;->b:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/tools/r8/shaking/Q5;

    invoke-direct {p2}, Lcom/android/tools/r8/shaking/Q5;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/shaking/F;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/F;->a(Lcom/android/tools/r8/graph/D5;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/android/tools/r8/shaking/O5;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/O5;-><init>(Lcom/android/tools/r8/shaking/F;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;)Z
    .locals 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/F;->b(Lcom/android/tools/r8/graph/D5;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/F;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/F;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/android/tools/r8/graph/D5;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/t1;->g:Z

    return p1
.end method
