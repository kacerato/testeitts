.class public final Lcom/android/tools/r8/internal/zl0;
.super Lcom/android/tools/r8/internal/Do0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/graph/X1;

.field public final c:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Do0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/zl0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->l5:Lcom/android/tools/r8/graph/X1;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zl0;->b:Lcom/android/tools/r8/graph/X1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->o5:Lcom/android/tools/r8/graph/d2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/d2;->a:Lcom/android/tools/r8/graph/A2;

    iput-object p1, p0, Lcom/android/tools/r8/internal/zl0;->c:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p4, p0, Lcom/android/tools/r8/internal/zl0;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    return-object p3

    :cond_0
    new-instance p4, Lcom/android/tools/r8/internal/Mo0;

    const/4 p5, 0x0

    invoke-interface {p1, p2, p5}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/zl0;->b:Lcom/android/tools/r8/graph/X1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/X1;->c:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p4, p2, p1}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {p3, p4}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    :cond_1
    return-object p3
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zl0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->T3:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
