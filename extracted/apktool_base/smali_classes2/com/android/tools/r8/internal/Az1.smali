.class public final synthetic Lcom/android/tools/r8/internal/Az1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/y70;

.field public final synthetic b:Lcom/android/tools/r8/internal/O60;

.field public final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Az1;->a:Lcom/android/tools/r8/internal/y70;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Az1;->b:Lcom/android/tools/r8/internal/O60;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Az1;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Az1;->a:Lcom/android/tools/r8/internal/y70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Az1;->b:Lcom/android/tools/r8/internal/O60;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Az1;->c:Ljava/util/concurrent/ExecutorService;

    check-cast p1, Lcom/android/tools/r8/internal/l3;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/y70;->a(Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/l3;)V

    return-void
.end method
