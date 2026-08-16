.class public final synthetic Lcom/android/tools/r8/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lv$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/R8Command;

.field public final synthetic b:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/W2;->a:Lcom/android/tools/r8/R8Command;

    iput-object p2, p0, Lcom/android/tools/r8/W2;->b:Lcom/android/tools/r8/internal/nJ;

    iput-object p3, p0, Lcom/android/tools/r8/W2;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/W2;->a:Lcom/android/tools/r8/R8Command;

    iget-object v1, p0, Lcom/android/tools/r8/W2;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/W2;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/R8;->b(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
