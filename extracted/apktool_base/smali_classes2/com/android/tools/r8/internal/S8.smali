.class public final Lcom/android/tools/r8/internal/S8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/android/tools/r8/internal/Ib;

.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H2;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/naming/r0;

.field public final e:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    sput-object v0, Lcom/android/tools/r8/internal/S8;->f:Lcom/android/tools/r8/internal/Ib;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/S8;->a:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/S8;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/r0;->c()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/R2;
    .locals 2

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/tools/r8/graph/r0;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 240
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    if-nez p1, :cond_4

    .line 241
    iget-object p1, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 242
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    return-object p0
.end method

.method public static synthetic a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 158
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    const-string p1, "Type annotations are not placed on parameters"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/DX;ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;)[Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)I
    .locals 3

    .line 213
    sget-boolean v0, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 214
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/UV0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/UV0;-><init>(Lcom/android/tools/r8/internal/S8;)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/i6;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/i6;-><init>()V

    .line 215
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/VV0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VV0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/WV0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/WV0;-><init>(Lcom/android/tools/r8/internal/S8;)V

    .line 216
    invoke-static {v2}, Lcom/android/tools/r8/internal/nf;->a(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    .line 217
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Ib;
    .locals 3

    .line 220
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v0

    if-nez v0, :cond_5

    .line 221
    sget-boolean v0, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 222
    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 223
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    .line 225
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    .line 226
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 228
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected class file version for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 229
    sget-object p1, Lcom/android/tools/r8/internal/S8;->f:Lcom/android/tools/r8/internal/Ib;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    sget-object v1, Lcom/android/tools/r8/internal/nJ;->f2:Lcom/android/tools/r8/internal/Ib;

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/Ib;)Lcom/android/tools/r8/internal/Ib;

    move-result-object v0

    .line 231
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 232
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    .line 233
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    .line 234
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 235
    iget-object p1, p0, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    sget-object v0, Lcom/android/tools/r8/internal/nJ;->f2:Lcom/android/tools/r8/internal/Ib;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/Ib;)Lcom/android/tools/r8/internal/Ib;

    move-result-object p1

    return-object p1

    .line 236
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/S8;->f:Lcom/android/tools/r8/internal/Ib;

    return-object p1

    .line 237
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/RR;Ljava/util/Optional;Lcom/android/tools/r8/SourceFileEnvironment;)Lcom/android/tools/r8/internal/Q8;
    .locals 17

    move-object/from16 v6, p0

    .line 11
    new-instance v14, Lcom/android/tools/r8/internal/he;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/he;-><init>()V

    .line 12
    invoke-virtual/range {p2 .. p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    .line 14
    iget-object v2, v14, Lcom/android/tools/r8/internal/he;->d:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    .line 15
    sget-boolean v2, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_1
    :goto_0
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object/from16 v3, p3

    .line 18
    invoke-interface {v0, v3}, Lcom/android/tools/r8/SourceFileProvider;->get(Lcom/android/tools/r8/SourceFileEnvironment;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_1
    iget-object v3, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    .line 20
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->N5:Lcom/android/tools/r8/graph/M2;

    .line 21
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v2

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    :goto_2
    invoke-virtual {v14, v0, v3}, Lcom/android/tools/r8/internal/he;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    .line 25
    iget-object v3, v0, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    if-eqz v3, :cond_5

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->G1()Lcom/android/tools/r8/internal/Ib;

    move-result-object v3

    goto :goto_3

    .line 27
    :cond_5
    sget-object v3, Lcom/android/tools/r8/internal/S8;->f:Lcom/android/tools/r8/internal/Ib;

    .line 28
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 29
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Ib;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ib;

    goto :goto_4

    .line 30
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 31
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Ib;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ib;

    goto :goto_5

    .line 32
    :cond_7
    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->R()V

    goto :goto_6

    .line 34
    :cond_8
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v0

    if-nez v0, :cond_9

    .line 35
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    const/16 v4, 0x20

    .line 36
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/g;->a(I)V

    .line 37
    :cond_9
    :goto_6
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->c:Lcom/android/tools/r8/graph/u1;

    const-string v5, "/package-info;"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iget-object v4, v4, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/L2;->a([B)Z

    move-result v0

    if-nez v0, :cond_b

    .line 40
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->H0:Z

    if-eqz v0, :cond_a

    goto :goto_7

    .line 41
    :cond_a
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->D()I

    move-result v0

    goto :goto_8

    .line 42
    :cond_b
    :goto_7
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 43
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 44
    :goto_8
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    .line 45
    iget-boolean v5, v4, Lcom/android/tools/r8/graph/H2;->w:Z

    if-eqz v5, :cond_c

    const/high16 v5, 0x20000

    or-int/2addr v0, v5

    :cond_c
    move v9, v0

    .line 46
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v15

    .line 47
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v10

    .line 48
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    new-instance v5, Lcom/android/tools/r8/internal/RV0;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/RV0;-><init>(Lcom/android/tools/r8/internal/S8;)V

    .line 49
    invoke-interface {v0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v11, v2

    goto :goto_9

    .line 50
    :cond_d
    new-instance v7, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v7, v4, v5}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    .line 51
    invoke-virtual {v7, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$b;)Lcom/android/tools/r8/graph/H3$b;

    .line 52
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 53
    :goto_9
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_a

    :cond_e
    move-object v12, v2

    .line 54
    :goto_a
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, v0

    new-array v13, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 55
    :goto_b
    iget-object v5, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v7, v5

    if-ge v4, v7, :cond_f

    .line 56
    iget-object v7, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    aget-object v5, v5, v4

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 57
    :cond_f
    sget-boolean v4, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez v4, :cond_10

    invoke-static {v10}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;)V

    .line 58
    :cond_10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ib;->d()I

    move-result v8

    move-object v7, v14

    invoke-virtual/range {v7 .. v13}, Lcom/android/tools/r8/internal/he;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->a:Lcom/android/tools/r8/graph/y;

    .line 60
    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 61
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v4

    .line 62
    iget-object v5, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v7, v6, Lcom/android/tools/r8/internal/S8;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ$p;->W0:Z

    if-eqz v8, :cond_11

    goto :goto_d

    .line 64
    :cond_11
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v8, :cond_15

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    .line 65
    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 66
    instance-of v8, v8, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v8, :cond_12

    goto :goto_d

    .line 67
    :cond_12
    iget-object v4, v4, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 68
    check-cast v4, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 69
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/synthesis/a0;

    .line 70
    iget-object v5, v5, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 71
    sget-boolean v8, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v8, :cond_14

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_c

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_14
    :goto_c
    iget-object v4, v7, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v4

    .line 73
    iget-object v4, v4, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 74
    new-instance v7, Lcom/android/tools/r8/synthesis/K;

    invoke-virtual {v4}, Lcom/android/tools/r8/synthesis/S;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8, v4}, Lcom/android/tools/r8/synthesis/K;-><init>(Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Lcom/android/tools/r8/synthesis/S;)V

    .line 75
    iget-object v4, v14, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    .line 76
    iput-object v4, v7, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 77
    iput-object v7, v14, Lcom/android/tools/r8/internal/he;->G:Lcom/android/tools/r8/internal/K4;

    .line 78
    :cond_15
    :goto_d
    new-instance v4, Lcom/android/tools/r8/internal/YV0;

    invoke-direct {v4, v14}, Lcom/android/tools/r8/internal/YV0;-><init>(Lcom/android/tools/r8/internal/he;)V

    new-instance v5, Lcom/android/tools/r8/internal/HV0;

    invoke-direct {v5, v14}, Lcom/android/tools/r8/internal/HV0;-><init>(Lcom/android/tools/r8/internal/he;)V

    iget-object v7, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 79
    invoke-virtual {v6, v4, v5, v7}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/P8;Lcom/android/tools/r8/internal/R8;[Lcom/android/tools/r8/graph/r0;)V

    .line 80
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v4

    .line 81
    iget-object v5, v6, Lcom/android/tools/r8/internal/S8;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->x5:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v4

    if-nez v4, :cond_16

    .line 82
    sget-object v4, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    :goto_e
    move-object v5, v4

    goto :goto_10

    .line 83
    :cond_16
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    .line 84
    new-instance v5, Lcom/android/tools/r8/internal/kC;

    const/4 v7, 0x4

    .line 85
    invoke-direct {v5, v7}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 86
    iget-object v4, v4, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v7, v4

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v7, :cond_17

    aget-object v9, v4, v8

    .line 87
    iget-object v10, v9, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v9, v9, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v5, v10, v9}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 88
    :cond_17
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v4

    goto :goto_e

    .line 89
    :goto_10
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 90
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v4

    iget-object v7, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    .line 91
    iget-object v8, v4, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v8, :cond_18

    .line 92
    iget-object v8, v8, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 93
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    .line 94
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v4, v4, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 95
    invoke-virtual {v4, v7}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v14, v8, v9, v4}, Lcom/android/tools/r8/internal/he;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 97
    :cond_18
    iget-object v4, v4, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v4}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4, v2, v2}, Lcom/android/tools/r8/internal/he;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_19
    :goto_11
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->U0()Lcom/android/tools/r8/graph/o5;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 99
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->U0()Lcom/android/tools/r8/graph/o5;

    move-result-object v4

    iget-object v7, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    .line 100
    sget-boolean v8, Lcom/android/tools/r8/graph/o5;->c:Z

    if-nez v8, :cond_1b

    .line 101
    iget-object v8, v4, Lcom/android/tools/r8/graph/o5;->b:Lcom/android/tools/r8/graph/M2;

    if-eqz v8, :cond_1a

    goto :goto_12

    .line 102
    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_1b
    :goto_12
    iget-object v4, v4, Lcom/android/tools/r8/graph/o5;->b:Lcom/android/tools/r8/graph/M2;

    .line 104
    invoke-virtual {v7, v4}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/android/tools/r8/internal/he;->a(Ljava/lang/String;)V

    .line 105
    :cond_1c
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/p5;

    .line 106
    iget-object v8, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    .line 107
    sget-boolean v9, Lcom/android/tools/r8/graph/p5;->c:Z

    if-nez v9, :cond_1f

    .line 108
    iget-object v9, v7, Lcom/android/tools/r8/graph/p5;->b:Lcom/android/tools/r8/graph/M2;

    if-eqz v9, :cond_1e

    goto :goto_14

    .line 109
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_1f
    :goto_14
    iget-object v7, v7, Lcom/android/tools/r8/graph/p5;->b:Lcom/android/tools/r8/graph/M2;

    .line 111
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/android/tools/r8/internal/he;->b(Ljava/lang/String;)V

    .line 112
    sget-boolean v7, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez v7, :cond_1d

    iget-object v7, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->U0()Lcom/android/tools/r8/graph/o5;

    move-result-object v7

    if-nez v7, :cond_20

    goto :goto_13

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "A nest host cannot also be a nest member."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :cond_21
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->W0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A5;

    .line 114
    iget-object v8, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    .line 115
    sget-boolean v9, Lcom/android/tools/r8/graph/A5;->c:Z

    if-nez v9, :cond_23

    .line 116
    iget-object v9, v7, Lcom/android/tools/r8/graph/A5;->b:Lcom/android/tools/r8/graph/M2;

    if-eqz v9, :cond_22

    goto :goto_16

    .line 117
    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_23
    :goto_16
    iget-object v7, v7, Lcom/android/tools/r8/graph/A5;->b:Lcom/android/tools/r8/graph/M2;

    .line 119
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/android/tools/r8/internal/he;->c(Ljava/lang/String;)V

    goto :goto_15

    .line 120
    :cond_24
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->x1()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 121
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->X0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/P5;

    .line 122
    iget-object v8, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    new-instance v9, Lcom/android/tools/r8/internal/RV0;

    invoke-direct {v9, v6}, Lcom/android/tools/r8/internal/RV0;-><init>(Lcom/android/tools/r8/internal/S8;)V

    new-instance v10, Lcom/android/tools/r8/internal/IV0;

    invoke-direct {v10, v6}, Lcom/android/tools/r8/internal/IV0;-><init>(Lcom/android/tools/r8/internal/S8;)V

    .line 123
    iget-object v11, v7, Lcom/android/tools/r8/graph/P5;->b:Lcom/android/tools/r8/graph/l1;

    .line 124
    invoke-virtual {v8, v11}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/P5;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v7, Lcom/android/tools/r8/graph/P5;->c:Lcom/android/tools/r8/graph/H3$e;

    .line 126
    invoke-interface {v13}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v16

    if-eqz v16, :cond_26

    move-object v0, v2

    goto :goto_17

    .line 127
    :cond_26
    new-instance v0, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v0, v8, v9}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    .line 128
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    .line 129
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_17
    invoke-virtual {v14, v11, v12, v0}, Lcom/android/tools/r8/internal/he;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;

    move-result-object v0

    .line 131
    iget-object v7, v7, Lcom/android/tools/r8/graph/P5;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_27
    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/r0;

    .line 132
    iget v11, v9, Lcom/android/tools/r8/graph/r0;->b:I

    if-ne v11, v1, :cond_28

    goto :goto_18

    .line 133
    :cond_28
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v11

    .line 134
    iget v12, v9, Lcom/android/tools/r8/graph/r0;->b:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_29

    goto :goto_19

    :cond_29
    const/4 v13, 0x0

    .line 135
    :goto_19
    invoke-virtual {v0, v11, v13}, Lcom/android/tools/r8/internal/hc0;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v11

    if-eqz v11, :cond_27

    .line 136
    iget-object v9, v9, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-interface {v10, v11, v9}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Q2;->a()V

    goto :goto_18

    .line 138
    :cond_2a
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/e4;

    .line 139
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    iget-object v7, v6, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    .line 140
    iget-object v8, v1, Lcom/android/tools/r8/graph/e4;->b:Lcom/android/tools/r8/graph/M2;

    .line 141
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v8

    .line 142
    iget-object v9, v1, Lcom/android/tools/r8/graph/e4;->c:Lcom/android/tools/r8/graph/M2;

    if-nez v9, :cond_2b

    move-object v9, v2

    goto :goto_1b

    :cond_2b
    invoke-virtual {v4, v9}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v9

    .line 143
    :goto_1b
    iget-object v10, v1, Lcom/android/tools/r8/graph/e4;->d:Lcom/android/tools/r8/graph/L2;

    if-nez v10, :cond_2c

    move-object v4, v2

    goto :goto_1c

    :cond_2c
    invoke-virtual {v4, v1, v7}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1c
    iget v1, v1, Lcom/android/tools/r8/graph/e4;->a:I

    .line 144
    invoke-virtual {v14, v1, v8, v9, v4}, Lcom/android/tools/r8/internal/he;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 145
    :cond_2d
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    new-instance v1, Lcom/android/tools/r8/internal/JV0;

    invoke-direct {v1, v6, v14}, Lcom/android/tools/r8/internal/JV0;-><init>(Lcom/android/tools/r8/internal/S8;Lcom/android/tools/r8/internal/he;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H2;->m(Ljava/util/function/Consumer;)V

    .line 146
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    new-instance v1, Lcom/android/tools/r8/internal/KV0;

    invoke-direct {v1, v6, v14}, Lcom/android/tools/r8/internal/KV0;-><init>(Lcom/android/tools/r8/internal/S8;Lcom/android/tools/r8/internal/he;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;)V

    .line 147
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->l()Lcom/android/tools/r8/internal/nJ$e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$e;->a:Z

    if-eqz v0, :cond_2e

    .line 148
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v0, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    new-instance v1, Lcom/android/tools/r8/internal/LV0;

    invoke-direct {v1, v7}, Lcom/android/tools/r8/internal/LV0;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 150
    new-instance v0, Lcom/android/tools/r8/internal/MV0;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/MV0;-><init>(Lcom/android/tools/r8/internal/S8;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 151
    new-instance v8, Lcom/android/tools/r8/internal/NV0;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p1

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NV0;-><init>(Lcom/android/tools/r8/internal/S8;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1d

    .line 152
    :cond_2e
    iget-object v7, v6, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    new-instance v8, Lcom/android/tools/r8/internal/XV0;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p1

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/XV0;-><init>(Lcom/android/tools/r8/internal/S8;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;)V

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 153
    :goto_1d
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/he;->b()[B

    move-result-object v0

    .line 154
    new-instance v1, Lcom/android/tools/r8/internal/Q8;

    invoke-direct {v1, v15, v0}, Lcom/android/tools/r8/internal/Q8;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 9

    .line 203
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 204
    sget-boolean v1, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->u0()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 205
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->q0()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 206
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->u0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->l0()Lcom/android/tools/r8/graph/P;

    move-result-object v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/S8;->a:Lcom/android/tools/r8/graph/y;

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 208
    invoke-interface/range {v2 .. v8}, Lcom/android/tools/r8/graph/P;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V

    return-void

    .line 209
    :cond_4
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    .line 211
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "The CfApplicationWriter cannot write non cf writable code "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for method "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/internal/EX;Lcom/android/tools/r8/graph/z5;)V
    .locals 4

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v0

    .line 4
    iput v0, p1, Lcom/android/tools/r8/internal/EX;->C:I

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v0

    .line 6
    iput v0, p1, Lcom/android/tools/r8/internal/EX;->E:I

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/GV0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/GV0;-><init>(Lcom/android/tools/r8/internal/DX;I)V

    new-instance v2, Lcom/android/tools/r8/internal/QV0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/QV0;-><init>()V

    .line 9
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/z5;->j(I)Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 10
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/P8;Lcom/android/tools/r8/internal/R8;[Lcom/android/tools/r8/graph/r0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 156
    invoke-virtual/range {p0 .. p5}, Lcom/android/tools/r8/internal/S8;->c(Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/P8;Lcom/android/tools/r8/internal/R8;[Lcom/android/tools/r8/graph/r0;)V
    .locals 8

    .line 159
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p3, v2

    .line 160
    iget v4, v3, Lcom/android/tools/r8/graph/r0;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_3

    .line 161
    :cond_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    iget-object v5, v3, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    iget v5, v3, Lcom/android/tools/r8/graph/r0;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v1

    .line 163
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/r0;->k0()Lcom/android/tools/r8/graph/N2;

    move-result-object v5

    if-nez v5, :cond_2

    .line 164
    invoke-interface {p1, v4, v6}, Lcom/android/tools/r8/internal/P8;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v4

    goto :goto_2

    .line 165
    :cond_2
    iget v7, v5, Lcom/android/tools/r8/graph/N2;->f:I

    .line 166
    iget-object v5, v5, Lcom/android/tools/r8/graph/N2;->g:Lcom/android/tools/r8/internal/tu0;

    .line 167
    invoke-interface {p2, v7, v5, v4, v6}, Lcom/android/tools/r8/internal/R8;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_3

    .line 168
    iget-object v3, v3, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p0, v4, v3}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/graph/e1;)V

    .line 169
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/graph/e1;)V
    .locals 4

    .line 170
    iget-object p2, p2, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 171
    iget-object v3, v2, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/Q2;Ljava/lang/String;Lcom/android/tools/r8/graph/R2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Q2;Ljava/lang/String;Lcom/android/tools/r8/graph/R2;)V
    .locals 3

    .line 172
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 173
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->F0()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 174
    :pswitch_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object p3

    .line 175
    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    iget-object v1, p3, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    .line 176
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    iget-object p2, p3, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/graph/e1;)V

    .line 179
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q2;->a()V

    return-void

    .line 180
    :pswitch_1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object p3

    .line 181
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    array-length p2, p3

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v0, p3, v1

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/Q2;Ljava/lang/String;Lcom/android/tools/r8/graph/R2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_1
    return-void

    .line 185
    :pswitch_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->t0()Lcom/android/tools/r8/graph/T2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/T2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    .line 186
    sget-boolean v0, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-eq v0, v1, :cond_3

    .line 187
    const-string v0, "com.android.tools.r8.tracereferences.obfuscateAllEnums"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 188
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p2, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    .line 189
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enum field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " renamed to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 190
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    .line 191
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 192
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p3

    .line 193
    invoke-virtual {p1, p2, v0, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 194
    :pswitch_3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "writeAnnotationElement of DexValueMethod"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :pswitch_4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "writeAnnotationElement of DexValueField"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :pswitch_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    .line 197
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p3, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p3

    .line 198
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v1, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p3

    .line 199
    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 200
    :pswitch_6
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 201
    :pswitch_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "writeAnnotationElement of DexValueMethodHandle"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :pswitch_8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "writeAnnotationElement of DexValueMethodType"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/S8;->c(Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/graph/F5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/android/tools/r8/internal/S8;->c(Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/S8;->c(Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/graph/F5;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/H5;)V
    .locals 14

    move-object v6, p0

    move-object/from16 v0, p4

    .line 21
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->G()I

    move-result v2

    .line 23
    iget-boolean v3, v1, Lcom/android/tools/r8/graph/j1;->h:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    :cond_0
    move v8, v2

    .line 24
    iget-object v2, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v9

    .line 25
    iget-object v2, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v10

    .line 26
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 27
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v2

    iget-object v3, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    new-instance v4, Lcom/android/tools/r8/internal/RV0;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/RV0;-><init>(Lcom/android/tools/r8/internal/S8;)V

    .line 28
    invoke-interface {v2}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_1

    move-object v11, v13

    goto :goto_0

    .line 29
    :cond_1
    new-instance v5, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v5, v3, v4}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    .line 30
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;

    .line 31
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 32
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    iget-object v3, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    .line 33
    iget-object v4, v6, Lcom/android/tools/r8/internal/S8;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->O5:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    move-object v12, v13

    goto :goto_2

    .line 34
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v2

    .line 35
    array-length v5, v2

    new-array v5, v5, [Ljava/lang/String;

    move v7, v4

    .line 36
    :goto_1
    array-length v12, v2

    if-ge v7, v12, :cond_3

    .line 37
    aget-object v12, v2, v7

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v12

    iget-object v12, v12, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v12, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v12}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object v12, v5

    :goto_2
    move-object/from16 v7, p3

    .line 38
    invoke-virtual/range {v7 .. v12}, Lcom/android/tools/r8/internal/he;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;

    move-result-object v2

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 40
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/DX;->a()Lcom/android/tools/r8/internal/Q2;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 41
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, v3, v13, v0}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/Q2;Ljava/lang/String;Lcom/android/tools/r8/graph/R2;)V

    .line 42
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Q2;->a()V

    .line 43
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 44
    array-length v3, v0

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_13

    aget-object v7, v0, v5

    .line 45
    iget-object v8, v7, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v9, v8, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v6, Lcom/android/tools/r8/internal/S8;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->C5:Lcom/android/tools/r8/graph/M2;

    if-ne v9, v10, :cond_12

    .line 46
    sget-boolean v9, Lcom/android/tools/r8/internal/S8;->g:Z

    const/4 v10, 0x2

    if-nez v9, :cond_6

    iget v11, v7, Lcom/android/tools/r8/graph/r0;->b:I

    if-ne v11, v10, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_4
    if-nez v9, :cond_8

    .line 47
    iget-object v11, v8, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v11, v11

    if-ne v11, v10, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_5
    if-nez v9, :cond_a

    .line 48
    iget-object v8, v8, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "names"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_6
    const/4 v8, 0x1

    if-nez v9, :cond_c

    .line 49
    iget-object v10, v7, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v10, v10, v8

    iget-object v10, v10, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "accessFlags"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_c
    :goto_7
    iget-object v10, v7, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v10, v10, v4

    iget-object v10, v10, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v10

    .line 51
    iget-object v7, v7, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v7

    if-nez v9, :cond_e

    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    goto :goto_8

    .line 52
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_8
    if-nez v9, :cond_10

    .line 53
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v9

    array-length v9, v9

    if-ne v8, v9, :cond_f

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    :goto_9
    move v8, v4

    .line 54
    :goto_a
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_12

    .line 55
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v9

    .line 56
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object v11

    if-eqz v9, :cond_11

    .line 57
    iget-object v9, v9, Lcom/android/tools/r8/graph/R2$k;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v9, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_11
    move-object v9, v13

    .line 58
    :goto_b
    iget v11, v11, Lcom/android/tools/r8/graph/R2$h;->d:I

    invoke-virtual {v2, v11, v9}, Lcom/android/tools/r8/internal/DX;->b(ILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 59
    :cond_13
    new-instance v0, Lcom/android/tools/r8/internal/SV0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/SV0;-><init>(Lcom/android/tools/r8/internal/DX;)V

    .line 60
    new-instance v3, Lcom/android/tools/r8/internal/TV0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/TV0;-><init>(Lcom/android/tools/r8/internal/DX;)V

    .line 61
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 62
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/P8;Lcom/android/tools/r8/internal/R8;[Lcom/android/tools/r8/graph/r0;)V

    .line 63
    iget-object v0, v1, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    move-object v5, v2

    check-cast v5, Lcom/android/tools/r8/internal/EX;

    invoke-virtual {p0, v5, v0}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/EX;Lcom/android/tools/r8/graph/z5;)V

    .line 64
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->v1()Z

    move-result v0

    if-nez v0, :cond_14

    .line 65
    iget-object v3, v6, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    move-object v0, p0

    move-object/from16 v1, p5

    move-object v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V

    :cond_14
    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/graph/F5;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/k3;->D()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 3
    iget-boolean v1, v1, Lcom/android/tools/r8/graph/g1;->j:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :cond_0
    move v2, v0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/S8;->d:Lcom/android/tools/r8/naming/r0;

    new-instance v5, Lcom/android/tools/r8/internal/RV0;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/internal/RV0;-><init>(Lcom/android/tools/r8/internal/S8;)V

    .line 8
    invoke-interface {v0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move-object v5, v7

    goto :goto_0

    .line 9
    :cond_1
    new-instance v6, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v6, v1, v5}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    .line 10
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    .line 11
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 12
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 13
    iget-object v1, v0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->k0()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, v7

    :goto_2
    move-object v1, p1

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/he;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/OV0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/OV0;-><init>(Lcom/android/tools/r8/internal/Uw;)V

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/PV0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/PV0;-><init>(Lcom/android/tools/r8/internal/Uw;)V

    .line 18
    iget-object p1, p2, Lcom/android/tools/r8/graph/G0;->c:Lcom/android/tools/r8/graph/h1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u0;->m0()[Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/P8;Lcom/android/tools/r8/internal/R8;[Lcom/android/tools/r8/graph/r0;)V

    return-void
.end method
