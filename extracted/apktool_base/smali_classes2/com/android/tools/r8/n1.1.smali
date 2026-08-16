.class public final synthetic Lcom/android/tools/r8/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/ns0;

.field public final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/n1;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/n1;->b:Lcom/android/tools/r8/internal/ns0;

    iput-object p3, p0, Lcom/android/tools/r8/n1;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/n1;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/n1;->b:Lcom/android/tools/r8/internal/ns0;

    iget-object v2, p0, Lcom/android/tools/r8/n1;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/D8;->n(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
