.class public final Lcom/android/tools/r8/internal/or0;
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

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/or0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/or0;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/or0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 11
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/or0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/or0;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/or0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/u1;->e()V

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/kB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/or0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/or0;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/jp1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/jp1;-><init>(Lcom/android/tools/r8/internal/or0;Lcom/android/tools/r8/internal/kB;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/or0;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    .line 6
    invoke-static {v1, v2, v0, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/internal/or0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u1;->b()V

    :cond_1
    return-void
.end method
