.class public Lcom/android/tools/r8/graph/j1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic u:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/L4;

.field public b:Lcom/android/tools/r8/graph/i0;

.field public c:Lcom/android/tools/r8/graph/A2;

.field public d:Lcom/android/tools/r8/graph/H3$g;

.field public e:Lcom/android/tools/r8/graph/u0;

.field public f:Lcom/android/tools/r8/internal/t40;

.field public g:Lcom/android/tools/r8/graph/z5;

.field public h:Lcom/android/tools/r8/graph/k1;

.field public i:Lcom/android/tools/r8/internal/TW;

.field public final j:Lcom/android/tools/r8/kotlin/d0;

.field public k:Lcom/android/tools/r8/internal/Ib;

.field public l:Lcom/android/tools/r8/androidapi/f;

.field public m:Lcom/android/tools/r8/androidapi/f;

.field public final n:Z

.field public o:Z

.field public p:Lcom/android/tools/r8/graph/A2;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j1;Z)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 24
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    .line 25
    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->f:Lcom/android/tools/r8/internal/t40;

    .line 26
    sget-object v0, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    .line 27
    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 28
    sget-object v1, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    .line 29
    sget-object v1, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->i:Lcom/android/tools/r8/internal/TW;

    .line 30
    sget-object v1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    .line 31
    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->j:Lcom/android/tools/r8/kotlin/d0;

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 33
    sget v2, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v2, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    iput-object v2, p0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 34
    iput-object v2, p0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Lcom/android/tools/r8/graph/j1$a;->o:Z

    .line 36
    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->p:Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/android/tools/r8/graph/j1$a;->q:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/tools/r8/graph/j1$a;->r:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/tools/r8/graph/j1$a;->s:Z

    .line 40
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->t:Ljava/util/function/Consumer;

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->c:Lcom/android/tools/r8/graph/A2;

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    .line 43
    new-instance v3, Lcom/android/tools/r8/graph/L4;

    .line 44
    iget v4, v1, Lcom/android/tools/r8/graph/g;->b:I

    .line 45
    iget v1, v1, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v3, v4, v1}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 46
    iput-object v3, p0, Lcom/android/tools/r8/graph/j1$a;->a:Lcom/android/tools/r8/graph/L4;

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->b:Lcom/android/tools/r8/graph/i0;

    .line 50
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    .line 51
    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->p:Lcom/android/tools/r8/graph/A2;

    .line 52
    iget-object v1, p1, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 53
    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 54
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 55
    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 57
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 58
    invoke-interface {v1}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 60
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 61
    invoke-interface {v1}, Lcom/android/tools/r8/internal/KV;->c()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    new-instance v3, Lcom/android/tools/r8/internal/WY;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/WY;-><init>(Lcom/android/tools/r8/internal/WY;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 64
    iget-object v3, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 65
    :goto_0
    iput-object v3, p0, Lcom/android/tools/r8/graph/j1$a;->i:Lcom/android/tools/r8/internal/TW;

    .line 66
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 67
    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->j:Lcom/android/tools/r8/kotlin/d0;

    .line 68
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 69
    iput-boolean p2, p0, Lcom/android/tools/r8/graph/j1$a;->n:Z

    .line 70
    iget-boolean p2, p1, Lcom/android/tools/r8/graph/j1;->h:Z

    .line 71
    iput-boolean p2, p0, Lcom/android/tools/r8/graph/j1$a;->o:Z

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    if-ne p2, v1, :cond_1

    goto :goto_2

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result p1

    if-eq p2, v0, :cond_4

    .line 75
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 77
    new-array v0, p1, [Lcom/android/tools/r8/graph/u0;

    .line 78
    iget-object p2, p2, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    invoke-static {p2, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance p2, Lcom/android/tools/r8/graph/z5;

    invoke-direct {p2, v0, v2}, Lcom/android/tools/r8/graph/z5;-><init>([Lcom/android/tools/r8/graph/u0;I)V

    goto :goto_1

    .line 80
    :cond_3
    new-instance v0, Lcom/android/tools/r8/graph/z5;

    iget-object p2, p2, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    array-length v1, p2

    sub-int/2addr p1, v1

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/graph/z5;-><init>([Lcom/android/tools/r8/graph/u0;I)V

    move-object p2, v0

    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-object p2, p0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    return-void

    .line 82
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->f:Lcom/android/tools/r8/internal/t40;

    .line 5
    sget-object v0, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 7
    sget-object v0, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->i:Lcom/android/tools/r8/internal/TW;

    .line 9
    sget-object v0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->j:Lcom/android/tools/r8/kotlin/d0;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 12
    sget v1, Lcom/android/tools/r8/androidapi/f;->a:I

    .line 13
    sget-object v1, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 14
    iput-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/tools/r8/graph/j1$a;->o:Z

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->p:Lcom/android/tools/r8/graph/A2;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/j1$a;->q:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/j1$a;->r:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/j1$a;->s:Z

    .line 20
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->t:Ljava/util/function/Consumer;

    .line 21
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/j1$a;->n:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WY;)V
    .locals 0

    .line 6
    invoke-virtual {p3, p0, p1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->c:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->a:Lcom/android/tools/r8/graph/L4;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->b:Lcom/android/tools/r8/graph/i0;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;)Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/ke;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/graph/ke;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/j1$a;->u:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->f:Lcom/android/tools/r8/internal/t40;

    return-object p0
.end method

.method public final a(Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/graph/je;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/je;-><init>(Lcom/android/tools/r8/graph/j1$a;Ljava/util/function/BiConsumer;)V

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->t:Ljava/util/function/Consumer;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->t:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->c:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/i0;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->b:Lcom/android/tools/r8/graph/i0;

    return-object p0
.end method

.method public final a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0

    .line 4
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/graph/j1;
    .locals 15

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/graph/j1$a;->u:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/graph/j1$a;->q:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->c:Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->a:Lcom/android/tools/r8/graph/L4;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 21
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/j1$a;->r:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/j1$a;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    if-ne v1, v2, :cond_8

    goto :goto_4

    .line 24
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    if-nez v0, :cond_b

    .line 25
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/j1$a;->s:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    if-nez v0, :cond_d

    .line 26
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/j1$a;->s:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_6
    if-nez v0, :cond_f

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->b:Lcom/android/tools/r8/graph/i0;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->C0()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->p:Lcom/android/tools/r8/graph/A2;

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_f
    :goto_7
    new-instance v0, Lcom/android/tools/r8/graph/j1;

    iget-object v2, p0, Lcom/android/tools/r8/graph/j1$a;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/j1$a;->a:Lcom/android/tools/r8/graph/L4;

    iget-object v4, p0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    iget-object v5, p0, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    iget-object v6, p0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    iget-object v7, p0, Lcom/android/tools/r8/graph/j1$a;->b:Lcom/android/tools/r8/graph/i0;

    iget-object v8, p0, Lcom/android/tools/r8/graph/j1$a;->p:Lcom/android/tools/r8/graph/A2;

    iget-boolean v9, p0, Lcom/android/tools/r8/graph/j1$a;->n:Z

    iget-object v10, p0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    iget-object v11, p0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    iget-object v12, p0, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    iget-object v13, p0, Lcom/android/tools/r8/graph/j1$a;->i:Lcom/android/tools/r8/internal/TW;

    iget-boolean v14, p0, Lcom/android/tools/r8/graph/j1$a;->o:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/android/tools/r8/graph/j1;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/L4;Lcom/android/tools/r8/graph/H3$g;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/z5;Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/TW;Z)V

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->j:Lcom/android/tools/r8/kotlin/d0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/kotlin/d0;)V

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    iput-object v1, v0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->f:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v1

    if-nez v1, :cond_10

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->f:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 33
    :cond_10
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1$a;->t:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->i:Lcom/android/tools/r8/internal/TW;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->i:Lcom/android/tools/r8/internal/TW;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->c()Lcom/android/tools/r8/internal/WY;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/j1$a;->s:Z

    return-object p0
.end method

.method public final b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->a:Lcom/android/tools/r8/graph/L4;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public c()Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/graph/j1$a;->q:Z

    return-object p0
.end method
