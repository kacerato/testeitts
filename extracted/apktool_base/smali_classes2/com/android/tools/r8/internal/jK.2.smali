.class public final Lcom/android/tools/r8/internal/jK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/yf1;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/yf1;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;)V

    .line 18
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p0

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 20
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p1

    const/16 p3, 0xb7

    invoke-direct {p2, p3, p0, p1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    sget p0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 21
    new-instance p0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 4

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->P()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 12
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    sget-boolean v2, Lcom/android/tools/r8/internal/jK;->b:Z

    if-nez v2, :cond_4

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    .line 15
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 16
    :cond_5
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/jK;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xb9

    .line 1
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/16 v0, 0xb6

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
