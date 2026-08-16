.class public final Lcom/android/tools/r8/dex/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic y:Z = true


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIIIIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/dex/H;->l:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->m:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->n:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->o:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->p:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->q:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->r:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->s:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->t:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->u:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->v:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->w:I

    iput v0, p0, Lcom/android/tools/r8/dex/H;->x:I

    iput p1, p0, Lcom/android/tools/r8/dex/H;->a:I

    iput p2, p0, Lcom/android/tools/r8/dex/H;->b:I

    iput p3, p0, Lcom/android/tools/r8/dex/H;->c:I

    iput p4, p0, Lcom/android/tools/r8/dex/H;->d:I

    iput p5, p0, Lcom/android/tools/r8/dex/H;->e:I

    iput p6, p0, Lcom/android/tools/r8/dex/H;->f:I

    iput p7, p0, Lcom/android/tools/r8/dex/H;->g:I

    iput p8, p0, Lcom/android/tools/r8/dex/H;->h:I

    iput p9, p0, Lcom/android/tools/r8/dex/H;->i:I

    iput p10, p0, Lcom/android/tools/r8/dex/H;->j:I

    iput p11, p0, Lcom/android/tools/r8/dex/H;->k:I

    sget-boolean p1, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez p1, :cond_1

    if-gt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-gt p3, p4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    if-gt p4, p5, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez p1, :cond_7

    if-gt p5, p6, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez p1, :cond_9

    if-gt p6, p7, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez p1, :cond_b

    if-gt p7, p10, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    if-nez p1, :cond_d

    if-gt p8, p10, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_6
    if-nez p1, :cond_f

    if-gt p9, p10, :cond_e

    goto :goto_7

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_7
    return-void
.end method

