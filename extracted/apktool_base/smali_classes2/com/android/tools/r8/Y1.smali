.class public final synthetic Lcom/android/tools/r8/Y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lv$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/utils/i;

.field public final synthetic b:Ljava/util/concurrent/ExecutorService;

.field public final synthetic c:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/Y1;->a:Lcom/android/tools/r8/utils/i;

    iput-object p2, p0, Lcom/android/tools/r8/Y1;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/android/tools/r8/Y1;->c:Lcom/android/tools/r8/internal/nJ;

    iput-object p4, p0, Lcom/android/tools/r8/Y1;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/Y1;->a:Lcom/android/tools/r8/utils/i;

    iget-object v1, p0, Lcom/android/tools/r8/Y1;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/android/tools/r8/Y1;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, p0, Lcom/android/tools/r8/Y1;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/GenerateMainDexList;->d(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V

    return-void
.end method
