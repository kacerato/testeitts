.class public final synthetic Lcom/android/tools/r8/graph/Gh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ExecutorService;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/ns0;

.field public final synthetic d:Lcom/android/tools/r8/graph/g3;

.field public final synthetic e:Lcom/android/tools/r8/internal/R00;

.field public final synthetic f:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Gh;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Gh;->b:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Gh;->c:Lcom/android/tools/r8/internal/ns0;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Gh;->d:Lcom/android/tools/r8/graph/g3;

    iput-object p5, p0, Lcom/android/tools/r8/graph/Gh;->e:Lcom/android/tools/r8/internal/R00;

    iput-object p6, p0, Lcom/android/tools/r8/graph/Gh;->f:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/Gh;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Gh;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Gh;->c:Lcom/android/tools/r8/internal/ns0;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Gh;->d:Lcom/android/tools/r8/graph/g3;

    iget-object v4, p0, Lcom/android/tools/r8/graph/Gh;->e:Lcom/android/tools/r8/internal/R00;

    iget-object v5, p0, Lcom/android/tools/r8/graph/Gh;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    return-void
.end method
