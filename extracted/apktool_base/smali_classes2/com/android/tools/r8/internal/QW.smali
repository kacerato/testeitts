.class public Lcom/android/tools/r8/internal/QW;
.super Lcom/android/tools/r8/internal/DX;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/lang/Object;

.field public m:I

.field public n:[Ljava/util/List;

.field public o:I

.field public p:[Ljava/util/List;

.field public q:Lcom/android/tools/r8/internal/OD;

.field public r:Ljava/util/List;

.field public s:I

.field public t:I

.field public u:Ljava/util/List;

.field public v:Ljava/util/List;

.field public w:Ljava/util/List;

.field public x:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/DX;-><init>(ILcom/android/tools/r8/internal/DX;)V

    iput p2, p0, Lcom/android/tools/r8/internal/QW;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/QW;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/QW;->e:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    and-int/lit16 p1, p2, 0x400

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->u:Ljava/util/List;

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    new-instance p1, Lcom/android/tools/r8/internal/OD;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/OD;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    return-void
.end method

.method public static a([Lcom/android/tools/r8/internal/XQ;)[Lcom/android/tools/r8/internal/YQ;
    .locals 4

    .line 68
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/internal/YQ;

    .line 69
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 70
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/XQ;->a:Lcom/android/tools/r8/internal/YQ;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/YQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/YQ;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/XQ;->a:Lcom/android/tools/r8/internal/YQ;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/XQ;->a:Lcom/android/tools/r8/internal/YQ;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/J2;

    new-instance v1, Lcom/android/tools/r8/internal/PW;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/PW;-><init>(Lcom/android/tools/r8/internal/QW;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/J2;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    .line 48
    iget-object v0, v0, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    .line 49
    :goto_0
    iget v1, v0, Lcom/android/tools/r8/internal/H;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 50
    iget-object v0, v0, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/mu0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/mu0;-><init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 52
    iget-object p1, v0, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    .line 53
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    return-object v1

    .line 54
    :cond_1
    iget-object p1, v0, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    .line 55
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    return-object v1
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 8

    .line 62
    new-instance v7, Lcom/android/tools/r8/internal/RT;

    .line 63
    invoke-static {p3}, Lcom/android/tools/r8/internal/QW;->a([Lcom/android/tools/r8/internal/XQ;)[Lcom/android/tools/r8/internal/YQ;

    move-result-object v3

    invoke-static {p4}, Lcom/android/tools/r8/internal/QW;->a([Lcom/android/tools/r8/internal/XQ;)[Lcom/android/tools/r8/internal/YQ;

    move-result-object v4

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/RT;-><init>(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/YQ;[Lcom/android/tools/r8/internal/YQ;[ILjava/lang/String;)V

    if-eqz p7, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->v:Ljava/util/List;

    .line 65
    invoke-static {p1, v7}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->v:Ljava/util/List;

    return-object v7

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->w:Ljava/util/List;

    .line 67
    invoke-static {p1, v7}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->w:Ljava/util/List;

    return-object v7
.end method

.method public final a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/J2;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/J2;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 8
    iget-object p2, p0, Lcom/android/tools/r8/internal/QW;->n:[Ljava/util/List;

    if-nez p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/tools/r8/internal/QW;->e:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;)I

    move-result p2

    .line 10
    new-array p2, p2, [Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/QW;->n:[Ljava/util/List;

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/QW;->n:[Ljava/util/List;

    aget-object p3, p2, p1

    .line 12
    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    aput-object p3, p2, p1

    return-object v0

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/QW;->p:[Ljava/util/List;

    if-nez p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/android/tools/r8/internal/QW;->e:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;)I

    move-result p2

    .line 15
    new-array p2, p2, [Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/QW;->p:[Ljava/util/List;

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/QW;->p:[Ljava/util/List;

    aget-object p3, p2, p1

    .line 17
    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    aput-object p3, p2, p1

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/J2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/J2;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->g:Ljava/util/List;

    return-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->h:Ljava/util/List;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/PD;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/PD;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/PB;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/PB;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final varargs a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/wr0;

    invoke-static {p3}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p3

    invoke-static {p4}, Lcom/android/tools/r8/internal/QW;->a([Lcom/android/tools/r8/internal/XQ;)[Lcom/android/tools/r8/internal/YQ;

    move-result-object p4

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/wr0;-><init>(IILcom/android/tools/r8/internal/YQ;[Lcom/android/tools/r8/internal/YQ;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 9

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v7, Lcom/android/tools/r8/internal/hy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_0

    move-object v4, v2

    goto :goto_1

    .line 20
    :cond_0
    array-length v3, p3

    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    array-length v4, p3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    .line 22
    aget-object v6, p3, v5

    .line 23
    instance-of v8, v6, Lcom/android/tools/r8/internal/XQ;

    if-eqz v8, :cond_1

    .line 24
    check-cast v6, Lcom/android/tools/r8/internal/XQ;

    invoke-static {v6}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v6

    .line 25
    :cond_1
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_1
    if-nez p5, :cond_3

    move-object v6, v2

    goto :goto_3

    .line 26
    :cond_3
    array-length p3, p5

    new-array p3, p3, [Ljava/lang/Object;

    .line 27
    array-length v2, p5

    :goto_2
    if-ge v1, v2, :cond_5

    .line 28
    aget-object v3, p5, v1

    .line 29
    instance-of v5, v3, Lcom/android/tools/r8/internal/XQ;

    if-eqz v5, :cond_4

    .line 30
    check-cast v3, Lcom/android/tools/r8/internal/XQ;

    invoke-static {v3}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v3

    .line 31
    :cond_4
    aput-object v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move-object v6, p3

    :goto_3
    move-object v1, v7

    move v2, p1

    move v3, p2

    move v5, p4

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/hy;-><init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public a(ILcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/rL;

    invoke-static {p2}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/rL;-><init>(ILcom/android/tools/r8/internal/YQ;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/hY;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/hY;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/fw;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/fw;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 37
    invoke-super/range {p0 .. p5}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    and-int/lit16 v2, p1, -0x101

    .line 38
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v0, Lcom/android/tools/r8/internal/KW;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/KW;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 5
    iput p1, p0, Lcom/android/tools/r8/internal/QW;->m:I

    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/tools/r8/internal/QW;->o:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 12

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/tools/r8/internal/QW;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/q50;

    .line 74
    iget-object v4, v3, Lcom/android/tools/r8/internal/q50;->a:Ljava/lang/String;

    .line 75
    iget v3, v3, Lcom/android/tools/r8/internal/q50;->b:I

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/internal/DX;->b(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->l:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DX;->a()Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    .line 78
    iget-object v3, p0, Lcom/android/tools/r8/internal/QW;->l:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q2;->a()V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->g:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_2

    .line 82
    iget-object v5, p0, Lcom/android/tools/r8/internal/QW;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/J2;

    .line 83
    iget-object v6, v5, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-virtual {p1, v6, v3}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_3

    .line 86
    iget-object v5, p0, Lcom/android/tools/r8/internal/QW;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/J2;

    .line 87
    iget-object v6, v5, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-virtual {p1, v6, v1}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->i:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v1

    :goto_3
    if-ge v4, v0, :cond_4

    .line 90
    iget-object v5, p0, Lcom/android/tools/r8/internal/QW;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/mu0;

    .line 91
    iget v6, v5, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v7, v5, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v8, v5, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v6, v7, v8, v3}, Lcom/android/tools/r8/internal/DX;->c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->j:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v1

    :goto_4
    if-ge v4, v0, :cond_5

    .line 96
    iget-object v5, p0, Lcom/android/tools/r8/internal/QW;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/mu0;

    .line 97
    iget v6, v5, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v7, v5, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v8, v5, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    .line 98
    invoke-virtual {p1, v6, v7, v8, v1}, Lcom/android/tools/r8/internal/DX;->c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 100
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/QW;->m:I

    if-lez v0, :cond_6

    .line 101
    invoke-virtual {p1, v0, v3}, Lcom/android/tools/r8/internal/DX;->a(IZ)V

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->n:[Ljava/util/List;

    if-eqz v0, :cond_9

    .line 103
    array-length v0, v0

    move v4, v1

    :goto_5
    if-ge v4, v0, :cond_9

    .line 104
    iget-object v5, p0, Lcom/android/tools/r8/internal/QW;->n:[Ljava/util/List;

    aget-object v5, v5, v4

    if-nez v5, :cond_7

    goto :goto_7

    .line 105
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_6
    if-ge v7, v6, :cond_8

    .line 106
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/J2;

    .line 107
    iget-object v9, v8, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v9, v3}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 108
    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/QW;->o:I

    if-lez v0, :cond_a

    .line 109
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/DX;->a(IZ)V

    .line 110
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->p:[Ljava/util/List;

    if-eqz v0, :cond_d

    .line 111
    array-length v0, v0

    move v4, v1

    :goto_8
    if-ge v4, v0, :cond_d

    .line 112
    iget-object v5, p0, Lcom/android/tools/r8/internal/QW;->p:[Ljava/util/List;

    aget-object v5, v5, v4

    if-nez v5, :cond_b

    goto :goto_a

    .line 113
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_9
    if-ge v7, v6, :cond_c

    .line 114
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/J2;

    .line 115
    iget-object v9, v8, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v9, v1}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 116
    :cond_d
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/QW;->x:Z

    if-eqz v0, :cond_f

    .line 117
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    .line 118
    iget-object v0, v0, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    :goto_b
    if-eqz v0, :cond_f

    .line 119
    instance-of v4, v0, Lcom/android/tools/r8/internal/YQ;

    if-eqz v4, :cond_e

    .line 120
    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/internal/YQ;

    .line 121
    iput-object v2, v4, Lcom/android/tools/r8/internal/YQ;->g:Lcom/android/tools/r8/internal/XQ;

    .line 122
    :cond_e
    iget-object v0, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    goto :goto_b

    .line 123
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->k:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_10

    .line 125
    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->k:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/K4;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/K4;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 126
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    .line 127
    iget v0, v0, Lcom/android/tools/r8/internal/OD;->b:I

    if-lez v0, :cond_18

    .line 128
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DX;->b()V

    .line 129
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_13

    .line 131
    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/pt0;

    shl-int/lit8 v5, v2, 0x8

    const/high16 v6, 0x42000000    # 32.0f

    or-int/2addr v5, v6

    .line 132
    iget-object v6, v4, Lcom/android/tools/r8/internal/pt0;->e:Ljava/util/List;

    if-eqz v6, :cond_11

    .line 133
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_e
    if-ge v7, v6, :cond_11

    .line 134
    iget-object v8, v4, Lcom/android/tools/r8/internal/pt0;->e:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/mu0;

    iput v5, v8, Lcom/android/tools/r8/internal/mu0;->d:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 135
    :cond_11
    iget-object v6, v4, Lcom/android/tools/r8/internal/pt0;->f:Ljava/util/List;

    if-eqz v6, :cond_12

    .line 136
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_f
    if-ge v7, v6, :cond_12

    .line 137
    iget-object v8, v4, Lcom/android/tools/r8/internal/pt0;->f:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/mu0;

    iput v5, v8, Lcom/android/tools/r8/internal/mu0;->d:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 138
    :cond_12
    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/pt0;

    invoke-virtual {v4, p1}, Lcom/android/tools/r8/internal/pt0;->a(Lcom/android/tools/r8/internal/DX;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 139
    :cond_13
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    .line 140
    iget-object v0, v0, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    :goto_10
    if-eqz v0, :cond_14

    .line 141
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/DX;)V

    .line 142
    iget-object v0, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    goto :goto_10

    .line 143
    :cond_14
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->u:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_15

    .line 145
    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->u:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/ST;

    .line 146
    iget-object v6, v4, Lcom/android/tools/r8/internal/ST;->a:Ljava/lang/String;

    .line 147
    iget-object v7, v4, Lcom/android/tools/r8/internal/ST;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/tools/r8/internal/ST;->c:Ljava/lang/String;

    iget-object v5, v4, Lcom/android/tools/r8/internal/ST;->d:Lcom/android/tools/r8/internal/YQ;

    .line 148
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v9

    iget-object v5, v4, Lcom/android/tools/r8/internal/ST;->e:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v10

    iget v11, v4, Lcom/android/tools/r8/internal/ST;->f:I

    move-object v5, p1

    .line 149
    invoke-virtual/range {v5 .. v11}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 150
    :cond_15
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->v:Ljava/util/List;

    if-eqz v0, :cond_16

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_16

    .line 152
    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->v:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/RT;

    invoke-virtual {v4, p1, v3}, Lcom/android/tools/r8/internal/RT;->a(Lcom/android/tools/r8/internal/DX;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 153
    :cond_16
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->w:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_17

    .line 155
    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->w:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/RT;

    invoke-virtual {v4, p1, v1}, Lcom/android/tools/r8/internal/RT;->a(Lcom/android/tools/r8/internal/DX;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 156
    :cond_17
    iget v0, p0, Lcom/android/tools/r8/internal/QW;->s:I

    iget v1, p0, Lcom/android/tools/r8/internal/QW;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/DX;->c(II)V

    .line 157
    iput-boolean v3, p0, Lcom/android/tools/r8/internal/QW;->x:Z

    .line 158
    :cond_18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DX;->c()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->k:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->k:Ljava/util/List;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-static {p1}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/android/tools/r8/internal/pt0;

    .line 57
    invoke-static {p1}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p1

    invoke-static {p2}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p2

    invoke-static {p3}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/pt0;-><init>(Lcom/android/tools/r8/internal/YQ;Lcom/android/tools/r8/internal/YQ;Lcom/android/tools/r8/internal/YQ;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/vU;

    invoke-static {p1}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p1

    invoke-static {p3}, Lcom/android/tools/r8/internal/QW;->a([Lcom/android/tools/r8/internal/XQ;)[Lcom/android/tools/r8/internal/YQ;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/vU;-><init>(Lcom/android/tools/r8/internal/YQ;[I[Lcom/android/tools/r8/internal/YQ;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/AR;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/AR;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/RJ;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/RJ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V
    .locals 8

    .line 59
    new-instance v7, Lcom/android/tools/r8/internal/ST;

    .line 60
    invoke-static {p4}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v4

    invoke-static {p5}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/ST;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/YQ;Lcom/android/tools/r8/internal/YQ;I)V

    .line 61
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->u:Ljava/util/List;

    invoke-static {p1, v7}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->u:Ljava/util/List;

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    const v1, 0xffff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/pt0;

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/mu0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/mu0;-><init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 8
    iget-object p1, v0, Lcom/android/tools/r8/internal/pt0;->e:Ljava/util/List;

    .line 9
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/pt0;->e:Ljava/util/List;

    return-object v1

    .line 10
    :cond_0
    iget-object p1, v0, Lcom/android/tools/r8/internal/pt0;->f:Ljava/util/List;

    .line 11
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/pt0;->f:Ljava/util/List;

    return-object v1
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(II)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/OH;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/OH;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/hS;

    invoke-static {p2}, Lcom/android/tools/r8/internal/QW;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/hS;-><init>(ILcom/android/tools/r8/internal/YQ;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QW;->f:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/q50;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/q50;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/mu0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/mu0;-><init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->i:Ljava/util/List;

    return-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QW;->j:Ljava/util/List;

    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(II)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/android/tools/r8/internal/QW;->s:I

    .line 7
    iput p2, p0, Lcom/android/tools/r8/internal/QW;->t:I

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/qu0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/qu0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method

.method public final d(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    new-instance v1, Lcom/android/tools/r8/internal/Sw0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Sw0;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    return-void
.end method
