.class public final synthetic Lcom/android/tools/r8/internal/j51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ax0;

.field public final synthetic b:Lcom/android/tools/r8/graph/c4;

.field public final synthetic c:Ljava/util/Collection;

.field public final synthetic d:Ljava/util/concurrent/ExecutorService;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ax0;Lcom/android/tools/r8/graph/c4;Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/j51;->a:Lcom/android/tools/r8/internal/ax0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/j51;->b:Lcom/android/tools/r8/graph/c4;

    iput-object p3, p0, Lcom/android/tools/r8/internal/j51;->c:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/tools/r8/internal/j51;->d:Ljava/util/concurrent/ExecutorService;

    iput-object p5, p0, Lcom/android/tools/r8/internal/j51;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/j51;->a:Lcom/android/tools/r8/internal/ax0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j51;->b:Lcom/android/tools/r8/graph/c4;

    iget-object v2, p0, Lcom/android/tools/r8/internal/j51;->c:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/tools/r8/internal/j51;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/android/tools/r8/internal/j51;->e:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Ljava/util/Set;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/graph/c4;Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;Ljava/util/List;Ljava/util/Set;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method
