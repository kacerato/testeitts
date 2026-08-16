.class public final Lcom/android/tools/r8/kotlin/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# instance fields
.field public final a:Lcom/android/tools/r8/kotlin/s0;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/s0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/L;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/L;->a:Lcom/android/tools/r8/kotlin/s0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/L;->a:Lcom/android/tools/r8/kotlin/s0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/L;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object v5, v0

    move v0, p2

    move-object p2, v5

    .line 5
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/android/tools/r8/kotlin/L;->a:Lcom/android/tools/r8/kotlin/s0;

    new-instance v4, Lcom/android/tools/r8/kotlin/f1;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/kotlin/f1;-><init>(Lcom/android/tools/r8/internal/C7;)V

    invoke-virtual {v3, v4, p3, v1}, Lcom/android/tools/r8/kotlin/s0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result p3

    or-int/2addr p3, v0

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/CL;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/android/tools/r8/internal/CL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return p3
.end method
