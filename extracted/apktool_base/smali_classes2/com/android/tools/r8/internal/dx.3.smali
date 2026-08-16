.class public final Lcom/android/tools/r8/internal/dx;
.super Lcom/android/tools/r8/internal/uD;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/uD;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dx;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/tD;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    .line 9
    sget-boolean p3, Lcom/android/tools/r8/internal/tD;->b:Z

    if-nez p3, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object p3, p0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/tD;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {p1, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/dx;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected InitClass instruction for `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/uD;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dx;->b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/dx;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/uD;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/i91;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/i91;-><init>(Lcom/android/tools/r8/internal/dx;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite FinalInitClassLens"

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/uD;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/dx;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/tD;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tD;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/dx;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/j91;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/j91;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/tD;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p1, Lcom/android/tools/r8/internal/dx;

    iget-object v0, v0, Lcom/android/tools/r8/internal/tD;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/dx;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object p1
.end method
