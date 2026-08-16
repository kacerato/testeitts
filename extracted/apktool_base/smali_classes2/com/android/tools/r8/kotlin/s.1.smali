.class public final Lcom/android/tools/r8/kotlin/s;
.super Lcom/android/tools/r8/kotlin/x;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/kotlin/s0;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/s0;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/x;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/s;->a:Lcom/android/tools/r8/kotlin/s0;

    iput-boolean p2, p0, Lcom/android/tools/r8/kotlin/s;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s;->a:Lcom/android/tools/r8/kotlin/s0;

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s;->a:Lcom/android/tools/r8/kotlin/s0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/cQ$a;

    iget-boolean v1, p0, Lcom/android/tools/r8/kotlin/s;->b:Z

    .line 3
    invoke-static {p2, v1}, Lcom/android/tools/r8/kotlin/b0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/cQ$a;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object v0, p1, Lcom/android/tools/r8/internal/yQ;->b:Lcom/android/tools/r8/internal/cQ;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/yQ;Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s;->a:Lcom/android/tools/r8/kotlin/s0;

    new-instance v1, Lcom/android/tools/r8/kotlin/M4;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/kotlin/M4;-><init>(Lcom/android/tools/r8/kotlin/s;Lcom/android/tools/r8/internal/yQ;)V

    const-string p1, "Lkotlin/Any;"

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/tools/r8/kotlin/s0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
