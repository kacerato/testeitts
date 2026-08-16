.class public final Lcom/android/tools/r8/internal/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/on0;


# static fields
.field public static final synthetic v:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/VA;

.field public b:Z

.field public final c:Z

.field public d:I

.field public e:Lcom/android/tools/r8/internal/WX;

.field public final f:Lcom/android/tools/r8/internal/ub;

.field public final g:Ljava/util/List;

.field public final h:Lcom/android/tools/r8/graph/G;

.field public final i:Lcom/android/tools/r8/graph/H5;

.field public final j:Lcom/android/tools/r8/graph/y;

.field public final k:Lcom/android/tools/r8/internal/qd0;

.field public l:Lcom/android/tools/r8/internal/gb;

.field public m:Lcom/android/tools/r8/internal/fb;

.field public n:I

.field public o:I

.field public p:Z

.field public q:Lcom/android/tools/r8/internal/Q;

.field public r:Lcom/android/tools/r8/internal/SG;

.field public final s:Lcom/android/tools/r8/internal/dH;

.field public final t:Lcom/android/tools/r8/internal/J8;

.field public final u:Lcom/android/tools/r8/internal/uJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/G;Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/y;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/hb;->b:Z

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/tools/r8/internal/hb;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/hb;->e:Lcom/android/tools/r8/internal/WX;

    new-instance v1, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    new-instance v1, Lcom/android/tools/r8/internal/dH;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/hb;->s:Lcom/android/tools/r8/internal/dH;

    iput-object p1, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hb;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    iput-object p5, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    move p2, v0

    move v3, p2

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    instance-of v2, v1, Lcom/android/tools/r8/internal/ka;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    move-object v4, v1

    check-cast v4, Lcom/android/tools/r8/internal/ka;

    invoke-virtual {v2, p2, v4}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    :cond_0
    instance-of v1, v1, Lcom/android/tools/r8/internal/Ma;

    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/android/tools/r8/internal/ub;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/ub;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    new-instance p2, Lcom/android/tools/r8/internal/J8;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->H0()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    move-object v1, p2

    move-object v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/J8;-><init>(Lcom/android/tools/r8/internal/B60;ILcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/B60;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/hb;->t:Lcom/android/tools/r8/internal/J8;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/hb;->u:Lcom/android/tools/r8/internal/uJ;

    iget-object p2, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->o1()Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/android/tools/r8/internal/uJ;->d:Lcom/android/tools/r8/internal/uJ;

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/hb;->c:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W9;)Z
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->S()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->D()Lcom/android/tools/r8/internal/ka;

    move-result-object v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Bb;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/android/tools/r8/internal/Cb;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/W9;)Z
    .locals 0

    .line 71
    instance-of p0, p0, Lcom/android/tools/r8/internal/Ma;

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/B60;
    .locals 0

    .line 22
    check-cast p0, Lcom/android/tools/r8/internal/Ma;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/aB;)I
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 30
    sget-boolean v1, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 32
    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    .line 33
    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->u:Lcom/android/tools/r8/internal/uJ;

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->z()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/hb;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/gb;

    move-result-object v1

    .line 38
    sget-boolean v5, Lcom/android/tools/r8/internal/gb;->e:Z

    if-nez v5, :cond_3

    .line 39
    iget-object v5, v1, Lcom/android/tools/r8/internal/gb;->c:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    iget-object v6, v1, Lcom/android/tools/r8/internal/gb;->d:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_3
    :goto_1
    iget-object v5, v1, Lcom/android/tools/r8/internal/gb;->c:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 43
    iget v2, v1, Lcom/android/tools/r8/internal/gb;->a:I

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/aB;->f(I)Lcom/android/tools/r8/internal/VA;

    .line 44
    new-instance v2, Lcom/android/tools/r8/internal/dI;

    const/16 v5, 0x10

    .line 45
    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 46
    iget-object v1, v1, Lcom/android/tools/r8/internal/gb;->d:Lcom/android/tools/r8/internal/CH;

    .line 47
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/CH;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v1

    .line 48
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Lcom/android/tools/r8/internal/X;

    .line 49
    invoke-interface {v5}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v5

    .line 50
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 51
    invoke-virtual {p2, p1, v5, v3}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    goto :goto_2

    .line 52
    :cond_5
    instance-of v0, v0, Lcom/android/tools/r8/internal/Cb;

    if-nez v0, :cond_7

    add-int/lit8 v0, p1, 0x1

    .line 53
    invoke-virtual {p2, p1, v0, v4}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    return p1

    .line 54
    :cond_6
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/hb;->b:Z

    instance-of v0, v0, Lcom/android/tools/r8/internal/Cb;

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/hb;->b:Z

    if-eqz v0, :cond_8

    :cond_7
    return p1

    :cond_8
    return v2

    .line 55
    :cond_9
    invoke-static {v0}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/W9;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hb;->i(I)[I

    move-result-object v1

    array-length v2, v1

    :goto_3
    if-ge v3, v2, :cond_a

    aget v5, v1, v3

    .line 57
    invoke-virtual {p2, p1, v5, v4}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 58
    :cond_a
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/hb;->b:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->S()Z

    move-result v0

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/hb;->b:Z

    return p1

    :cond_b
    return v2
.end method

.method public final a(Lcom/android/tools/r8/internal/ka;)I
    .locals 1

    .line 206
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 207
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(IILcom/android/tools/r8/internal/f60$a;)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 234
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    .line 235
    sget-boolean v2, Lcom/android/tools/r8/graph/G;->n:Z

    if-nez v2, :cond_1

    iget v2, v0, Lcom/android/tools/r8/graph/G;->k:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 236
    :cond_1
    :goto_0
    iget v0, v0, Lcom/android/tools/r8/graph/G;->k:I

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 237
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 238
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    .line 239
    sget-boolean v2, Lcom/android/tools/r8/graph/G;->n:Z

    if-nez v2, :cond_5

    iget v2, v0, Lcom/android/tools/r8/graph/G;->k:I

    if-eq v2, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 240
    :cond_5
    :goto_2
    iget v0, v0, Lcom/android/tools/r8/graph/G;->k:I

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    const/4 v3, 0x3

    if-eq v0, v3, :cond_10

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    goto/16 :goto_5

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->s:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/sb;

    if-nez v0, :cond_7

    .line 242
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    .line 243
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p3, Lcom/android/tools/r8/graph/H;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find stack map for block at offset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". This is most likely due to invalid stack maps in input."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/android/tools/r8/graph/H;-><init>(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-object v2

    :cond_7
    const v3, 0x186a0

    if-lt p1, v3, :cond_8

    .line 245
    invoke-static {p1}, Lcom/android/tools/r8/internal/ob;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/sb;->b(I)Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    goto :goto_3

    .line 246
    :cond_8
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_d

    .line 247
    sget-object v0, Lcom/android/tools/r8/internal/f60$a;->c:Lcom/android/tools/r8/internal/f60$a;

    if-ne p3, v0, :cond_c

    .line 248
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j0;

    if-eqz p2, :cond_9

    .line 249
    iget-object p1, p2, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 250
    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object p3, p0, Lcom/android/tools/r8/internal/hb;->g:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/G$a;

    .line 252
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G$a;->b()I

    move-result v3

    if-ne v3, p1, :cond_a

    .line 253
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 254
    :cond_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_c

    const/4 p1, 0x0

    .line 255
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/G$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G$a;->c()Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    return-object p1

    :cond_c
    return-object v2

    .line 256
    :cond_d
    iget-object p1, v0, Lcom/android/tools/r8/internal/ob;->d:Lcom/android/tools/r8/internal/rb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    instance-of p1, p1, Lcom/android/tools/r8/internal/qb;

    if-eqz p1, :cond_e

    .line 258
    iget-object p1, v0, Lcom/android/tools/r8/internal/ob;->c:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 259
    :cond_e
    iget-object p1, v0, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 260
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 261
    :cond_f
    iget-object p1, v0, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->d()Lcom/android/tools/r8/internal/D70;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    :cond_10
    :goto_5
    return-object v2

    .line 262
    :cond_11
    throw v2
.end method

.method public final a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 209
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->G()Lcom/android/tools/r8/internal/m10;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    sget-object p1, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 213
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 214
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->b()Lcom/android/tools/r8/internal/DD;

    move-result-object p1

    .line 215
    iget-object p1, p1, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 216
    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->l()Lcom/android/tools/r8/internal/Jm0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/O5;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 219
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v0, :cond_6

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 220
    :cond_6
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Gx0;->J()Lcom/android/tools/r8/internal/Gx0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/O5;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 221
    :cond_7
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 222
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->H()Lcom/android/tools/r8/internal/ka;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/ka;)I

    move-result p1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 223
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 224
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 225
    instance-of v1, v0, Lcom/android/tools/r8/internal/ka;

    if-nez v1, :cond_8

    instance-of v1, v0, Lcom/android/tools/r8/internal/G9;

    if-nez v1, :cond_8

    instance-of v1, v0, Lcom/android/tools/r8/internal/Ma;

    if-nez v1, :cond_8

    .line 226
    sget-boolean v1, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v1, :cond_a

    instance-of v0, v0, Lcom/android/tools/r8/internal/wa;

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 227
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W9;

    .line 228
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/android/tools/r8/internal/wa;

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 229
    :cond_c
    :goto_3
    check-cast p1, Lcom/android/tools/r8/internal/wa;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 230
    :cond_d
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 231
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 232
    :cond_e
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v0, :cond_10

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(II)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 233
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j0;

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/B60;
    .locals 3

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 270
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->t:Lcom/android/tools/r8/internal/J8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    .line 271
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    new-instance v1, Lcom/android/tools/r8/internal/Lc1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Lc1;-><init>(Lcom/android/tools/r8/internal/hb;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    .line 272
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 273
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/J8;->a(ZLjava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    add-int/lit8 v0, p1, 0x1

    .line 274
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 276
    instance-of v2, v1, Lcom/android/tools/r8/internal/ka;

    if-nez v2, :cond_2

    instance-of v1, v1, Lcom/android/tools/r8/internal/G9;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_2
    if-ltz p1, :cond_4

    .line 277
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/tools/r8/internal/Ma;

    if-nez v0, :cond_4

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    if-gez p1, :cond_5

    .line 278
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->t:Lcom/android/tools/r8/internal/J8;

    .line 279
    iget-object p1, p1, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    return-object p1

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ma;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->t:Lcom/android/tools/r8/internal/J8;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/J8;->b(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/gb;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 59
    iget-object v3, v0, Lcom/android/tools/r8/internal/hb;->l:Lcom/android/tools/r8/internal/gb;

    if-eqz v3, :cond_0

    .line 60
    iget v4, v3, Lcom/android/tools/r8/internal/gb;->a:I

    if-gt v4, v1, :cond_0

    .line 61
    iget v3, v3, Lcom/android/tools/r8/internal/gb;->b:I

    if-ge v1, v3, :cond_0

    goto/16 :goto_3

    .line 62
    :cond_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    .line 63
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    iget-boolean v5, v0, Lcom/android/tools/r8/internal/hb;->c:Z

    .line 64
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v7, Lcom/android/tools/r8/internal/CH;

    const/16 v8, 0x10

    .line 66
    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 67
    new-instance v8, Lcom/android/tools/r8/internal/Td0;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/Td0;-><init>()V

    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v11, v9

    move v12, v11

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Db;

    .line 69
    iget-object v14, v13, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {v4, v14}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v14

    .line 70
    iget-object v15, v13, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {v4, v15}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v15

    if-le v14, v1, :cond_2

    .line 71
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    :cond_2
    if-lt v1, v15, :cond_3

    .line 72
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 74
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v14, v9

    .line 75
    :goto_1
    iget-object v15, v13, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_6

    if-nez v12, :cond_6

    .line 76
    iget-object v15, v13, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/M2;

    .line 77
    invoke-virtual {v8, v15}, Lcom/android/tools/r8/internal/Td0;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 78
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v12, v13, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 80
    iget-object v12, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    if-ne v15, v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    move v12, v9

    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    if-eqz v12, :cond_1

    :cond_7
    if-eqz v5, :cond_8

    if-nez v12, :cond_8

    .line 81
    iget-object v1, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x2

    .line 82
    invoke-virtual {v7, v1}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 83
    :cond_8
    new-instance v1, Lcom/android/tools/r8/internal/gb;

    invoke-direct {v1, v11, v10, v6, v7}, Lcom/android/tools/r8/internal/gb;-><init>(IILjava/util/ArrayList;Lcom/android/tools/r8/internal/CH;)V

    .line 84
    iput-object v1, v0, Lcom/android/tools/r8/internal/hb;->l:Lcom/android/tools/r8/internal/gb;

    .line 85
    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/hb;->l:Lcom/android/tools/r8/internal/gb;

    return-object v1
.end method

.method public final a(IIILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(IILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/sb;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->s:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/sb;

    .line 202
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    .line 203
    sget-boolean v2, Lcom/android/tools/r8/internal/ub;->c:Z

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sb;->a()Lcom/android/tools/r8/internal/lb;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/sb;->a()Lcom/android/tools/r8/internal/lb;

    move-result-object p2

    invoke-static {v2, p2, v1}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/lb;Lcom/android/tools/r8/internal/lb;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/lb;

    move-result-object p2

    :goto_1
    if-eq p2, v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->s:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/G9;)V
    .locals 8

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/tools/r8/internal/jG;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    new-array v0, v0, [Lcom/android/tools/r8/graph/M2;

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 6
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v3, v1, [Lcom/android/tools/r8/graph/M2;

    .line 7
    new-instance v4, Lcom/android/tools/r8/internal/Qc1;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/internal/Qc1;-><init>(Lcom/android/tools/r8/internal/hb;[Lcom/android/tools/r8/graph/M2;)V

    .line 8
    iget-object v5, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v5}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/internal/M30;->iterator()Lcom/android/tools/r8/internal/v30;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/EF;

    .line 9
    invoke-interface {v6}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/jy;

    invoke-interface {v4, v7, v6}, Lcom/android/tools/r8/internal/ZH;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 11
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/S60;

    add-int/lit8 v5, v2, 0x1

    .line 12
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    aput-object v4, v3, v2

    move v2, v5

    goto :goto_2

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    iget v2, p0, Lcom/android/tools/r8/internal/hb;->n:I

    .line 14
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/hb;->a(I)Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 15
    sget-boolean v4, Lcom/android/tools/r8/internal/ub;->c:Z

    if-nez v4, :cond_4

    .line 16
    iget-object v4, p1, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/sb;->d()I

    move-result v4

    if-ne v4, v1, :cond_3

    goto :goto_3

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :cond_5
    :goto_3
    new-instance v1, Lcom/android/tools/r8/internal/lb;

    invoke-direct {v1, v0, v3, v2}, Lcom/android/tools/r8/internal/lb;-><init>([Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/B60;)V

    .line 21
    iput-object v1, p1, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 22
    sget-boolean p1, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->s:Lcom/android/tools/r8/internal/dH;

    iget v0, p0, Lcom/android/tools/r8/internal/hb;->o:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_7
    :goto_4
    iget p1, p0, Lcom/android/tools/r8/internal/hb;->o:I

    :goto_5
    iget v0, p0, Lcom/android/tools/r8/internal/hb;->n:I

    if-ge p1, v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    instance-of v2, v0, Lcom/android/tools/r8/internal/Ma;

    if-nez v2, :cond_9

    .line 27
    instance-of v0, v0, Lcom/android/tools/r8/internal/ka;

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    return-void

    :cond_9
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 28
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->s:Lcom/android/tools/r8/internal/dH;

    iget v0, p0, Lcom/android/tools/r8/internal/hb;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 6

    .line 174
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hb;->c:Z

    if-eqz v0, :cond_4

    .line 175
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/tools/r8/internal/hb;->d:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    .line 176
    iput v2, p0, Lcom/android/tools/r8/internal/hb;->d:I

    .line 177
    new-instance v2, Lcom/android/tools/r8/internal/WX;

    sget-object v3, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->e:Lcom/android/tools/r8/internal/WX;

    .line 178
    iget-object v4, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 179
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 180
    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    if-nez v0, :cond_3

    .line 181
    iget p1, p0, Lcom/android/tools/r8/internal/hb;->d:I

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 182
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/tools/r8/internal/hb;->d:I

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IIZ)V
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_c

    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    if-ne p3, v0, :cond_1

    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    if-eqz p4, :cond_2

    move v1, p3

    goto :goto_1

    :cond_2
    move v1, p2

    .line 184
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/hb;->a(I)Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    sget-boolean v2, Lcom/android/tools/r8/internal/ub;->c:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 187
    :cond_4
    :goto_2
    iput-object v1, v0, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    .line 188
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    .line 189
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    if-nez p4, :cond_6

    .line 190
    invoke-interface {v0}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/RG;

    .line 191
    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    invoke-interface {p3, v3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 192
    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/j0;)V

    goto :goto_3

    .line 193
    :cond_6
    invoke-interface {p3}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/RG;

    .line 194
    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 195
    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/graph/j0;)V

    goto :goto_4

    .line 196
    :cond_8
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/hb;->b:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/tools/r8/internal/M9;

    if-eqz p2, :cond_c

    .line 197
    sget-boolean p2, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez p2, :cond_a

    if-nez p4, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 198
    :cond_a
    :goto_5
    invoke-interface {v0}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object p2

    :cond_b
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/RG;

    .line 199
    invoke-interface {p4}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 200
    invoke-interface {p4}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v0

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {p1, v0, p4}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/j0;)V

    goto :goto_6

    :cond_c
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IZ)V
    .locals 9

    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_e

    .line 86
    :goto_0
    sget-boolean p3, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez p3, :cond_2

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/hb;->c:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 87
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/android/tools/r8/internal/eb;->a:Z

    if-nez v3, :cond_5

    if-ne p2, v2, :cond_3

    goto :goto_2

    :cond_3
    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-ne p2, v2, :cond_6

    const/4 v3, 0x3

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    :goto_3
    const/4 v4, 0x5

    if-nez p3, :cond_8

    .line 88
    iget v5, p0, Lcom/android/tools/r8/internal/hb;->d:I

    if-ne v5, v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 89
    :cond_8
    :goto_4
    iput v3, p0, Lcom/android/tools/r8/internal/hb;->d:I

    .line 90
    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/hb;->a(I)Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    sget-boolean v6, Lcom/android/tools/r8/internal/ub;->c:Z

    if-nez v6, :cond_a

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 92
    :cond_a
    :goto_5
    iput-object v5, v3, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    if-ne p2, v2, :cond_b

    .line 93
    new-instance p2, Lcom/android/tools/r8/internal/WX;

    sget-object v2, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->e:Lcom/android/tools/r8/internal/WX;

    .line 94
    iget-object v3, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 96
    invoke-direct {p2, v2, v1}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(I)V

    goto :goto_6

    :cond_b
    const p2, 0x186a0

    .line 98
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    .line 99
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 100
    new-instance v0, Lcom/android/tools/r8/internal/Or0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 101
    iget-object p2, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aB;->b()V

    :goto_6
    if-nez p3, :cond_d

    .line 103
    iget p1, p0, Lcom/android/tools/r8/internal/hb;->d:I

    if-eq p1, v4, :cond_c

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 104
    :cond_d
    :goto_7
    iput v4, p0, Lcom/android/tools/r8/internal/hb;->d:I

    return-void

    .line 105
    :cond_e
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 106
    iput p2, p0, Lcom/android/tools/r8/internal/hb;->n:I

    const/4 v2, 0x1

    if-eqz p3, :cond_13

    .line 107
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    .line 108
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/VA;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hb;->a:Lcom/android/tools/r8/internal/VA;

    if-nez p2, :cond_f

    if-nez p3, :cond_f

    .line 109
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    const/4 v3, -0x1

    .line 110
    invoke-virtual {p3, v3}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/VA;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hb;->a:Lcom/android/tools/r8/internal/VA;

    .line 111
    :cond_f
    iget-object p3, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->s:Lcom/android/tools/r8/internal/dH;

    .line 112
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/sb;

    if-nez p2, :cond_10

    move v4, v2

    goto :goto_8

    :cond_10
    move v4, v1

    .line 113
    :goto_8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/hb;->a(I)Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    .line 114
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    sget-boolean v6, Lcom/android/tools/r8/internal/ub;->c:Z

    if-nez v6, :cond_12

    if-eqz v4, :cond_12

    if-eqz v3, :cond_11

    goto :goto_9

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must have snapshot for method entry."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 116
    :cond_12
    :goto_9
    iput-object v3, p3, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 117
    iput-object v5, p3, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    .line 118
    iget p3, p0, Lcom/android/tools/r8/internal/hb;->n:I

    iput p3, p0, Lcom/android/tools/r8/internal/hb;->o:I

    .line 119
    :cond_13
    sget-boolean p3, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez p3, :cond_15

    iget-object p3, p0, Lcom/android/tools/r8/internal/hb;->a:Lcom/android/tools/r8/internal/VA;

    if-eqz p3, :cond_14

    goto :goto_a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 120
    :cond_15
    :goto_a
    iget p3, p0, Lcom/android/tools/r8/internal/hb;->n:I

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    .line 121
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/hb;->p:Z

    if-eqz v3, :cond_16

    .line 122
    iput-object p3, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    goto :goto_c

    .line 123
    :cond_16
    iget-object p3, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p3

    iget v3, p0, Lcom/android/tools/r8/internal/hb;->n:I

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/W9;

    .line 124
    invoke-static {p3}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/W9;)Z

    move-result p3

    if-nez p3, :cond_17

    .line 125
    iget p3, p0, Lcom/android/tools/r8/internal/hb;->n:I

    add-int/2addr p3, v2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    goto :goto_b

    .line 126
    :cond_17
    sget-object p3, Lcom/android/tools/r8/internal/yH;->a:Lcom/android/tools/r8/internal/xH;

    :goto_b
    iput-object p3, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    .line 127
    :goto_c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->z()Z

    move-result p3

    if-eqz p3, :cond_18

    .line 128
    iget-object p3, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    .line 129
    iget-object p3, p3, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 130
    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    .line 131
    new-instance v4, Lcom/android/tools/r8/internal/lb;

    .line 132
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/sb;->b()I

    move-result v5

    add-int/2addr v5, v2

    .line 133
    invoke-direct {v4, v5, v2}, Lcom/android/tools/r8/internal/lb;-><init>(II)V

    .line 134
    invoke-virtual {p3, v4}, Lcom/android/tools/r8/internal/sb;->a(Lcom/android/tools/r8/internal/lb;)V

    .line 135
    iget-object p3, v4, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    new-instance v5, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    aput-object v5, p3, v1

    .line 136
    iget-object p3, p0, Lcom/android/tools/r8/internal/hb;->a:Lcom/android/tools/r8/internal/VA;

    iget-object p3, p3, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    new-instance v3, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 138
    :goto_d
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_18

    .line 139
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result p3

    .line 140
    invoke-virtual {p0, p3, v4}, Lcom/android/tools/r8/internal/hb;->a(ILcom/android/tools/r8/internal/sb;)V

    goto :goto_d

    .line 141
    :cond_18
    iget-object p3, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    add-int/lit8 v3, p2, 0x1

    .line 142
    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_19

    .line 143
    iget-object v4, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    .line 144
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/DG;->a(I)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_e

    :cond_19
    move v2, v1

    .line 145
    :goto_e
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->S()Z

    move-result v4

    if-nez v4, :cond_1e

    instance-of v4, v0, Lcom/android/tools/r8/internal/Cb;

    if-eqz v4, :cond_1a

    goto :goto_11

    :cond_1a
    if-nez p3, :cond_24

    if-eqz v2, :cond_24

    .line 146
    sget-boolean v4, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v4, :cond_1c

    .line 147
    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    iget-object v5, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_f

    .line 148
    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 149
    :cond_1c
    :goto_f
    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v4}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v4

    :cond_1d
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/RG;

    .line 150
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j0;

    iget-object v7, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    invoke-interface {v5}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/j0;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 151
    invoke-interface {v5}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {p1, v6, v5}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/j0;)V

    goto :goto_10

    .line 152
    :cond_1e
    :goto_11
    sget-boolean v4, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v4, :cond_20

    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->a:Lcom/android/tools/r8/internal/VA;

    iget-object v4, v4, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FH;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_12

    :cond_1f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 153
    :cond_20
    :goto_12
    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->a:Lcom/android/tools/r8/internal/VA;

    iget-object v4, v4, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FH;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 154
    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/Mc1;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/Mc1;-><init>(Lcom/android/tools/r8/internal/aB;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_15

    .line 155
    :cond_21
    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    .line 156
    new-instance v4, Lcom/android/tools/r8/internal/dH;

    const/16 v5, 0x10

    .line 157
    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 158
    iget-object v5, p0, Lcom/android/tools/r8/internal/hb;->a:Lcom/android/tools/r8/internal/VA;

    iget-object v5, v5, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    new-instance v6, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 160
    :goto_13
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 161
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v5

    .line 162
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    goto :goto_13

    .line 163
    :cond_22
    iget-object v5, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v5}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v5

    :cond_23
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/RG;

    .line 164
    invoke-interface {v6}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_23

    .line 165
    invoke-interface {v6}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {p1, v7, v6}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/j0;)V

    goto :goto_14

    .line 166
    :cond_24
    :goto_15
    iget-object v4, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    invoke-virtual {v0, p1, v4, p0}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V

    if-nez v2, :cond_26

    .line 167
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    .line 168
    iget-object p1, p1, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 169
    invoke-static {v0}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/W9;)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/hb;->i(I)[I

    move-result-object p2

    array-length p3, p2

    :goto_16
    if-ge v1, p3, :cond_27

    aget v0, p2, v1

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/hb;->a(ILcom/android/tools/r8/internal/sb;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 172
    :cond_25
    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/internal/hb;->a(ILcom/android/tools/r8/internal/sb;)V

    return-void

    :cond_26
    if-nez p3, :cond_27

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hb;->c(Lcom/android/tools/r8/internal/aB;)V

    :cond_27
    return-void
.end method

.method public final synthetic a([Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/jy;)V
    .locals 0

    .line 208
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    aput-object p3, p1, p2

    return-void
.end method

.method public final a()Z
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    .line 266
    sget-boolean v1, Lcom/android/tools/r8/graph/G;->n:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 267
    iget v1, v0, Lcom/android/tools/r8/graph/G;->k:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 269
    :cond_1
    :goto_0
    iget v0, v0, Lcom/android/tools/r8/graph/G;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/android/tools/r8/internal/aB;)V
    .locals 10

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hb;->p:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/hb;->p:Z

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->t:Lcom/android/tools/r8/internal/J8;

    .line 5
    iget-object v2, v2, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v3, Lcom/android/tools/r8/internal/lb;

    const/4 v4, 0x0

    .line 8
    invoke-direct {v3, v4, v4}, Lcom/android/tools/r8/internal/lb;-><init>(II)V

    .line 9
    iput-object v3, v1, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 10
    iput-object v2, v1, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    .line 11
    iget v1, p0, Lcom/android/tools/r8/internal/hb;->n:I

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    iput-object v1, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    .line 12
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/hb;->p:Z

    if-eqz v2, :cond_2

    .line 13
    iput-object v1, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    goto :goto_2

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/internal/hb;->n:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 15
    invoke-static {v1}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/W9;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 16
    iget v1, p0, Lcom/android/tools/r8/internal/hb;->n:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    goto :goto_1

    .line 17
    :cond_3
    sget-object v1, Lcom/android/tools/r8/internal/yH;->a:Lcom/android/tools/r8/internal/xH;

    :goto_1
    iput-object v1, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    .line 18
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/Pc1;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Pc1;-><init>(Lcom/android/tools/r8/internal/ub;)V

    invoke-virtual {p1, v4, v1, v3}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/j1;Ljava/util/function/BiConsumer;)V

    .line 20
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/hb;->h(I)Lcom/android/tools/r8/internal/fb;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    xor-int/2addr v2, v0

    .line 24
    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 25
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v5, v3

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    add-int/lit8 v8, v2, 0x1

    .line 26
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->J0()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v2, v8

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x2

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 27
    :cond_6
    invoke-interface {v1}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v1

    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/RG;

    .line 28
    invoke-interface {v3}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v5

    if-gt v2, v5, :cond_7

    .line 29
    invoke-interface {v3}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {p1, v5, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/graph/j0;)V

    goto :goto_6

    .line 30
    :cond_8
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/hb;->c:Z

    if-eqz v1, :cond_10

    .line 31
    sget-boolean v2, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_7
    const/4 v1, 0x5

    if-nez v2, :cond_c

    .line 32
    iget v3, p0, Lcom/android/tools/r8/internal/hb;->d:I

    if-ne v3, v1, :cond_b

    goto :goto_8

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_c
    :goto_8
    iput v0, p0, Lcom/android/tools/r8/internal/hb;->d:I

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 35
    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->i:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 36
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 37
    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v5, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object v3

    .line 39
    iget v3, v3, Lcom/android/tools/r8/internal/ob;->a:I

    .line 40
    iget-object v5, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    .line 41
    invoke-virtual {p1, v3, v0}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/M2;)V

    goto :goto_9

    .line 42
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 44
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    .line 45
    iget v3, v0, Lcom/android/tools/r8/internal/ob;->a:I

    .line 46
    :goto_9
    sget-object v0, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    .line 47
    sget-object v5, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p1, v3, v5}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 48
    new-instance v5, Lcom/android/tools/r8/internal/WX;

    invoke-direct {v5, v0, v3}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    .line 49
    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 50
    iput-object v5, p0, Lcom/android/tools/r8/internal/hb;->e:Lcom/android/tools/r8/internal/WX;

    if-nez v2, :cond_f

    .line 51
    iget v0, p0, Lcom/android/tools/r8/internal/hb;->d:I

    if-eq v0, v1, :cond_e

    goto :goto_a

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_f
    :goto_a
    iput v1, p0, Lcom/android/tools/r8/internal/hb;->d:I

    .line 53
    :cond_10
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/hb;->a(I)Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    .line 55
    iget-object v1, v1, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 58
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    sget-boolean v2, Lcom/android/tools/r8/internal/ub;->c:Z

    if-nez v2, :cond_12

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_12
    :goto_b
    iput-object v0, v1, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    .line 62
    iget-object v0, v0, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;)V

    .line 64
    :cond_13
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    .line 65
    iget-object p1, p1, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 66
    invoke-virtual {p0, v4, p1}, Lcom/android/tools/r8/internal/hb;->a(ILcom/android/tools/r8/internal/sb;)V

    .line 67
    iput-boolean v4, p0, Lcom/android/tools/r8/internal/hb;->p:Z

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/android/tools/r8/internal/hb;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hb;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/hb;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final c(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/aB;)V
    .locals 5

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/RG;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    .line 9
    iget-object v2, v2, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 10
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 11
    iget-object v3, v2, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j0;

    iget-object v4, v4, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/IJ;

    iget-object v0, v2, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 13
    sget-object v2, Lcom/android/tools/r8/internal/db;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 15
    :cond_3
    const-string v0, "double"

    goto :goto_2

    .line 16
    :cond_4
    const-string v0, "long"

    goto :goto_2

    .line 17
    :cond_5
    const-string v0, "float"

    goto :goto_2

    .line 18
    :cond_6
    const-string v0, "int"

    goto :goto_2

    .line 19
    :cond_7
    const-string v0, "reference"

    .line 20
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to define local of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " as "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/IJ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/graph/j0;)V

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final d(I)Lcom/android/tools/r8/graph/j0;
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/hb;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hb;->p:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hb;->e(I)Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/hb;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/W9;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Outgoing local is undefined for control-flow instructions"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->r:Lcom/android/tools/r8/internal/SG;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j0;

    return-object p1
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(I)Lcom/android/tools/r8/graph/j0;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/hb;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->q:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j0;

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/internal/N8;
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hb;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/hb;->d:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/hb;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/gb;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/hb;->n:I

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->j:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/hb;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/gb;

    move-result-object v0

    .line 9
    :goto_0
    sget-boolean v2, Lcom/android/tools/r8/internal/gb;->e:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/tools/r8/internal/gb;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/gb;->d:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/gb;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    .line 11
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/N8;

    iget-object v2, v0, Lcom/android/tools/r8/internal/gb;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gb;->d:Lcom/android/tools/r8/internal/CH;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final f()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    const p1, 0x186a0

    return p1
