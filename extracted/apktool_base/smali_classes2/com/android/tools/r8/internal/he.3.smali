.class public final Lcom/android/tools/r8/internal/he;
.super Lcom/android/tools/r8/internal/ge;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Lcom/android/tools/r8/internal/p8;

.field public C:I

.field public D:Lcom/android/tools/r8/internal/p8;

.field public E:Lcom/android/tools/r8/internal/ic0;

.field public F:Lcom/android/tools/r8/internal/ic0;

.field public G:Lcom/android/tools/r8/internal/K4;

.field public H:I

.field public c:I

.field public final d:Lcom/android/tools/r8/internal/jr0;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[I

.field public j:Lcom/android/tools/r8/internal/Vw;

.field public k:Lcom/android/tools/r8/internal/Vw;

.field public l:Lcom/android/tools/r8/internal/EX;

.field public m:Lcom/android/tools/r8/internal/EX;

.field public n:I

.field public o:Lcom/android/tools/r8/internal/p8;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Lcom/android/tools/r8/internal/p8;

.field public u:Lcom/android/tools/r8/internal/S2;

.field public v:Lcom/android/tools/r8/internal/S2;

.field public w:Lcom/android/tools/r8/internal/S2;

.field public x:Lcom/android/tools/r8/internal/S2;

.field public y:Lcom/android/tools/r8/internal/UX;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ge;-><init>(Lcom/android/tools/r8/internal/Cd;)V

    new-instance v0, Lcom/android/tools/r8/internal/jr0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jr0;-><init>(Lcom/android/tools/r8/internal/he;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/he;->H:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;
    .locals 9

    .line 64
    new-instance v8, Lcom/android/tools/r8/internal/EX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    iget v7, p0, Lcom/android/tools/r8/internal/he;->H:I

    move-object v0, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/EX;-><init>(Lcom/android/tools/r8/internal/jr0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 65
    iget-object p1, p0, Lcom/android/tools/r8/internal/he;->l:Lcom/android/tools/r8/internal/EX;

    if-nez p1, :cond_0

    .line 66
    iput-object v8, p0, Lcom/android/tools/r8/internal/he;->l:Lcom/android/tools/r8/internal/EX;

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/he;->m:Lcom/android/tools/r8/internal/EX;

    iput-object v8, p1, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    .line 68
    :goto_0
    iput-object v8, p0, Lcom/android/tools/r8/internal/he;->m:Lcom/android/tools/r8/internal/EX;

    return-object v8
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    if-eqz p4, :cond_0

    .line 40
    iget-object p4, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->w:Lcom/android/tools/r8/internal/S2;

    .line 41
    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/he;->w:Lcom/android/tools/r8/internal/S2;

    return-object p1

    .line 42
    :cond_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->x:Lcom/android/tools/r8/internal/S2;

    .line 43
    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/he;->x:Lcom/android/tools/r8/internal/S2;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->u:Lcom/android/tools/r8/internal/S2;

    .line 37
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/he;->u:Lcom/android/tools/r8/internal/S2;

    return-object p1

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->v:Lcom/android/tools/r8/internal/S2;

    .line 39
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/he;->v:Lcom/android/tools/r8/internal/S2;

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/TX;
    .locals 3

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/UX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const/16 v2, 0x13

    .line 26
    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p2

    .line 27
    iget p2, p2, Lcom/android/tools/r8/internal/hr0;->a:I

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p3

    :goto_0
    invoke-direct {v0, v1, p2, p1, p3}, Lcom/android/tools/r8/internal/UX;-><init>(Lcom/android/tools/r8/internal/jr0;III)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/he;->y:Lcom/android/tools/r8/internal/UX;

    return-object v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;
    .locals 8

    .line 59
    new-instance v7, Lcom/android/tools/r8/internal/Vw;

    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Vw;-><init>(Lcom/android/tools/r8/internal/jr0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/android/tools/r8/internal/he;->j:Lcom/android/tools/r8/internal/Vw;

    if-nez p1, :cond_0

    .line 61
    iput-object v7, p0, Lcom/android/tools/r8/internal/he;->j:Lcom/android/tools/r8/internal/Vw;

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/he;->k:Lcom/android/tools/r8/internal/Vw;

    iput-object v7, p1, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    .line 63
    :goto_0
    iput-object v7, p0, Lcom/android/tools/r8/internal/he;->k:Lcom/android/tools/r8/internal/Vw;

    return-object v7
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/he;->c:I

    .line 3
    iput p2, p0, Lcom/android/tools/r8/internal/he;->e:I

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 5
    iput p1, p2, Lcom/android/tools/r8/internal/jr0;->b:I

    .line 6
    iput-object p3, p2, Lcom/android/tools/r8/internal/jr0;->c:Ljava/lang/String;

    const/4 v0, 0x7

    .line 7
    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p2

    .line 8
    iget p2, p2, Lcom/android/tools/r8/internal/hr0;->a:I

    .line 9
    iput p2, p0, Lcom/android/tools/r8/internal/he;->f:I

    if-eqz p4, :cond_0

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/tools/r8/internal/he;->r:I

    :cond_0
    const/4 p2, 0x0

    if-nez p5, :cond_1

    move p3, p2

    goto :goto_0

    .line 11
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 12
    invoke-virtual {p3, v0, p5}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p3

    .line 13
    iget p3, p3, Lcom/android/tools/r8/internal/hr0;->a:I

    :goto_0
    iput p3, p0, Lcom/android/tools/r8/internal/he;->g:I

    .line 14
    array-length p3, p6

    if-lez p3, :cond_2

    .line 15
    array-length p3, p6

    iput p3, p0, Lcom/android/tools/r8/internal/he;->h:I

    .line 16
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/android/tools/r8/internal/he;->i:[I

    .line 17
    :goto_1
    iget p3, p0, Lcom/android/tools/r8/internal/he;->h:I

    if-ge p2, p3, :cond_2

    .line 18
    iget-object p3, p0, Lcom/android/tools/r8/internal/he;->i:[I

    iget-object p4, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    aget-object p5, p6, p2

    .line 19
    invoke-virtual {p4, v0, p5}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p4

    .line 20
    iget p4, p4, Lcom/android/tools/r8/internal/hr0;->a:I

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 21
    :cond_2
    iget p2, p0, Lcom/android/tools/r8/internal/he;->H:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    const/16 p2, 0x33

    if-lt p1, p2, :cond_3

    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lcom/android/tools/r8/internal/he;->H:I

    :cond_3
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/tools/r8/internal/p8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const/4 v1, 0x7

    .line 49
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p2

    .line 50
    iget v0, p2, Lcom/android/tools/r8/internal/hr0;->g:I

    if-nez v0, :cond_3

    .line 51
    iget v0, p0, Lcom/android/tools/r8/internal/he;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/he;->n:I

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    iget v2, p2, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 54
    invoke-virtual {v3, v1, p3}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p3

    .line 55
    iget p3, p3, Lcom/android/tools/r8/internal/hr0;->a:I

    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 56
    iget-object p3, p0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 57
    iget-object p3, p0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 58
    iget p1, p0, Lcom/android/tools/r8/internal/he;->n:I

    iput p1, p2, Lcom/android/tools/r8/internal/hr0;->g:I

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    iput-object v0, p1, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 45
    iput-object p1, p0, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const/4 v1, 0x7

    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 31
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    iput p1, p0, Lcom/android/tools/r8/internal/he;->z:I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/he;->s:I

    :cond_0
    if-eqz p2, :cond_1

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/p8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p8;-><init>()V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/p8;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/p8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/he;->t:Lcom/android/tools/r8/internal/p8;

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const/4 v1, 0x7

    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 34
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    iput p1, p0, Lcom/android/tools/r8/internal/he;->p:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/he;->q:I

    :cond_0
    return-void
.end method

.method public final a([BZ)[B
    .locals 5

    .line 69
    new-instance v0, Lcom/android/tools/r8/internal/J4;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J4;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/J4;->a(Lcom/android/tools/r8/internal/K4;)V

    .line 71
    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->j:Lcom/android/tools/r8/internal/Vw;

    :goto_0
    if-eqz v1, :cond_0

    .line 72
    iget-object v2, v1, Lcom/android/tools/r8/internal/Vw;->m:Lcom/android/tools/r8/internal/K4;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/J4;->a(Lcom/android/tools/r8/internal/K4;)V

    .line 73
    iget-object v1, v1, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    check-cast v1, Lcom/android/tools/r8/internal/Vw;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->l:Lcom/android/tools/r8/internal/EX;

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 75
    iget-object v3, v1, Lcom/android/tools/r8/internal/EX;->L:Lcom/android/tools/r8/internal/K4;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/J4;->a(Lcom/android/tools/r8/internal/K4;)V

    .line 76
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/J4;->a(Lcom/android/tools/r8/internal/K4;)V

    .line 77
    iget-object v1, v1, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    check-cast v1, Lcom/android/tools/r8/internal/EX;

    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->E:Lcom/android/tools/r8/internal/ic0;

    :goto_2
    if-eqz v1, :cond_2

    .line 79
    iget-object v3, v1, Lcom/android/tools/r8/internal/ic0;->j:Lcom/android/tools/r8/internal/K4;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/J4;->a(Lcom/android/tools/r8/internal/K4;)V

    .line 80
    iget-object v1, v1, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    check-cast v1, Lcom/android/tools/r8/internal/ic0;

    goto :goto_2

    .line 81
    :cond_2
    iget v1, v0, Lcom/android/tools/r8/internal/J4;->a:I

    new-array v3, v1, [Lcom/android/tools/r8/internal/K4;

    .line 82
    iget-object v0, v0, Lcom/android/tools/r8/internal/J4;->b:[Lcom/android/tools/r8/internal/K4;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->j:Lcom/android/tools/r8/internal/Vw;

    .line 84
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->k:Lcom/android/tools/r8/internal/Vw;

    .line 85
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->l:Lcom/android/tools/r8/internal/EX;

    .line 86
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->m:Lcom/android/tools/r8/internal/EX;

    .line 87
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->u:Lcom/android/tools/r8/internal/S2;

    .line 88
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->v:Lcom/android/tools/r8/internal/S2;

    .line 89
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->w:Lcom/android/tools/r8/internal/S2;

    .line 90
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->x:Lcom/android/tools/r8/internal/S2;

    .line 91
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->y:Lcom/android/tools/r8/internal/UX;

    .line 92
    iput v4, p0, Lcom/android/tools/r8/internal/he;->z:I

    .line 93
    iput v4, p0, Lcom/android/tools/r8/internal/he;->A:I

    .line 94
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->B:Lcom/android/tools/r8/internal/p8;

    .line 95
    iput v4, p0, Lcom/android/tools/r8/internal/he;->C:I

    .line 96
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->D:Lcom/android/tools/r8/internal/p8;

    .line 97
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->E:Lcom/android/tools/r8/internal/ic0;

    .line 98
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->F:Lcom/android/tools/r8/internal/ic0;

    .line 99
    iput-object v2, p0, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    goto :goto_3

    :cond_3
    move v0, v4

    .line 100
    :goto_3
    iput v0, p0, Lcom/android/tools/r8/internal/he;->H:I

    .line 101
    new-instance v0, Lcom/android/tools/r8/internal/Vd;

    invoke-direct {v0, p1, v4}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    if-eqz p2, :cond_4

    const/16 v4, 0x8

    :cond_4
    or-int/lit16 p1, v4, 0x100

    .line 102
    invoke-virtual {v0, p0, v3, p1}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/he;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/ic0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/internal/ic0;-><init>(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/he;->E:Lcom/android/tools/r8/internal/ic0;

    if-nez p1, :cond_0

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/internal/he;->E:Lcom/android/tools/r8/internal/ic0;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/he;->F:Lcom/android/tools/r8/internal/ic0;

    iput-object v0, p1, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    .line 11
    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/he;->F:Lcom/android/tools/r8/internal/ic0;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->B:Lcom/android/tools/r8/internal/p8;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/p8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/he;->B:Lcom/android/tools/r8/internal/p8;

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/he;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/he;->A:I

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->B:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const/4 v2, 0x7

    .line 5
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 6
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    return-void
.end method

.method public final b()[B
    .locals 32

    move-object/from16 v0, p0

    .line 12
    iget v1, v0, Lcom/android/tools/r8/internal/he;->h:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    .line 13
    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->j:Lcom/android/tools/r8/internal/Vw;

    const/4 v5, 0x0

    :goto_0
    const-string v6, "ConstantValue"

    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 14
    iget v9, v3, Lcom/android/tools/r8/internal/Vw;->h:I

    if-eqz v9, :cond_0

    .line 15
    iget-object v8, v3, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    const/16 v7, 0x10

    goto :goto_1

    :cond_0
    const/16 v7, 0x8

    .line 16
    :goto_1
    iget-object v6, v3, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    iget v8, v3, Lcom/android/tools/r8/internal/Vw;->d:I

    iget v9, v3, Lcom/android/tools/r8/internal/Vw;->g:I

    invoke-static {v6, v8, v9}, Lcom/android/tools/r8/internal/K4;->a(Lcom/android/tools/r8/internal/jr0;II)I

    move-result v6

    add-int/2addr v6, v7

    .line 17
    iget-object v7, v3, Lcom/android/tools/r8/internal/Vw;->i:Lcom/android/tools/r8/internal/S2;

    iget-object v8, v3, Lcom/android/tools/r8/internal/Vw;->j:Lcom/android/tools/r8/internal/S2;

    iget-object v9, v3, Lcom/android/tools/r8/internal/Vw;->k:Lcom/android/tools/r8/internal/S2;

    iget-object v10, v3, Lcom/android/tools/r8/internal/Vw;->l:Lcom/android/tools/r8/internal/S2;

    .line 18
    invoke-static {v7, v8, v9, v10}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;)I

    move-result v7

    add-int/2addr v7, v6

    .line 19
    iget-object v6, v3, Lcom/android/tools/r8/internal/Vw;->m:Lcom/android/tools/r8/internal/K4;

    if-eqz v6, :cond_3

    .line 20
    iget-object v8, v3, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    .line 21
    iget-object v9, v8, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    const/4 v9, 0x0

    :goto_2
    if-eqz v6, :cond_2

    .line 22
    iget-object v10, v6, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 23
    iget-object v10, v6, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    if-nez v10, :cond_1

    .line 24
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/K4;->a()Lcom/android/tools/r8/internal/p8;

    move-result-object v10

    iput-object v10, v6, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 25
    :cond_1
    iget-object v10, v6, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 26
    iget v10, v10, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v10, v10, 0x6

    add-int/2addr v9, v10

    .line 27
    iget-object v6, v6, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_2

    :cond_2
    add-int/2addr v7, v9

    :cond_3
    add-int/2addr v1, v7

    .line 28
    iget-object v3, v3, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    check-cast v3, Lcom/android/tools/r8/internal/Vw;

    goto :goto_0

    .line 29
    :cond_4
    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->l:Lcom/android/tools/r8/internal/EX;

    const/4 v9, 0x0

    :goto_3
    const-string v10, "LocalVariableTypeTable"

    const-string v11, "LocalVariableTable"

    const-string v12, "LineNumberTable"

    const-string v13, "StackMap"

    const-string v14, "StackMapTable"

    const-string v4, "Code"

    const-string v15, "RuntimeInvisibleTypeAnnotations"

    const-string v8, "RuntimeVisibleTypeAnnotations"

    const v2, 0xffff

    if-eqz v3, :cond_1d

    add-int/lit8 v9, v9, 0x1

    .line 30
    iget-object v7, v3, Lcom/android/tools/r8/internal/EX;->k:Lcom/android/tools/r8/internal/p8;

    iget v7, v7, Lcom/android/tools/r8/internal/p8;->b:I

    if-lez v7, :cond_d

    if-gt v7, v2, :cond_c

    .line 31
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 32
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->k:Lcom/android/tools/r8/internal/p8;

    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v4, 0x10

    add-int/2addr v2, v4

    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->l:Lcom/android/tools/r8/internal/Rz;

    const/4 v7, 0x0

    :goto_4
    if-eqz v4, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 33
    iget-object v4, v4, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    goto :goto_4

    :cond_5
    mul-int/lit8 v7, v7, 0x8

    const/4 v4, 0x2

    add-int/2addr v7, v4

    add-int/2addr v7, v2

    const/16 v2, 0x8

    add-int/2addr v7, v2

    .line 34
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->u:Lcom/android/tools/r8/internal/p8;

    if-eqz v4, :cond_7

    .line 35
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 36
    iget v2, v4, Lcom/android/tools/r8/internal/jr0;->b:I

    move/from16 v17, v9

    const/16 v9, 0x32

    if-lt v2, v9, :cond_6

    move-object v13, v14

    .line 37
    :cond_6
    invoke-virtual {v4, v13}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 38
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->u:Lcom/android/tools/r8/internal/p8;

    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v4, 0x8

    add-int/2addr v2, v4

    add-int/2addr v7, v2

    goto :goto_5

    :cond_7
    move v4, v2

    move/from16 v17, v9

    .line 39
    :goto_5
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->o:Lcom/android/tools/r8/internal/p8;

    if-eqz v2, :cond_8

    .line 40
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2, v12}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 41
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->o:Lcom/android/tools/r8/internal/p8;

    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v2, v4

    add-int/2addr v7, v2

    .line 42
    :cond_8
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->q:Lcom/android/tools/r8/internal/p8;

    if-eqz v2, :cond_9

    .line 43
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 44
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->q:Lcom/android/tools/r8/internal/p8;

    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v2, v4

    add-int/2addr v7, v2

    .line 45
    :cond_9
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->s:Lcom/android/tools/r8/internal/p8;

    if-eqz v2, :cond_a

    .line 46
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 47
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->s:Lcom/android/tools/r8/internal/p8;

    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v2, v4

    add-int/2addr v7, v2

    .line 48
    :cond_a
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->v:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_b

    .line 49
    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v7

    goto :goto_6

    :cond_b
    move v2, v7

    .line 50
    :goto_6
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->w:Lcom/android/tools/r8/internal/S2;

    if-eqz v4, :cond_e

    .line 51
    invoke-virtual {v4, v15}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_7

    .line 52
    :cond_c
    new-instance v1, Lcom/android/tools/r8/internal/BX;

    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 53
    iget-object v2, v2, Lcom/android/tools/r8/internal/jr0;->c:Ljava/lang/String;

    .line 54
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->f:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/tools/r8/internal/EX;->h:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/tools/r8/internal/EX;->k:Lcom/android/tools/r8/internal/p8;

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/tools/r8/internal/BX;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_d
    move/from16 v17, v9

    const/16 v2, 0x8

    .line 55
    :cond_e
    :goto_7
    iget v4, v3, Lcom/android/tools/r8/internal/EX;->x:I

    if-lez v4, :cond_f

    .line 56
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "Exceptions"

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 57
    iget v4, v3, Lcom/android/tools/r8/internal/EX;->x:I

    const/4 v7, 0x2

    mul-int/2addr v4, v7

    const/16 v7, 0x8

    add-int/2addr v4, v7

    add-int/2addr v2, v4

    .line 58
    :cond_f
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    iget v7, v3, Lcom/android/tools/r8/internal/EX;->d:I

    iget v8, v3, Lcom/android/tools/r8/internal/EX;->z:I

    invoke-static {v4, v7, v8}, Lcom/android/tools/r8/internal/K4;->a(Lcom/android/tools/r8/internal/jr0;II)I

    move-result v4

    add-int/2addr v4, v2

    .line 59
    iget-object v2, v3, Lcom/android/tools/r8/internal/EX;->A:Lcom/android/tools/r8/internal/S2;

    iget-object v7, v3, Lcom/android/tools/r8/internal/EX;->B:Lcom/android/tools/r8/internal/S2;

    iget-object v8, v3, Lcom/android/tools/r8/internal/EX;->G:Lcom/android/tools/r8/internal/S2;

    iget-object v9, v3, Lcom/android/tools/r8/internal/EX;->H:Lcom/android/tools/r8/internal/S2;

    .line 60
    invoke-static {v2, v7, v8, v9}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;)I

    move-result v2

    add-int/2addr v2, v4

    .line 61
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->D:[Lcom/android/tools/r8/internal/S2;

    if-eqz v4, :cond_13

    .line 62
    iget v7, v3, Lcom/android/tools/r8/internal/EX;->C:I

    if-nez v7, :cond_10

    .line 63
    array-length v7, v4

    :cond_10
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x7

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v7, :cond_12

    .line 64
    aget-object v10, v4, v9

    if-nez v10, :cond_11

    const/4 v10, 0x0

    goto :goto_9

    .line 65
    :cond_11
    const-string v11, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x8

    sub-int/2addr v10, v11

    :goto_9
    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_12
    add-int/2addr v2, v8

    .line 66
    :cond_13
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->F:[Lcom/android/tools/r8/internal/S2;

    if-eqz v4, :cond_17

    .line 67
    iget v7, v3, Lcom/android/tools/r8/internal/EX;->E:I

    if-nez v7, :cond_14

    .line 68
    array-length v7, v4

    :cond_14
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x7

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v7, :cond_16

    .line 69
    aget-object v10, v4, v9

    if-nez v10, :cond_15

    const/4 v10, 0x0

    goto :goto_b

    .line 70
    :cond_15
    const-string v11, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x8

    sub-int/2addr v10, v11

    :goto_b
    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_16
    add-int/2addr v2, v8

    .line 71
    :cond_17
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->I:Lcom/android/tools/r8/internal/p8;

    if-eqz v4, :cond_18

    .line 72
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "AnnotationDefault"

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 73
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->I:Lcom/android/tools/r8/internal/p8;

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v2, v4

    .line 74
    :cond_18
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->K:Lcom/android/tools/r8/internal/p8;

    if-eqz v4, :cond_19

    .line 75
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "MethodParameters"

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 76
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->K:Lcom/android/tools/r8/internal/p8;

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 77
    :cond_19
    iget-object v4, v3, Lcom/android/tools/r8/internal/EX;->L:Lcom/android/tools/r8/internal/K4;

    if-eqz v4, :cond_1c

    .line 78
    iget-object v7, v3, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 79
    iget-object v8, v7, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    const/4 v8, 0x0

    :goto_c
    if-eqz v4, :cond_1b

    .line 80
    iget-object v9, v4, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 81
    iget-object v9, v4, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    if-nez v9, :cond_1a

    .line 82
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/K4;->a()Lcom/android/tools/r8/internal/p8;

    move-result-object v9

    iput-object v9, v4, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 83
    :cond_1a
    iget-object v9, v4, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 84
    iget v9, v9, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    .line 85
    iget-object v4, v4, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_c

    :cond_1b
    add-int/2addr v2, v8

    :cond_1c
    add-int/2addr v1, v2

    .line 86
    iget-object v2, v3, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/EX;

    move/from16 v9, v17

    const/4 v2, 0x2

    goto/16 :goto_3

    .line 87
    :cond_1d
    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    if-eqz v3, :cond_1e

    .line 88
    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v16, 0x8

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 89
    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "InnerClasses"

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_d

    :cond_1e
    const/4 v3, 0x0

    .line 90
    :goto_d
    iget v7, v0, Lcom/android/tools/r8/internal/he;->p:I

    if-eqz v7, :cond_1f

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0xa

    .line 91
    iget-object v7, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v2, "EnclosingMethod"

    invoke-virtual {v7, v2}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 92
    :cond_1f
    iget v2, v0, Lcom/android/tools/r8/internal/he;->e:I

    const/16 v7, 0x1000

    and-int/2addr v2, v7

    const/16 v7, 0x31

    if-eqz v2, :cond_20

    iget v2, v0, Lcom/android/tools/r8/internal/he;->c:I

    const v18, 0xffff

    and-int v2, v2, v18

    if-ge v2, v7, :cond_20

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    .line 93
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "Synthetic"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 94
    :cond_20
    iget v2, v0, Lcom/android/tools/r8/internal/he;->r:I

    if-eqz v2, :cond_21

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 95
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "Signature"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 96
    :cond_21
    iget v2, v0, Lcom/android/tools/r8/internal/he;->s:I

    if-eqz v2, :cond_22

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 97
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "SourceFile"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 98
    :cond_22
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->t:Lcom/android/tools/r8/internal/p8;

    if-eqz v2, :cond_23

    add-int/lit8 v3, v3, 0x1

    .line 99
    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    .line 100
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "SourceDebugExtension"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 101
    :cond_23
    iget v2, v0, Lcom/android/tools/r8/internal/he;->e:I

    const/high16 v7, 0x20000

    and-int/2addr v2, v7

    if-eqz v2, :cond_24

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    .line 102
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "Deprecated"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 103
    :cond_24
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->u:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_25

    add-int/lit8 v3, v3, 0x1

    .line 104
    const-string v7, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 105
    :cond_25
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->v:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_26

    add-int/lit8 v3, v3, 0x1

    .line 106
    const-string v7, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 107
    :cond_26
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->w:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_27

    add-int/lit8 v3, v3, 0x1

    .line 108
    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 109
    :cond_27
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->x:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_28

    add-int/lit8 v3, v3, 0x1

    .line 110
    invoke-virtual {v2, v15}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 111
    :cond_28
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 112
    iget-object v7, v2, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    move-object/from16 v19, v13

    const-string v13, "BootstrapMethods"

    if-eqz v7, :cond_29

    .line 113
    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 114
    iget-object v2, v2, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v7, 0x8

    add-int/2addr v2, v7

    goto :goto_e

    :cond_29
    const/4 v2, 0x0

    :goto_e
    if-lez v2, :cond_2b

    add-int/lit8 v3, v3, 0x1

    .line 115
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 116
    iget-object v7, v2, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    if-eqz v7, :cond_2a

    .line 117
    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 118
    iget-object v2, v2, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v7, 0x8

    add-int/2addr v2, v7

    goto :goto_f

    :cond_2a
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v1, v2

    .line 119
    :cond_2b
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->y:Lcom/android/tools/r8/internal/UX;

    if-eqz v2, :cond_30

    .line 120
    iget v7, v2, Lcom/android/tools/r8/internal/UX;->p:I

    if-lez v7, :cond_2c

    const/4 v7, 0x1

    const/16 v17, 0x1

    goto :goto_10

    :cond_2c
    const/4 v7, 0x1

    const/16 v17, 0x0

    :goto_10
    add-int/lit8 v20, v17, 0x1

    .line 121
    iget v7, v2, Lcom/android/tools/r8/internal/UX;->r:I

    if-lez v7, :cond_2d

    const/4 v7, 0x1

    goto :goto_11

    :cond_2d
    const/4 v7, 0x0

    :goto_11
    add-int v20, v20, v7

    add-int v3, v20, v3

    .line 122
    iget-object v7, v2, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    move/from16 v20, v3

    .line 123
    const-string v3, "Module"

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 124
    iget-object v3, v2, Lcom/android/tools/r8/internal/UX;->g:Lcom/android/tools/r8/internal/p8;

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v3, v3, 0x16

    iget-object v7, v2, Lcom/android/tools/r8/internal/UX;->i:Lcom/android/tools/r8/internal/p8;

    iget v7, v7, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v3, v7

    iget-object v7, v2, Lcom/android/tools/r8/internal/UX;->k:Lcom/android/tools/r8/internal/p8;

    iget v7, v7, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v3, v7

    iget-object v7, v2, Lcom/android/tools/r8/internal/UX;->m:Lcom/android/tools/r8/internal/p8;

    iget v7, v7, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v3, v7

    iget-object v7, v2, Lcom/android/tools/r8/internal/UX;->o:Lcom/android/tools/r8/internal/p8;

    iget v7, v7, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v3, v7

    .line 125
    iget v7, v2, Lcom/android/tools/r8/internal/UX;->p:I

    if-lez v7, :cond_2e

    .line 126
    iget-object v7, v2, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    move-object/from16 v21, v14

    const-string v14, "ModulePackages"

    invoke-virtual {v7, v14}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 127
    iget-object v7, v2, Lcom/android/tools/r8/internal/UX;->q:Lcom/android/tools/r8/internal/p8;

    iget v7, v7, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v14, 0x8

    add-int/2addr v7, v14

    add-int/2addr v3, v7

    goto :goto_12

    :cond_2e
    move-object/from16 v21, v14

    .line 128
    :goto_12
    iget v7, v2, Lcom/android/tools/r8/internal/UX;->r:I

    if-lez v7, :cond_2f

    .line 129
    iget-object v2, v2, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "ModuleMainClass"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x8

    :cond_2f
    add-int/2addr v1, v3

    move/from16 v3, v20

    goto :goto_13

    :cond_30
    move-object/from16 v21, v14

    .line 130
    :goto_13
    iget v2, v0, Lcom/android/tools/r8/internal/he;->z:I

    if-eqz v2, :cond_31

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 131
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "NestHost"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 132
    :cond_31
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->B:Lcom/android/tools/r8/internal/p8;

    if-eqz v2, :cond_32

    add-int/lit8 v3, v3, 0x1

    .line 133
    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v7, 0x8

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    .line 134
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "NestMembers"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 135
    :cond_32
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->D:Lcom/android/tools/r8/internal/p8;

    if-eqz v2, :cond_33

    add-int/lit8 v3, v3, 0x1

    .line 136
    iget v2, v2, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v7, 0x8

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    .line 137
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v7, "PermittedSubclasses"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 138
    :cond_33
    iget v2, v0, Lcom/android/tools/r8/internal/he;->e:I

    const/high16 v7, 0x10000

    and-int/2addr v2, v7

    if-nez v2, :cond_35

    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->E:Lcom/android/tools/r8/internal/ic0;

    if-eqz v2, :cond_34

    goto :goto_14

    :cond_34
    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v22, v13

    const/4 v7, 0x0

    const/4 v14, 0x0

    goto/16 :goto_17

    .line 139
    :cond_35
    :goto_14
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->E:Lcom/android/tools/r8/internal/ic0;

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_15
    if-eqz v2, :cond_39

    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v14

    .line 140
    iget-object v14, v2, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    move-object/from16 v22, v13

    iget v13, v2, Lcom/android/tools/r8/internal/ic0;->e:I

    move-object/from16 v23, v10

    const/4 v10, 0x0

    invoke-static {v14, v10, v13}, Lcom/android/tools/r8/internal/K4;->a(Lcom/android/tools/r8/internal/jr0;II)I

    move-result v13

    add-int/lit8 v13, v13, 0x6

    .line 141
    iget-object v10, v2, Lcom/android/tools/r8/internal/ic0;->f:Lcom/android/tools/r8/internal/S2;

    iget-object v14, v2, Lcom/android/tools/r8/internal/ic0;->g:Lcom/android/tools/r8/internal/S2;

    move-object/from16 v24, v11

    iget-object v11, v2, Lcom/android/tools/r8/internal/ic0;->h:Lcom/android/tools/r8/internal/S2;

    move-object/from16 v25, v12

    iget-object v12, v2, Lcom/android/tools/r8/internal/ic0;->i:Lcom/android/tools/r8/internal/S2;

    .line 142
    invoke-static {v10, v14, v11, v12}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;)I

    move-result v10

    add-int/2addr v10, v13

    .line 143
    iget-object v11, v2, Lcom/android/tools/r8/internal/ic0;->j:Lcom/android/tools/r8/internal/K4;

    if-eqz v11, :cond_38

    .line 144
    iget-object v12, v2, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    .line 145
    iget-object v13, v12, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    const/4 v13, 0x0

    :goto_16
    if-eqz v11, :cond_37

    .line 146
    iget-object v14, v11, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 147
    iget-object v14, v11, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    if-nez v14, :cond_36

    .line 148
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/K4;->a()Lcom/android/tools/r8/internal/p8;

    move-result-object v14

    iput-object v14, v11, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 149
    :cond_36
    iget-object v14, v11, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 150
    iget v14, v14, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v14, v14, 0x6

    add-int/2addr v13, v14

    .line 151
    iget-object v11, v11, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_16

    :cond_37
    add-int/2addr v10, v13

    :cond_38
    add-int/2addr v7, v10

    .line 152
    iget-object v2, v2, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    check-cast v2, Lcom/android/tools/r8/internal/ic0;

    move/from16 v14, v20

    move-object/from16 v13, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    goto :goto_15

    :cond_39
    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v22, v13

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v7, 0x8

    add-int/2addr v1, v2

    .line 153
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v10, "Record"

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 154
    :goto_17
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    if-eqz v2, :cond_3d

    const/4 v10, 0x0

    :goto_18
    if-eqz v2, :cond_3a

    add-int/lit8 v10, v10, 0x1

    .line 155
    iget-object v2, v2, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_18

    :cond_3a
    add-int/2addr v3, v10

    .line 156
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    iget-object v10, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    iget-object v11, v10, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    const/4 v11, 0x0

    :goto_19
    if-eqz v2, :cond_3c

    .line 158
    iget-object v12, v2, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    .line 159
    iget-object v12, v2, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    if-nez v12, :cond_3b

    .line 160
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/K4;->a()Lcom/android/tools/r8/internal/p8;

    move-result-object v12

    iput-object v12, v2, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 161
    :cond_3b
    iget-object v12, v2, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 162
    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v12, v12, 0x6

    add-int/2addr v11, v12

    .line 163
    iget-object v2, v2, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_19

    :cond_3c
    add-int/2addr v1, v11

    .line 164
    :cond_3d
    iget-object v2, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 165
    iget-object v10, v2, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    .line 166
    iget v10, v10, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v1, v10

    .line 167
    iget v2, v2, Lcom/android/tools/r8/internal/jr0;->f:I

    const v10, 0xffff

    if-gt v2, v10, :cond_8f

    .line 168
    new-instance v2, Lcom/android/tools/r8/internal/p8;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/p8;-><init>(I)V

    const v1, -0x35014542    # -8346975.0f

    .line 169
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v10, v0, Lcom/android/tools/r8/internal/he;->c:I

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 170
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 171
    iget v10, v1, Lcom/android/tools/r8/internal/jr0;->f:I

    .line 172
    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v10

    iget-object v1, v1, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    iget-object v11, v1, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v1, v1, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v1}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 173
    iget v1, v0, Lcom/android/tools/r8/internal/he;->c:I

    const v10, 0xffff

    and-int/2addr v1, v10

    const/16 v10, 0x31

    if-ge v1, v10, :cond_3e

    const/16 v1, 0x1000

    goto :goto_1a

    :cond_3e
    const/4 v1, 0x0

    .line 174
    :goto_1a
    iget v10, v0, Lcom/android/tools/r8/internal/he;->e:I

    not-int v1, v1

    and-int/2addr v1, v10

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v10, v0, Lcom/android/tools/r8/internal/he;->f:I

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v10, v0, Lcom/android/tools/r8/internal/he;->g:I

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 175
    iget v1, v0, Lcom/android/tools/r8/internal/he;->h:I

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    const/4 v1, 0x0

    .line 176
    :goto_1b
    iget v10, v0, Lcom/android/tools/r8/internal/he;->h:I

    if-ge v1, v10, :cond_3f

    .line 177
    iget-object v10, v0, Lcom/android/tools/r8/internal/he;->i:[I

    aget v10, v10, v1

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 178
    :cond_3f
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 179
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->j:Lcom/android/tools/r8/internal/Vw;

    :goto_1c
    if-eqz v1, :cond_4f

    .line 180
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    .line 181
    iget v5, v5, Lcom/android/tools/r8/internal/jr0;->b:I

    const/16 v10, 0x31

    if-ge v5, v10, :cond_40

    const/4 v5, 0x1

    goto :goto_1d

    :cond_40
    const/4 v5, 0x0

    :goto_1d
    if-eqz v5, :cond_41

    const/16 v10, 0x1000

    goto :goto_1e

    :cond_41
    const/4 v10, 0x0

    .line 182
    :goto_1e
    iget v11, v1, Lcom/android/tools/r8/internal/Vw;->d:I

    not-int v10, v10

    and-int/2addr v10, v11

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v10

    iget v11, v1, Lcom/android/tools/r8/internal/Vw;->e:I

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v10

    iget v11, v1, Lcom/android/tools/r8/internal/Vw;->f:I

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 183
    iget v10, v1, Lcom/android/tools/r8/internal/Vw;->h:I

    if-eqz v10, :cond_42

    const/4 v10, 0x1

    goto :goto_1f

    :cond_42
    const/4 v10, 0x0

    .line 184
    :goto_1f
    iget v11, v1, Lcom/android/tools/r8/internal/Vw;->d:I

    and-int/lit16 v12, v11, 0x1000

    if-eqz v12, :cond_43

    if-eqz v5, :cond_43

    add-int/lit8 v10, v10, 0x1

    .line 185
    :cond_43
    iget v5, v1, Lcom/android/tools/r8/internal/Vw;->g:I

    if-eqz v5, :cond_44

    add-int/lit8 v10, v10, 0x1

    :cond_44
    const/high16 v5, 0x20000

    and-int/2addr v11, v5

    if-eqz v11, :cond_45

    add-int/lit8 v10, v10, 0x1

    .line 186
    :cond_45
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->i:Lcom/android/tools/r8/internal/S2;

    if-eqz v5, :cond_46

    add-int/lit8 v10, v10, 0x1

    .line 187
    :cond_46
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->j:Lcom/android/tools/r8/internal/S2;

    if-eqz v5, :cond_47

    add-int/lit8 v10, v10, 0x1

    .line 188
    :cond_47
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->k:Lcom/android/tools/r8/internal/S2;

    if-eqz v5, :cond_48

    add-int/lit8 v10, v10, 0x1

    .line 189
    :cond_48
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->l:Lcom/android/tools/r8/internal/S2;

    if-eqz v5, :cond_49

    add-int/lit8 v10, v10, 0x1

    .line 190
    :cond_49
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->m:Lcom/android/tools/r8/internal/K4;

    if-eqz v5, :cond_4b

    const/4 v11, 0x0

    :goto_20
    if-eqz v5, :cond_4a

    add-int/lit8 v11, v11, 0x1

    .line 191
    iget-object v5, v5, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_20

    :cond_4a
    add-int/2addr v10, v11

    .line 192
    :cond_4b
    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 193
    iget v5, v1, Lcom/android/tools/r8/internal/Vw;->h:I

    if-eqz v5, :cond_4c

    .line 194
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    .line 195
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v5

    const/4 v10, 0x2

    .line 196
    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v5

    iget v10, v1, Lcom/android/tools/r8/internal/Vw;->h:I

    .line 197
    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 198
    :cond_4c
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    iget v10, v1, Lcom/android/tools/r8/internal/Vw;->d:I

    iget v11, v1, Lcom/android/tools/r8/internal/Vw;->g:I

    invoke-static {v5, v10, v11, v2}, Lcom/android/tools/r8/internal/K4;->a(Lcom/android/tools/r8/internal/jr0;IILcom/android/tools/r8/internal/p8;)V

    .line 199
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    iget-object v10, v1, Lcom/android/tools/r8/internal/Vw;->i:Lcom/android/tools/r8/internal/S2;

    iget-object v11, v1, Lcom/android/tools/r8/internal/Vw;->j:Lcom/android/tools/r8/internal/S2;

    iget-object v12, v1, Lcom/android/tools/r8/internal/Vw;->k:Lcom/android/tools/r8/internal/S2;

    iget-object v13, v1, Lcom/android/tools/r8/internal/Vw;->l:Lcom/android/tools/r8/internal/S2;

    move-object/from16 v26, v5

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v2

    invoke-static/range {v26 .. v31}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/p8;)V

    .line 200
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vw;->m:Lcom/android/tools/r8/internal/K4;

    if-eqz v5, :cond_4e

    .line 201
    iget-object v10, v1, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    .line 202
    iget-object v11, v10, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    :goto_21
    if-eqz v5, :cond_4e

    .line 203
    iget-object v11, v5, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    if-nez v11, :cond_4d

    .line 204
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/K4;->a()Lcom/android/tools/r8/internal/p8;

    move-result-object v11

    iput-object v11, v5, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 205
    :cond_4d
    iget-object v11, v5, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 206
    iget-object v12, v5, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v12

    iget v13, v11, Lcom/android/tools/r8/internal/p8;->b:I

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 207
    iget-object v12, v11, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v11, v11, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13, v11}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 208
    iget-object v5, v5, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_21

    .line 209
    :cond_4e
    iget-object v1, v1, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    check-cast v1, Lcom/android/tools/r8/internal/Vw;

    goto/16 :goto_1c

    .line 210
    :cond_4f
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 211
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->l:Lcom/android/tools/r8/internal/EX;

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_22
    if-eqz v1, :cond_7c

    .line 212
    iget v6, v1, Lcom/android/tools/r8/internal/EX;->t:I

    if-lez v6, :cond_50

    const/4 v6, 0x1

    goto :goto_23

    :cond_50
    const/4 v6, 0x0

    :goto_23
    or-int/2addr v5, v6

    .line 213
    iget-boolean v6, v1, Lcom/android/tools/r8/internal/EX;->X:Z

    or-int/2addr v10, v6

    .line 214
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 215
    iget v6, v6, Lcom/android/tools/r8/internal/jr0;->b:I

    const/16 v9, 0x31

    if-ge v6, v9, :cond_51

    const/4 v6, 0x1

    goto :goto_24

    :cond_51
    const/4 v6, 0x0

    :goto_24
    if-eqz v6, :cond_52

    const/16 v9, 0x1000

    goto :goto_25

    :cond_52
    const/4 v9, 0x0

    .line 216
    :goto_25
    iget v11, v1, Lcom/android/tools/r8/internal/EX;->d:I

    not-int v9, v9

    and-int/2addr v9, v11

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v9

    iget v11, v1, Lcom/android/tools/r8/internal/EX;->e:I

    invoke-virtual {v9, v11}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v9

    iget v11, v1, Lcom/android/tools/r8/internal/EX;->g:I

    invoke-virtual {v9, v11}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 217
    iget-object v9, v1, Lcom/android/tools/r8/internal/EX;->k:Lcom/android/tools/r8/internal/p8;

    iget v9, v9, Lcom/android/tools/r8/internal/p8;->b:I

    if-lez v9, :cond_53

    const/4 v9, 0x1

    goto :goto_26

    :cond_53
    const/4 v9, 0x0

    .line 218
    :goto_26
    iget v11, v1, Lcom/android/tools/r8/internal/EX;->x:I

    if-lez v11, :cond_54

    add-int/lit8 v9, v9, 0x1

    .line 219
    :cond_54
    iget v11, v1, Lcom/android/tools/r8/internal/EX;->d:I

    and-int/lit16 v12, v11, 0x1000

    if-eqz v12, :cond_55

    if-eqz v6, :cond_55

    add-int/lit8 v9, v9, 0x1

    .line 220
    :cond_55
    iget v6, v1, Lcom/android/tools/r8/internal/EX;->z:I

    if-eqz v6, :cond_56

    add-int/lit8 v9, v9, 0x1

    :cond_56
    const/high16 v6, 0x20000

    and-int/2addr v11, v6

    if-eqz v11, :cond_57

    add-int/lit8 v9, v9, 0x1

    .line 221
    :cond_57
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->A:Lcom/android/tools/r8/internal/S2;

    if-eqz v6, :cond_58

    add-int/lit8 v9, v9, 0x1

    .line 222
    :cond_58
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->B:Lcom/android/tools/r8/internal/S2;

    if-eqz v6, :cond_59

    add-int/lit8 v9, v9, 0x1

    .line 223
    :cond_59
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->D:[Lcom/android/tools/r8/internal/S2;

    if-eqz v6, :cond_5a

    add-int/lit8 v9, v9, 0x1

    .line 224
    :cond_5a
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->F:[Lcom/android/tools/r8/internal/S2;

    if-eqz v6, :cond_5b

    add-int/lit8 v9, v9, 0x1

    .line 225
    :cond_5b
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->G:Lcom/android/tools/r8/internal/S2;

    if-eqz v6, :cond_5c

    add-int/lit8 v9, v9, 0x1

    .line 226
    :cond_5c
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->H:Lcom/android/tools/r8/internal/S2;

    if-eqz v6, :cond_5d

    add-int/lit8 v9, v9, 0x1

    .line 227
    :cond_5d
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->I:Lcom/android/tools/r8/internal/p8;

    if-eqz v6, :cond_5e

    add-int/lit8 v9, v9, 0x1

    .line 228
    :cond_5e
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->K:Lcom/android/tools/r8/internal/p8;

    if-eqz v6, :cond_5f

    add-int/lit8 v9, v9, 0x1

    .line 229
    :cond_5f
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->L:Lcom/android/tools/r8/internal/K4;

    if-eqz v6, :cond_61

    const/4 v11, 0x0

    :goto_27
    if-eqz v6, :cond_60

    add-int/lit8 v11, v11, 0x1

    .line 230
    iget-object v6, v6, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_27

    :cond_60
    add-int/2addr v9, v11

    .line 231
    :cond_61
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 232
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->k:Lcom/android/tools/r8/internal/p8;

    iget v6, v6, Lcom/android/tools/r8/internal/p8;->b:I

    if-lez v6, :cond_71

    add-int/lit8 v6, v6, 0xa

    .line 233
    iget-object v9, v1, Lcom/android/tools/r8/internal/EX;->l:Lcom/android/tools/r8/internal/Rz;

    const/4 v11, 0x0

    :goto_28
    if-eqz v9, :cond_62

    add-int/lit8 v11, v11, 0x1

    .line 234
    iget-object v9, v9, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    goto :goto_28

    :cond_62
    mul-int/lit8 v11, v11, 0x8

    const/4 v9, 0x2

    add-int/2addr v11, v9

    add-int/2addr v11, v6

    .line 235
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->u:Lcom/android/tools/r8/internal/p8;

    if-eqz v6, :cond_63

    .line 236
    iget v6, v6, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v9, 0x8

    add-int/2addr v6, v9

    add-int/2addr v11, v6

    const/4 v6, 0x1

    goto :goto_29

    :cond_63
    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 237
    :goto_29
    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->o:Lcom/android/tools/r8/internal/p8;

    if-eqz v12, :cond_64

    .line 238
    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v12, v9

    add-int/2addr v11, v12

    add-int/lit8 v6, v6, 0x1

    .line 239
    :cond_64
    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->q:Lcom/android/tools/r8/internal/p8;

    if-eqz v12, :cond_65

    .line 240
    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v12, v9

    add-int/2addr v11, v12

    add-int/lit8 v6, v6, 0x1

    .line 241
    :cond_65
    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->s:Lcom/android/tools/r8/internal/p8;

    if-eqz v12, :cond_66

    .line 242
    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v12, v9

    add-int/2addr v11, v12

    add-int/lit8 v6, v6, 0x1

    .line 243
    :cond_66
    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->v:Lcom/android/tools/r8/internal/S2;

    if-eqz v12, :cond_67

    .line 244
    invoke-virtual {v12, v8}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v6, v6, 0x1

    .line 245
    :cond_67
    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->w:Lcom/android/tools/r8/internal/S2;

    if-eqz v12, :cond_68

    .line 246
    invoke-virtual {v12, v15}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v6, v6, 0x1

    .line 247
    :cond_68
    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 248
    invoke-virtual {v12, v4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v12

    .line 249
    invoke-virtual {v12, v11}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v11

    iget v12, v1, Lcom/android/tools/r8/internal/EX;->i:I

    .line 250
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v11

    iget v12, v1, Lcom/android/tools/r8/internal/EX;->j:I

    .line 251
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v11

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->k:Lcom/android/tools/r8/internal/p8;

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    .line 252
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v11

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->k:Lcom/android/tools/r8/internal/p8;

    iget-object v13, v12, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v9, 0x0

    .line 253
    invoke-virtual {v11, v13, v9, v12}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 254
    iget-object v9, v1, Lcom/android/tools/r8/internal/EX;->l:Lcom/android/tools/r8/internal/Rz;

    move-object v12, v9

    const/4 v11, 0x0

    :goto_2a
    if-eqz v12, :cond_69

    add-int/lit8 v11, v11, 0x1

    .line 255
    iget-object v12, v12, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    goto :goto_2a

    .line 256
    :cond_69
    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    :goto_2b
    if-eqz v9, :cond_6a

    .line 257
    iget-object v11, v9, Lcom/android/tools/r8/internal/Rz;->a:Lcom/android/tools/r8/internal/XQ;

    iget v11, v11, Lcom/android/tools/r8/internal/XQ;->e:I

    .line 258
    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v11

    iget-object v12, v9, Lcom/android/tools/r8/internal/Rz;->b:Lcom/android/tools/r8/internal/XQ;

    iget v12, v12, Lcom/android/tools/r8/internal/XQ;->e:I

    .line 259
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v11

    iget-object v12, v9, Lcom/android/tools/r8/internal/Rz;->c:Lcom/android/tools/r8/internal/XQ;

    iget v12, v12, Lcom/android/tools/r8/internal/XQ;->e:I

    .line 260
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v11

    iget v12, v9, Lcom/android/tools/r8/internal/Rz;->d:I

    .line 261
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 262
    iget-object v9, v9, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    goto :goto_2b

    .line 263
    :cond_6a
    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 264
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->u:Lcom/android/tools/r8/internal/p8;

    if-eqz v6, :cond_6c

    .line 265
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 266
    iget v9, v6, Lcom/android/tools/r8/internal/jr0;->b:I

    const/16 v11, 0x32

    if-lt v9, v11, :cond_6b

    move-object/from16 v9, v21

    goto :goto_2c

    :cond_6b
    move-object/from16 v9, v19

    .line 267
    :goto_2c
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v6

    .line 268
    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget-object v9, v1, Lcom/android/tools/r8/internal/EX;->u:Lcom/android/tools/r8/internal/p8;

    iget v9, v9, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v12, 0x2

    add-int/2addr v9, v12

    .line 269
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget v9, v1, Lcom/android/tools/r8/internal/EX;->t:I

    .line 270
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget-object v9, v1, Lcom/android/tools/r8/internal/EX;->u:Lcom/android/tools/r8/internal/p8;

    iget-object v12, v9, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v9, v9, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v13, 0x0

    .line 271
    invoke-virtual {v6, v12, v13, v9}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    goto :goto_2d

    :cond_6c
    const/16 v11, 0x32

    .line 272
    :goto_2d
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->o:Lcom/android/tools/r8/internal/p8;

    if-eqz v6, :cond_6d

    .line 273
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    move-object/from16 v9, v25

    .line 274
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->o:Lcom/android/tools/r8/internal/p8;

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v13, 0x2

    add-int/2addr v12, v13

    .line 275
    invoke-virtual {v6, v12}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget v12, v1, Lcom/android/tools/r8/internal/EX;->n:I

    .line 276
    invoke-virtual {v6, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->o:Lcom/android/tools/r8/internal/p8;

    iget-object v13, v12, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v11, 0x0

    .line 277
    invoke-virtual {v6, v13, v11, v12}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    goto :goto_2e

    :cond_6d
    move-object/from16 v9, v25

    .line 278
    :goto_2e
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->q:Lcom/android/tools/r8/internal/p8;

    if-eqz v6, :cond_6e

    .line 279
    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    move-object/from16 v11, v24

    .line 280
    invoke-virtual {v6, v11}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->q:Lcom/android/tools/r8/internal/p8;

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v13, 0x2

    add-int/2addr v12, v13

    .line 281
    invoke-virtual {v6, v12}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget v12, v1, Lcom/android/tools/r8/internal/EX;->p:I

    .line 282
    invoke-virtual {v6, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->q:Lcom/android/tools/r8/internal/p8;

    iget-object v13, v12, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    move-object/from16 v20, v4

    const/4 v4, 0x0

    .line 283
    invoke-virtual {v6, v13, v4, v12}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    goto :goto_2f

    :cond_6e
    move-object/from16 v20, v4

    move-object/from16 v11, v24

    .line 284
    :goto_2f
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->s:Lcom/android/tools/r8/internal/p8;

    if-eqz v4, :cond_6f

    .line 285
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    move-object/from16 v6, v23

    .line 286
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->s:Lcom/android/tools/r8/internal/p8;

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v13, 0x2

    add-int/2addr v12, v13

    .line 287
    invoke-virtual {v4, v12}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget v12, v1, Lcom/android/tools/r8/internal/EX;->r:I

    .line 288
    invoke-virtual {v4, v12}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->s:Lcom/android/tools/r8/internal/p8;

    iget-object v13, v12, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    move/from16 v23, v5

    const/4 v5, 0x0

    .line 289
    invoke-virtual {v4, v13, v5, v12}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    goto :goto_30

    :cond_6f
    move-object/from16 v6, v23

    move/from16 v23, v5

    .line 290
    :goto_30
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->v:Lcom/android/tools/r8/internal/S2;

    if-eqz v4, :cond_70

    .line 291
    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 292
    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v5

    .line 293
    invoke-virtual {v4, v5, v2}, Lcom/android/tools/r8/internal/S2;->a(ILcom/android/tools/r8/internal/p8;)V

    .line 294
    :cond_70
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->w:Lcom/android/tools/r8/internal/S2;

    if-eqz v4, :cond_72

    .line 295
    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 296
    invoke-virtual {v5, v15}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v5

    .line 297
    invoke-virtual {v4, v5, v2}, Lcom/android/tools/r8/internal/S2;->a(ILcom/android/tools/r8/internal/p8;)V

    goto :goto_31

    :cond_71
    move-object/from16 v20, v4

    move-object/from16 v6, v23

    move-object/from16 v11, v24

    move-object/from16 v9, v25

    move/from16 v23, v5

    .line 298
    :cond_72
    :goto_31
    iget v4, v1, Lcom/android/tools/r8/internal/EX;->x:I

    if-lez v4, :cond_73

    .line 299
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 300
    const-string v5, "Exceptions"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget v5, v1, Lcom/android/tools/r8/internal/EX;->x:I

    const/4 v12, 0x2

    mul-int/2addr v5, v12

    add-int/2addr v5, v12

    .line 301
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget v5, v1, Lcom/android/tools/r8/internal/EX;->x:I

    .line 302
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 303
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->y:[I

    array-length v5, v4

    const/4 v12, 0x0

    :goto_32
    if-ge v12, v5, :cond_73

    aget v13, v4, v12

    .line 304
    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v12, v12, 0x1

    goto :goto_32

    .line 305
    :cond_73
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    iget v5, v1, Lcom/android/tools/r8/internal/EX;->d:I

    iget v12, v1, Lcom/android/tools/r8/internal/EX;->z:I

    invoke-static {v4, v5, v12, v2}, Lcom/android/tools/r8/internal/K4;->a(Lcom/android/tools/r8/internal/jr0;IILcom/android/tools/r8/internal/p8;)V

    .line 306
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->A:Lcom/android/tools/r8/internal/S2;

    iget-object v12, v1, Lcom/android/tools/r8/internal/EX;->B:Lcom/android/tools/r8/internal/S2;

    iget-object v13, v1, Lcom/android/tools/r8/internal/EX;->G:Lcom/android/tools/r8/internal/S2;

    move-object/from16 v24, v6

    iget-object v6, v1, Lcom/android/tools/r8/internal/EX;->H:Lcom/android/tools/r8/internal/S2;

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v6

    move-object/from16 v31, v2

    invoke-static/range {v26 .. v31}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/p8;)V

    .line 307
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->D:[Lcom/android/tools/r8/internal/S2;

    if-eqz v4, :cond_75

    .line 308
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 309
    const-string v5, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->D:[Lcom/android/tools/r8/internal/S2;

    .line 310
    iget v6, v1, Lcom/android/tools/r8/internal/EX;->C:I

    if-nez v6, :cond_74

    .line 311
    array-length v6, v5

    .line 312
    :cond_74
    invoke-static {v4, v5, v6, v2}, Lcom/android/tools/r8/internal/S2;->a(I[Lcom/android/tools/r8/internal/S2;ILcom/android/tools/r8/internal/p8;)V

    .line 313
    :cond_75
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->F:[Lcom/android/tools/r8/internal/S2;

    if-eqz v4, :cond_77

    .line 314
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 315
    const-string v5, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->F:[Lcom/android/tools/r8/internal/S2;

    .line 316
    iget v6, v1, Lcom/android/tools/r8/internal/EX;->E:I

    if-nez v6, :cond_76

    .line 317
    array-length v6, v5

    .line 318
    :cond_76
    invoke-static {v4, v5, v6, v2}, Lcom/android/tools/r8/internal/S2;->a(I[Lcom/android/tools/r8/internal/S2;ILcom/android/tools/r8/internal/p8;)V

    .line 319
    :cond_77
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->I:Lcom/android/tools/r8/internal/p8;

    if-eqz v4, :cond_78

    .line 320
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 321
    const-string v5, "AnnotationDefault"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->I:Lcom/android/tools/r8/internal/p8;

    iget v5, v5, Lcom/android/tools/r8/internal/p8;->b:I

    .line 322
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->I:Lcom/android/tools/r8/internal/p8;

    iget-object v6, v5, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v5, v5, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v12, 0x0

    .line 323
    invoke-virtual {v4, v6, v12, v5}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 324
    :cond_78
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->K:Lcom/android/tools/r8/internal/p8;

    if-eqz v4, :cond_79

    .line 325
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 326
    const-string v5, "MethodParameters"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->K:Lcom/android/tools/r8/internal/p8;

    iget v5, v5, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 327
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget v5, v1, Lcom/android/tools/r8/internal/EX;->J:I

    .line 328
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/p8;->b(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->K:Lcom/android/tools/r8/internal/p8;

    iget-object v12, v5, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v5, v5, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v13, 0x0

    .line 329
    invoke-virtual {v4, v12, v13, v5}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    goto :goto_33

    :cond_79
    const/4 v6, 0x1

    .line 330
    :goto_33
    iget-object v4, v1, Lcom/android/tools/r8/internal/EX;->L:Lcom/android/tools/r8/internal/K4;

    if-eqz v4, :cond_7b

    .line 331
    iget-object v5, v1, Lcom/android/tools/r8/internal/EX;->c:Lcom/android/tools/r8/internal/jr0;

    .line 332
    iget-object v12, v5, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    :goto_34
    if-eqz v4, :cond_7b

    .line 333
    iget-object v12, v4, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    if-nez v12, :cond_7a

    .line 334
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/K4;->a()Lcom/android/tools/r8/internal/p8;

    move-result-object v12

    iput-object v12, v4, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 335
    :cond_7a
    iget-object v12, v4, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 336
    iget-object v13, v4, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v5, v13}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v13

    iget v6, v12, Lcom/android/tools/r8/internal/p8;->b:I

    invoke-virtual {v13, v6}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 337
    iget-object v6, v12, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v12, v12, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v13, 0x0

    invoke-virtual {v2, v6, v13, v12}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 338
    iget-object v4, v4, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    const/4 v6, 0x1

    goto :goto_34

    .line 339
    :cond_7b
    iget-object v1, v1, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    check-cast v1, Lcom/android/tools/r8/internal/EX;

    move-object/from16 v25, v9

    move-object/from16 v4, v20

    move/from16 v5, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v11

    goto/16 :goto_22

    .line 340
    :cond_7c
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 341
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    if-eqz v1, :cond_7d

    .line 342
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 343
    const-string v3, "InnerClasses"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    .line 344
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v3, v0, Lcom/android/tools/r8/internal/he;->n:I

    .line 345
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->o:Lcom/android/tools/r8/internal/p8;

    iget-object v4, v3, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v6, 0x0

    .line 346
    invoke-virtual {v1, v4, v6, v3}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 347
    :cond_7d
    iget v1, v0, Lcom/android/tools/r8/internal/he;->p:I

    if-eqz v1, :cond_7e

    .line 348
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 349
    const-string v3, "EnclosingMethod"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    const/4 v3, 0x4

    .line 350
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v3, v0, Lcom/android/tools/r8/internal/he;->p:I

    .line 351
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v3, v0, Lcom/android/tools/r8/internal/he;->q:I

    .line 352
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 353
    :cond_7e
    iget v1, v0, Lcom/android/tools/r8/internal/he;->e:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_7f

    iget v1, v0, Lcom/android/tools/r8/internal/he;->c:I

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v3, 0x31

    if-ge v1, v3, :cond_7f

    .line 354
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v3, "Synthetic"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 355
    :cond_7f
    iget v1, v0, Lcom/android/tools/r8/internal/he;->r:I

    if-eqz v1, :cond_80

    .line 356
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 357
    const-string v3, "Signature"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    const/4 v3, 0x2

    .line 358
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v4, v0, Lcom/android/tools/r8/internal/he;->r:I

    .line 359
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    goto :goto_35

    :cond_80
    const/4 v3, 0x2

    .line 360
    :goto_35
    iget v1, v0, Lcom/android/tools/r8/internal/he;->s:I

    if-eqz v1, :cond_81

    .line 361
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 362
    const-string v4, "SourceFile"

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    .line 363
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v3, v0, Lcom/android/tools/r8/internal/he;->s:I

    .line 364
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 365
    :cond_81
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->t:Lcom/android/tools/r8/internal/p8;

    if-eqz v1, :cond_82

    .line 366
    iget v1, v1, Lcom/android/tools/r8/internal/p8;->b:I

    .line 367
    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 368
    const-string v4, "SourceDebugExtension"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    .line 369
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/internal/he;->t:Lcom/android/tools/r8/internal/p8;

    iget-object v4, v4, Lcom/android/tools/r8/internal/p8;->a:[B

    const/4 v6, 0x0

    .line 370
    invoke-virtual {v3, v4, v6, v1}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    goto :goto_36

    :cond_82
    const/4 v6, 0x0

    .line 371
    :goto_36
    iget v1, v0, Lcom/android/tools/r8/internal/he;->e:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_83

    .line 372
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const-string v3, "Deprecated"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 373
    :cond_83
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->u:Lcom/android/tools/r8/internal/S2;

    iget-object v4, v0, Lcom/android/tools/r8/internal/he;->v:Lcom/android/tools/r8/internal/S2;

    iget-object v6, v0, Lcom/android/tools/r8/internal/he;->w:Lcom/android/tools/r8/internal/S2;

    iget-object v8, v0, Lcom/android/tools/r8/internal/he;->x:Lcom/android/tools/r8/internal/S2;

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v2

    invoke-static/range {v26 .. v31}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/p8;)V

    .line 374
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 375
    iget-object v3, v1, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    if-eqz v3, :cond_84

    move-object/from16 v3, v22

    .line 376
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v6, 0x2

    add-int/2addr v4, v6

    .line 377
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/jr0;->h:I

    .line 378
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    iget-object v4, v1, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v1, v1, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v6, 0x0

    .line 379
    invoke-virtual {v3, v4, v6, v1}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 380
    :cond_84
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->y:Lcom/android/tools/r8/internal/UX;

    if-eqz v1, :cond_86

    .line 381
    iget-object v3, v1, Lcom/android/tools/r8/internal/UX;->g:Lcom/android/tools/r8/internal/p8;

    .line 382
    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    const/16 v4, 0x10

    add-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->i:Lcom/android/tools/r8/internal/p8;

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->k:Lcom/android/tools/r8/internal/p8;

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->m:Lcom/android/tools/r8/internal/p8;

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->o:Lcom/android/tools/r8/internal/p8;

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v3, v4

    .line 383
    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    .line 384
    const-string v6, "Module"

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    .line 385
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->c:I

    .line 386
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->d:I

    .line 387
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->e:I

    .line 388
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->f:I

    .line 389
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->g:Lcom/android/tools/r8/internal/p8;

    iget-object v6, v4, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v8, 0x0

    .line 390
    invoke-virtual {v3, v6, v8, v4}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->h:I

    .line 391
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->i:Lcom/android/tools/r8/internal/p8;

    iget-object v6, v4, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    .line 392
    invoke-virtual {v3, v6, v8, v4}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->j:I

    .line 393
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->k:Lcom/android/tools/r8/internal/p8;

    iget-object v6, v4, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    .line 394
    invoke-virtual {v3, v6, v8, v4}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->l:I

    .line 395
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->m:Lcom/android/tools/r8/internal/p8;

    iget-object v6, v4, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    .line 396
    invoke-virtual {v3, v6, v8, v4}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->n:I

    .line 397
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->o:Lcom/android/tools/r8/internal/p8;

    iget-object v6, v4, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    .line 398
    invoke-virtual {v3, v6, v8, v4}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 399
    iget v3, v1, Lcom/android/tools/r8/internal/UX;->p:I

    if-lez v3, :cond_85

    .line 400
    iget-object v3, v1, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    .line 401
    const-string v4, "ModulePackages"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->q:Lcom/android/tools/r8/internal/p8;

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v6, 0x2

    add-int/2addr v4, v6

    .line 402
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v4, v1, Lcom/android/tools/r8/internal/UX;->p:I

    .line 403
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/internal/UX;->q:Lcom/android/tools/r8/internal/p8;

    iget-object v6, v4, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v8, 0x0

    .line 404
    invoke-virtual {v3, v6, v8, v4}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 405
    :cond_85
    iget v3, v1, Lcom/android/tools/r8/internal/UX;->r:I

    if-lez v3, :cond_86

    .line 406
    iget-object v3, v1, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    .line 407
    const-string v4, "ModuleMainClass"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    const/4 v4, 0x2

    .line 408
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iget v1, v1, Lcom/android/tools/r8/internal/UX;->r:I

    .line 409
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 410
    :cond_86
    iget v1, v0, Lcom/android/tools/r8/internal/he;->z:I

    if-eqz v1, :cond_87

    .line 411
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 412
    const-string v3, "NestHost"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    const/4 v3, 0x2

    .line 413
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v3, v0, Lcom/android/tools/r8/internal/he;->z:I

    .line 414
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 415
    :cond_87
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->B:Lcom/android/tools/r8/internal/p8;

    if-eqz v1, :cond_88

    .line 416
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 417
    const-string v3, "NestMembers"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->B:Lcom/android/tools/r8/internal/p8;

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    .line 418
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v3, v0, Lcom/android/tools/r8/internal/he;->A:I

    .line 419
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->B:Lcom/android/tools/r8/internal/p8;

    iget-object v4, v3, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v6, 0x0

    .line 420
    invoke-virtual {v1, v4, v6, v3}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 421
    :cond_88
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->D:Lcom/android/tools/r8/internal/p8;

    if-eqz v1, :cond_89

    .line 422
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 423
    const-string v3, "PermittedSubclasses"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->D:Lcom/android/tools/r8/internal/p8;

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    .line 424
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget v3, v0, Lcom/android/tools/r8/internal/he;->C:I

    .line 425
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->D:Lcom/android/tools/r8/internal/p8;

    iget-object v4, v3, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v6, 0x0

    .line 426
    invoke-virtual {v1, v4, v6, v3}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 427
    :cond_89
    iget v1, v0, Lcom/android/tools/r8/internal/he;->e:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-nez v1, :cond_8a

    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->E:Lcom/android/tools/r8/internal/ic0;

    if-eqz v1, :cond_8b

    .line 428
    :cond_8a
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 429
    const-string v3, "Record"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    const/4 v3, 0x2

    add-int/2addr v7, v3

    .line 430
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    .line 431
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 432
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->E:Lcom/android/tools/r8/internal/ic0;

    :goto_37
    if-eqz v1, :cond_8b

    .line 433
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ic0;->a(Lcom/android/tools/r8/internal/p8;)V

    .line 434
    iget-object v1, v1, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    check-cast v1, Lcom/android/tools/r8/internal/ic0;

    goto :goto_37

    .line 435
    :cond_8b
    iget-object v1, v0, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    if-eqz v1, :cond_8d

    .line 436
    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 437
    iget-object v4, v3, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    :goto_38
    if-eqz v1, :cond_8d

    .line 438
    iget-object v4, v1, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    if-nez v4, :cond_8c

    .line 439
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/K4;->a()Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iput-object v4, v1, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 440
    :cond_8c
    iget-object v4, v1, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 441
    iget-object v6, v1, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v6

    iget v7, v4, Lcom/android/tools/r8/internal/p8;->b:I

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 442
    iget-object v6, v4, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v4, v4, Lcom/android/tools/r8/internal/p8;->b:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v4}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 443
    iget-object v1, v1, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_38

    :cond_8d
    if-eqz v10, :cond_8e

    .line 444
    iget-object v1, v2, Lcom/android/tools/r8/internal/p8;->a:[B

    invoke-virtual {v0, v1, v5}, Lcom/android/tools/r8/internal/he;->a([BZ)[B

    move-result-object v1

    return-object v1

    .line 445
    :cond_8e
    iget-object v1, v2, Lcom/android/tools/r8/internal/p8;->a:[B

    return-object v1

    .line 446
    :cond_8f
    new-instance v1, Lcom/android/tools/r8/internal/ae;

    iget-object v3, v0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    .line 447
    iget-object v3, v3, Lcom/android/tools/r8/internal/jr0;->c:Ljava/lang/String;

    .line 448
    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/ae;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->D:Lcom/android/tools/r8/internal/p8;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/p8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/he;->D:Lcom/android/tools/r8/internal/p8;

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/he;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/he;->C:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/he;->D:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    return-void
.end method
