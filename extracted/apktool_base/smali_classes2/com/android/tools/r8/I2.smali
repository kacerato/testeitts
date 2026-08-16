.class public final synthetic Lcom/android/tools/r8/I2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/R8;

.field public final synthetic b:Lcom/android/tools/r8/internal/kB;

.field public final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/I2;->a:Lcom/android/tools/r8/R8;

    iput-object p2, p0, Lcom/android/tools/r8/I2;->b:Lcom/android/tools/r8/internal/kB;

    iput-object p3, p0, Lcom/android/tools/r8/I2;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/I2;->a:Lcom/android/tools/r8/R8;

    iget-object v1, p0, Lcom/android/tools/r8/I2;->b:Lcom/android/tools/r8/internal/kB;

    iget-object v2, p0, Lcom/android/tools/r8/I2;->c:Ljava/util/concurrent/ExecutorService;

    check-cast p1, Lcom/android/tools/r8/internal/Oy;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/R8;->n(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Oy;)V

    return-void
.end method
