.class public final synthetic Lcom/android/tools/r8/internal/UU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Ljava/util/concurrent/ExecutorService;

.field public final synthetic c:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UU0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/UU0;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/android/tools/r8/internal/UU0;->c:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/UU0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UU0;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/android/tools/r8/internal/UU0;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method