.end method

.method public final g(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final g()Lcom/android/tools/r8/internal/B60;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->f:Lcom/android/tools/r8/internal/ub;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method

.method public final h(I)Lcom/android/tools/r8/internal/fb;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->m:Lcom/android/tools/r8/internal/fb;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Lcom/android/tools/r8/internal/fb;->a:I

    if-gt v1, p1, :cond_0

    .line 3
    iget v0, v0, Lcom/android/tools/r8/internal/fb;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/G$a;

    .line 6
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G$a;->d()Lcom/android/tools/r8/internal/ka;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v6

    .line 7
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G$a;->a()Lcom/android/tools/r8/internal/ka;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v7

    if-le v6, p1, :cond_1

    .line 8
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_1
    if-lt p1, v7, :cond_2

    .line 9
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 10
    new-instance v4, Lcom/android/tools/r8/internal/dH;

    const/16 v8, 0x10

    .line 11
    invoke-direct {v4, v8}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 12
    :cond_3
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 13
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 14
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G$a;->b()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G$a;->c()Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/fb;

    if-nez v4, :cond_5

    .line 16
    sget-object v4, Lcom/android/tools/r8/internal/yH;->a:Lcom/android/tools/r8/internal/xH;

    :cond_5
    invoke-direct {p1, v2, v3, v4}, Lcom/android/tools/r8/internal/fb;-><init>(IILcom/android/tools/r8/internal/SG;)V

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/internal/hb;->m:Lcom/android/tools/r8/internal/fb;

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/hb;->m:Lcom/android/tools/r8/internal/fb;

    return-object p1
.end method

.method public final synthetic h()Ljava/lang/Iterable;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Nc1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Nc1;-><init>()V

    .line 21
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Oc1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Oc1;-><init>()V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 23
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final i(I)[I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/hb;->h:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    sget-boolean v1, Lcom/android/tools/r8/internal/hb;->v:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/W9;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->D()Lcom/android/tools/r8/internal/ka;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->S()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_a

    instance-of v3, v0, Lcom/android/tools/r8/internal/Cb;

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    if-nez v1, :cond_4

    instance-of v3, v0, Lcom/android/tools/r8/internal/Bb;

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTargets(): Non-control flow instruction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    instance-of v3, v0, Lcom/android/tools/r8/internal/Bb;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/android/tools/r8/internal/Bb;

    iget-object p1, v0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v2

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v2, p0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Bb;->d:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v0

    aput v0, v1, p1

    return-object v1

    :cond_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/hb;->k:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v2

    instance-of v3, v0, Lcom/android/tools/r8/internal/M9;

    if-eqz v3, :cond_7

    filled-new-array {v2}, [I

    move-result-object p1

    return-object p1

    :cond_7
    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->G()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_3
    add-int/lit8 p1, p1, 0x1

    filled-new-array {v2, p1}, [I

    move-result-object p1

    return-object p1

    :cond_a
    :goto_4
    if-nez v1, :cond_c

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_5
    new-array p1, v4, [I

    return-object p1
.end method
