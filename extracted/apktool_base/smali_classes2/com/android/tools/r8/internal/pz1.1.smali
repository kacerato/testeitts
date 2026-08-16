.class public final synthetic Lcom/android/tools/r8/internal/pz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/y70;

.field public final synthetic b:Lcom/android/tools/r8/internal/O60;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/internal/fX;

.field public final synthetic e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pz1;->a:Lcom/android/tools/r8/internal/y70;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pz1;->b:Lcom/android/tools/r8/internal/O60;

    iput-object p3, p0, Lcom/android/tools/r8/internal/pz1;->c:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/internal/pz1;->d:Lcom/android/tools/r8/internal/fX;

    iput-object p5, p0, Lcom/android/tools/r8/internal/pz1;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/pz1;->a:Lcom/android/tools/r8/internal/y70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pz1;->b:Lcom/android/tools/r8/internal/O60;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pz1;->c:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/pz1;->d:Lcom/android/tools/r8/internal/fX;

    iget-object v4, p0, Lcom/android/tools/r8/internal/pz1;->e:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/y70;->a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/P60;

    move-result-object v0

    return-object v0
.end method