.method public static a(IZ)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    rem-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/L;IIII)Ljava/util/ArrayList;
    .locals 6

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/android/tools/r8/dex/I;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p2, v3}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p2, Lcom/android/tools/r8/dex/I;

    iget-object v1, p1, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_0

    .line 7
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p2, v3, p4, v1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p2, Lcom/android/tools/r8/dex/I;

    iget p4, p0, Lcom/android/tools/r8/dex/H;->c:I

    iget-object v1, p1, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_1

    .line 12
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 13
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x2

    invoke-direct {p2, v4, p4, v1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p2, Lcom/android/tools/r8/dex/I;

    iget p4, p0, Lcom/android/tools/r8/dex/H;->d:I

    iget-object v1, p1, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 16
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->f:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_2

    .line 17
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 18
    :goto_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x3

    invoke-direct {p2, v4, p4, v1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 19
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance p2, Lcom/android/tools/r8/dex/I;

    iget p4, p0, Lcom/android/tools/r8/dex/H;->e:I

    iget-object v1, p1, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 21
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_3

    .line 22
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 23
    :goto_3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x4

    invoke-direct {p2, v4, p4, v1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 24
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance p2, Lcom/android/tools/r8/dex/I;

    iget p4, p0, Lcom/android/tools/r8/dex/H;->f:I

    iget-object v1, p1, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 26
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_4

    .line 27
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 28
    :goto_4
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x5

    invoke-direct {p2, v4, p4, v1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 29
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance p2, Lcom/android/tools/r8/dex/I;

    iget p4, p0, Lcom/android/tools/r8/dex/H;->g:I

    iget-object v1, p1, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 31
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    .line 32
    array-length v1, v1

    const/4 v4, 0x6

    invoke-direct {p2, v4, p4, v1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 33
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance p2, Lcom/android/tools/r8/dex/I;

    iget p4, p0, Lcom/android/tools/r8/dex/H;->h:I

    iget-object v1, p1, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 35
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->k:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_5

    .line 36
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 37
    :goto_5
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x7

    invoke-direct {p2, v4, p4, v1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 38
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance p2, Lcom/android/tools/r8/dex/I;

    iget p4, p0, Lcom/android/tools/r8/dex/H;->i:I

    iget-object v1, p1, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 40
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->l:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_6

    .line 41
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 42
    :goto_6
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/16 v4, 0x8

    invoke-direct {p2, v4, p4, v1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 43
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p2, Lcom/android/tools/r8/dex/I;

    .line 45
    sget-boolean p4, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez p4, :cond_8

    iget v1, p0, Lcom/android/tools/r8/dex/H;->l:I

    invoke-static {v1, v3}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_8
    :goto_7
    iget v1, p0, Lcom/android/tools/r8/dex/H;->l:I

    .line 47
    iget v4, p0, Lcom/android/tools/r8/dex/H;->x:I

    const/16 v5, 0x2001

    invoke-direct {p2, v5, v1, v4}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p4, :cond_a

    .line 49
    iget v1, p0, Lcom/android/tools/r8/dex/H;->m:I

    invoke-static {v1, v2}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_a
    :goto_8
    iget v1, p0, Lcom/android/tools/r8/dex/H;->m:I

    .line 51
    iget-object v4, p1, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 52
    iget-object v4, v4, Lcom/android/tools/r8/dex/J;->b:Lcom/android/tools/r8/internal/k20;

    .line 53
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v4

    .line 54
    check-cast v4, Lcom/android/tools/r8/internal/f20;

    .line 55
    iget-object v4, v4, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 56
    iget v4, v4, Lcom/android/tools/r8/internal/k20;->l:I

    const/16 v5, 0x2003

    .line 57
    invoke-direct {p2, v5, v1, v4}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 58
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p4, :cond_c

    .line 60
    iget v1, p0, Lcom/android/tools/r8/dex/H;->n:I

    invoke-static {v1, v3}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 61
    :cond_c
    :goto_9
    iget v1, p0, Lcom/android/tools/r8/dex/H;->n:I

    .line 62
    iget-object v4, p1, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 63
    iget-object v4, v4, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    .line 64
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v4

    .line 65
    check-cast v4, Lcom/android/tools/r8/internal/f20;

    .line 66
    iget-object v4, v4, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 67
    iget v4, v4, Lcom/android/tools/r8/internal/k20;->l:I

    const/16 v5, 0x1001

    .line 68
    invoke-direct {p2, v5, v1, v4}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 69
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p5, :cond_d

    move p3, v2

    :cond_d
    const/16 v1, 0x2002

    .line 71
    invoke-direct {p2, v1, p5, p3}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 72
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p4, :cond_f

    .line 74
    iget p3, p0, Lcom/android/tools/r8/dex/H;->p:I

    invoke-static {p3, v2}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_e

    goto :goto_a

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :cond_f
    :goto_a
    iget p3, p0, Lcom/android/tools/r8/dex/H;->p:I

    .line 76
    iget-object p5, p1, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 77
    iget-object p5, p5, Lcom/android/tools/r8/dex/J;->e:Lcom/android/tools/r8/internal/k20;

    .line 78
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p5

    .line 79
    check-cast p5, Lcom/android/tools/r8/internal/f20;

    .line 80
    iget-object p5, p5, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 81
    iget p5, p5, Lcom/android/tools/r8/internal/k20;->l:I

    const/16 v1, 0x2004

    .line 82
    invoke-direct {p2, v1, p3, p5}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 83
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p4, :cond_11

    .line 85
    iget p3, p0, Lcom/android/tools/r8/dex/H;->t:I

    invoke-static {p3, v2}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_10

    goto :goto_b

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :cond_11
    :goto_b
    iget p3, p0, Lcom/android/tools/r8/dex/H;->t:I

    .line 87
    iget-object p5, p1, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 88
    iget-object p5, p5, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    .line 89
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object p5

    .line 90
    check-cast p5, Lcom/android/tools/r8/internal/bd0;

    .line 91
    iget-object p5, p5, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    .line 92
    iget p5, p5, Lcom/android/tools/r8/internal/gd0;->l:I

    const/16 v1, 0x2000

    .line 93
    invoke-direct {p2, v1, p3, p5}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 94
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p4, :cond_13

    .line 96
    iget p3, p0, Lcom/android/tools/r8/dex/H;->u:I

    invoke-static {p3, v2}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_12

    goto :goto_c

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_13
    :goto_c
    iget p3, p0, Lcom/android/tools/r8/dex/H;->u:I

    .line 98
    iget-object p5, p1, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 99
    iget-object p5, p5, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    .line 100
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p5

    .line 101
    check-cast p5, Lcom/android/tools/r8/internal/f20;

    .line 102
    iget-object p5, p5, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 103
    iget p5, p5, Lcom/android/tools/r8/internal/k20;->l:I

    const/16 v1, 0x2005

    .line 104
    invoke-direct {p2, v1, p3, p5}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 105
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p4, :cond_15

    .line 107
    iget p3, p0, Lcom/android/tools/r8/dex/H;->q:I

    invoke-static {p3, v3}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_14

    goto :goto_d

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 108
    :cond_15
    :goto_d
    iget p3, p0, Lcom/android/tools/r8/dex/H;->q:I

    .line 109
    iget-object p5, p1, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 110
    iget-object p5, p5, Lcom/android/tools/r8/dex/J;->f:Lcom/android/tools/r8/internal/k20;

    .line 111
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p5

    .line 112
    check-cast p5, Lcom/android/tools/r8/internal/f20;

    .line 113
    iget-object p5, p5, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 114
    iget p5, p5, Lcom/android/tools/r8/internal/k20;->l:I

    const/16 v1, 0x1003

    .line 115
    invoke-direct {p2, v1, p3, p5}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 116
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p4, :cond_17

    .line 118
    iget p3, p0, Lcom/android/tools/r8/dex/H;->r:I

    invoke-static {p3, v3}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_16

    goto :goto_e

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 119
    :cond_17
    :goto_e
    iget p3, p0, Lcom/android/tools/r8/dex/H;->r:I

    .line 120
    iget-object p5, p1, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 121
    iget-object p5, p5, Lcom/android/tools/r8/dex/J;->g:Lcom/android/tools/r8/internal/k20;

    .line 122
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p5

    .line 123
    check-cast p5, Lcom/android/tools/r8/internal/f20;

    .line 124
    iget-object p5, p5, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 125
    iget p5, p5, Lcom/android/tools/r8/internal/k20;->l:I

    const/16 v1, 0x1002

    .line 126
    invoke-direct {p2, v1, p3, p5}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 127
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p2, Lcom/android/tools/r8/dex/I;

    if-nez p4, :cond_19

    .line 129
    iget p3, p0, Lcom/android/tools/r8/dex/H;->s:I

    invoke-static {p3, v3}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_f

    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 130
    :cond_19
    :goto_f
    iget p3, p0, Lcom/android/tools/r8/dex/H;->s:I

    .line 131
    iget-object p1, p1, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 132
    iget-object p1, p1, Lcom/android/tools/r8/dex/J;->h:Lcom/android/tools/r8/internal/k20;

    .line 133
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    .line 134
    check-cast p1, Lcom/android/tools/r8/internal/f20;

    .line 135
    iget-object p1, p1, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 136
    iget p1, p1, Lcom/android/tools/r8/internal/k20;->l:I

    const/16 p4, 0x2006

    .line 137
    invoke-direct {p2, p4, p3, p1}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    .line 138
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance p1, Lcom/android/tools/r8/dex/I;

    const/16 p2, 0x1000

    .line 140
    iget p3, p0, Lcom/android/tools/r8/dex/H;->v:I

    .line 141
    invoke-direct {p1, p2, p3, v3}, Lcom/android/tools/r8/dex/I;-><init>(III)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance p1, Lu/n;

    invoke-direct {p1}, Lu/n;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(I)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/dex/H;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/dex/H;->s:I

    return-void
.end method

.method public final c(I)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/dex/H;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/dex/H;->r:I

    return-void
.end method

.method public final d(I)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/dex/H;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/dex/H;->q:I

    return-void
.end method

.method public final e(I)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/dex/H;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/dex/H;->p:I

    return-void
.end method

.method public final f(I)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/dex/H;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/dex/H;->t:I

    return-void
.end method

.method public final g(I)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/dex/H;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/dex/H;->u:I

    return-void
.end method

.method public final h(I)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/dex/H;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/dex/H;->o:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/tools/r8/dex/H;->b:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->a:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nStringIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->c:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntypeIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->d:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->c:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nprotoIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->e:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nfieldIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->f:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmethodIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->g:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nclassDefs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->h:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ncallSiteIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->i:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->h:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmethodHandleIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->j:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->i:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ncode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->m:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->l:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ndebugInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->n:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->m:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntypeList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->o:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/dex/H;->p:I

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/dex/H;->n:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nstringData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->o:I

    if-lez v1, :cond_1

    iget v2, p0, Lcom/android/tools/r8/dex/H;->p:I

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nannotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->t:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->p:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nclassData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->u:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->t:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nencodedArrays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->v:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->r:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nannotationSets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->r:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->q:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nannotationSetRefLists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->s:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->r:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nannotationDirectories: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->v:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->s:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->w:I

    iget v2, p0, Lcom/android/tools/r8/dex/H;->v:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nendOfFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/dex/H;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
