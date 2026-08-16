.class public final Lcom/android/tools/r8/internal/cp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jp0;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cp0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V
    .locals 3

    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p4

    sget-boolean p5, Lcom/android/tools/r8/internal/cp0;->b:Z

    if-nez p5, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p6, p0, Lcom/android/tools/r8/internal/cp0;->a:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, p6}, Lcom/android/tools/r8/internal/jp0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Ljava/lang/String;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-boolean p5, Lcom/android/tools/r8/internal/QJ;->p:Z

    new-instance p5, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {p5}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/PJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    if-ne p5, v0, :cond_2

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/q2;->q:Lcom/android/tools/r8/graph/A2;

    goto :goto_2

    :cond_2
    sget-boolean p5, Lcom/android/tools/r8/internal/bp0;->a:Z

    if-nez p5, :cond_4

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    iget-object p6, p1, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    if-ne p5, p6, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/q2;->q:Lcom/android/tools/r8/graph/A2;

    :goto_2
    iput-object p1, p2, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iput-object p1, p2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    if-ne p6, v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    if-ne p6, v0, :cond_7

    :goto_3
    const/4 p1, 0x1

    invoke-virtual {p4, p1, p2}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    return-void

    :cond_7
    sget-boolean v0, Lcom/android/tools/r8/internal/mK;->o:Z

    new-instance v0, Lcom/android/tools/r8/internal/lK;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lK;-><init>()V

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/lK;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v2, :cond_8

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    goto :goto_5

    :cond_8
    if-nez p5, :cond_a

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    iget-object p6, p1, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    if-ne p5, p6, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    :goto_5
    iput-object p1, p2, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iput-object p1, p2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
