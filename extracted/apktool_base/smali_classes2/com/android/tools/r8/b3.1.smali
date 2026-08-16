.class public final synthetic Lcom/android/tools/r8/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/R8;

.field public final synthetic b:Lcom/android/tools/r8/internal/EW$a;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/b3;->a:Lcom/android/tools/r8/R8;

    iput-object p2, p0, Lcom/android/tools/r8/b3;->b:Lcom/android/tools/r8/internal/EW$a;

    iput-object p3, p0, Lcom/android/tools/r8/b3;->c:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/b3;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/b3;->a:Lcom/android/tools/r8/R8;

    iget-object v1, p0, Lcom/android/tools/r8/b3;->b:Lcom/android/tools/r8/internal/EW$a;

    iget-object v2, p0, Lcom/android/tools/r8/b3;->c:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/b3;->d:Ljava/util/concurrent/ExecutorService;

    check-cast p1, Lcom/android/tools/r8/internal/bz;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/R8;->G(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/bz;)V

    return-void
.end method
