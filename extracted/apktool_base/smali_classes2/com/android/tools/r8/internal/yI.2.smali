.class public final Lcom/android/tools/r8/internal/yI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Ib;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Ib;->h:Lcom/android/tools/r8/internal/Ib;

    sput-object v0, Lcom/android/tools/r8/internal/yI;->c:Lcom/android/tools/r8/internal/Ib;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/function/Predicate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/yI;->b:Ljava/util/function/Predicate;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;)I
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p0

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 230
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/android/tools/r8/graph/M2;

    .line 231
    iget-object v3, p0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 232
    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget-object v0, p0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 234
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 235
    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object p0, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 236
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 237
    invoke-virtual {p2, v0, v1, p0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 60
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/android/tools/r8/internal/yI;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/e0;
    .locals 10

    .line 238
    iget-object v0, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 239
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 241
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p0

    new-instance v8, Lcom/android/tools/r8/internal/Zz1;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/Zz1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/aA1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/aA1;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/bA1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/bA1;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/cA1;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/cA1;-><init>()V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    invoke-static {p1}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v5

    .line 244
    iget-object p1, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 245
    invoke-interface {v8, p1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v2

    move-object v1, v0

    move-object v6, p2

    .line 246
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object v6

    .line 247
    iget-object p1, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 248
    invoke-interface {v8, p1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v3

    move-object v1, v7

    move-object v2, p0

    move-object v4, p2

    move-object v5, v9

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/I0;)Lcom/android/tools/r8/graph/e0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 207
    sget-object p0, Lcom/android/tools/r8/graph/g4;->e:Lcom/android/tools/r8/graph/g4;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->k:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "$-CC;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/android/tools/r8/graph/L4;

    .line 211
    iget v2, v0, Lcom/android/tools/r8/graph/g;->b:I

    .line 212
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 213
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 214
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    .line 215
    iget v0, v1, Lcom/android/tools/r8/graph/g;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/android/tools/r8/graph/g;->c:I

    .line 216
    iput-object v1, p1, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 217
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    .line 218
    iput-object v0, p1, Lcom/android/tools/r8/synthesis/N;->j:Lcom/android/tools/r8/graph/H3$g;

    .line 219
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 220
    iput-object v0, p1, Lcom/android/tools/r8/synthesis/N;->k:Lcom/android/tools/r8/graph/u0;

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p1, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object p0

    .line 223
    iput-object p0, p1, Lcom/android/tools/r8/synthesis/N;->l:Lcom/android/tools/r8/graph/z5;

    .line 224
    new-instance p0, Lcom/android/tools/r8/internal/Sz1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Sz1;-><init>()V

    .line 225
    iput-object p0, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AI;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 143
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/AI;->j(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/AI;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 208
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/AI;->q(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/Iz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Iz1;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/l1;)Z
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 227
    iget-object p0, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/g1;)Z
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object p0, p0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 3

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/high16 v2, 0x10000

    .line 33
    iget v1, v1, Lcom/android/tools/r8/graph/g;->c:I

    .line 34
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 37
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 38
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-nez v0, :cond_6

    .line 39
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    .line 40
    :cond_5
    new-instance p0, Lcom/android/tools/r8/internal/av0;

    const-string v0, "Non public default interface methods are not yet supported."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/av0;

    const-string v0, "Native default interface methods are not yet supported."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$-CC;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 16
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 50
    new-instance v0, Lcom/android/tools/r8/internal/gA1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gA1;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object p0

    .line 52
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/g1;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 21
    sget-object p0, Lcom/android/tools/r8/graph/c6;->e:Lcom/android/tools/r8/graph/c6;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->k:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/android/tools/r8/graph/L4;

    .line 25
    iget v2, v0, Lcom/android/tools/r8/graph/g;->b:I

    .line 26
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    .line 28
    iput-object v1, p1, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    .line 30
    iput-object v0, p1, Lcom/android/tools/r8/synthesis/N;->j:Lcom/android/tools/r8/graph/H3$g;

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 32
    iput-object v0, p1, Lcom/android/tools/r8/synthesis/N;->k:Lcom/android/tools/r8/graph/u0;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object p0

    .line 34
    iput-object p0, p1, Lcom/android/tools/r8/synthesis/N;->l:Lcom/android/tools/r8/graph/z5;

    const/4 p0, 0x0

    .line 35
    iput-boolean p0, p1, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 36
    new-instance p0, Lcom/android/tools/r8/internal/mA1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/mA1;-><init>()V

    .line 37
    iput-object p0, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/AI;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 22
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/AI;->t(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Rz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Rz1;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 14
    sget-object p0, Lcom/android/tools/r8/graph/c6;->e:Lcom/android/tools/r8/graph/c6;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->k:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/AI;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 15
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/AI;->i(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/lA1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lA1;-><init>()V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/N4;->a(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 2
    sget-object p0, Lcom/android/tools/r8/graph/g4;->e:Lcom/android/tools/r8/graph/g4;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->k:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 2
    sget-object p0, Lcom/android/tools/r8/graph/g4;->e:Lcom/android/tools/r8/graph/g4;

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->k:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->j:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->g:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->j:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/iA1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iA1;-><init>()V

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/I;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 52
    iget-object v1, p2, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 56
    iget-object p2, p2, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 57
    invoke-virtual {v1, p1, v0, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    iget-object p1, p1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 93
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/dA1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dA1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/I;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 95
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 96
    iget-object p1, p1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/H0;
    .locals 2

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p2

    .line 149
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 150
    const-string v1, "$default$"

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/A2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/e0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/ea;)Lcom/android/tools/r8/graph/H0;
    .locals 11

    .line 100
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/Kz1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Kz1;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/I;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 102
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    .line 103
    iget-object v2, p1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    const/4 v3, 0x1

    .line 104
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-nez v0, :cond_1

    .line 106
    new-instance v2, Lcom/android/tools/r8/internal/Lz1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Lz1;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/I;)V

    .line 107
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    instance-of v2, v1, Lcom/android/tools/r8/graph/H5;

    if-eqz v2, :cond_6

    if-nez v0, :cond_3

    .line 109
    iget-object p2, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p2

    .line 110
    iget-object p2, p2, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 111
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz p2, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 113
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 114
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 115
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    .line 116
    new-instance v2, Lcom/android/tools/r8/internal/Mz1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Mz1;-><init>()V

    .line 117
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 118
    invoke-virtual {p2, v2, v1, v3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 119
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 120
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    if-nez v0, :cond_5

    .line 121
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 122
    :cond_5
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 124
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 127
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 128
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    .line 130
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    new-instance v9, Lcom/android/tools/r8/internal/Nz1;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/Nz1;-><init>()V

    .line 131
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v1

    iget-object v10, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/Oz1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Oz1;-><init>()V

    .line 132
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/Pz1;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/internal/Pz1;-><init>(Lcom/android/tools/r8/internal/fu;)V

    new-instance p2, Lcom/android/tools/r8/internal/Qz1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Qz1;-><init>()V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {v1}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v6

    .line 135
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 136
    invoke-interface {v9, v1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v3

    move-object v2, v0

    move-object v7, v10

    .line 137
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object v7

    .line 138
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 139
    invoke-interface {v9, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v4

    move-object v2, v8

    move-object v3, p1

    move-object v5, v10

    move-object v6, p2

    .line 140
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/I0;)Lcom/android/tools/r8/graph/e0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;
    .locals 8

    .line 152
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 153
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 154
    const-string v3, "$default$"

    invoke-static {v1, v3, v2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/A2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 156
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 157
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    new-instance v6, Lcom/android/tools/r8/internal/Xz1;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/tools/r8/internal/Xz1;-><init>(Lcom/android/tools/r8/internal/yI;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1;)V

    new-instance v7, Lcom/android/tools/r8/internal/Yz1;

    invoke-direct {v7, p2, p1}, Lcom/android/tools/r8/internal/Yz1;-><init>(Lcom/android/tools/r8/internal/AI;Lcom/android/tools/r8/graph/H5;)V

    .line 158
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I0;
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 68
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 69
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 70
    new-instance v0, Lcom/android/tools/r8/internal/Uz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Uz1;-><init>()V

    iget-object v6, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/Vz1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Vz1;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/Wz1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Wz1;-><init>()V

    .line 71
    iget-object v2, v1, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 72
    invoke-interface {v0, v2}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v2

    .line 73
    new-instance v5, Lcom/android/tools/r8/synthesis/l;

    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    sget-object v7, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v5, p1, p1, v0, v7}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    .line 74
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 259
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    new-instance v3, Lcom/android/tools/r8/internal/fA1;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/fA1;-><init>(Lcom/android/tools/r8/graph/H2;)V

    .line 260
    const-string p1, "$desugar$clinit"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 261
    sget-object v0, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 262
    new-instance v0, Lcom/android/tools/r8/graph/g1$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 263
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object p1

    .line 264
    sget-boolean v0, Lcom/android/tools/r8/graph/k3;->f:Z

    .line 265
    new-instance v0, Lcom/android/tools/r8/graph/j3;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/j3;-><init>()V

    .line 266
    sget-boolean v1, Lcom/android/tools/r8/graph/f;->b:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j3;->a()Lcom/android/tools/r8/graph/f;

    move-result-object v0

    .line 268
    check-cast v0, Lcom/android/tools/r8/graph/j3;

    .line 269
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 270
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->y()V

    .line 271
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    .line 272
    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 273
    check-cast v0, Lcom/android/tools/r8/graph/k3;

    .line 274
    iput-object v0, p1, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 275
    sget-object v0, Lcom/android/tools/r8/graph/R2$h;->e:Lcom/android/tools/r8/graph/R2$h;

    .line 276
    iput-object v0, p1, Lcom/android/tools/r8/graph/g1$a;->f:Lcom/android/tools/r8/graph/R2;

    .line 277
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 9

    .line 297
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Lcom/android/tools/r8/graph/G;

    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance p2, Lcom/android/tools/r8/internal/S9;

    .line 299
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/S9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance p1, Lcom/android/tools/r8/internal/kb;

    sget-object v1, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v1, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bb;-><init>()V

    .line 300
    invoke-static {p2, p1, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 301
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v0

    move-object v6, v7

    .line 302
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 303
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/g1;)V

    .line 306
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result p1

    .line 307
    new-instance v8, Lcom/android/tools/r8/graph/G;

    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_2

    const/4 p2, 0x2

    :goto_0
    move v3, p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    .line 308
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/vb;

    .line 309
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    if-eqz p1, :cond_3

    .line 310
    new-instance p1, Lcom/android/tools/r8/internal/kb;

    sget-object v0, Lcom/android/tools/r8/internal/kb$a;->d:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    goto :goto_2

    .line 311
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/kb;

    sget-object v0, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    .line 312
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 313
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v7

    .line 314
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/cu;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 75
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 76
    :cond_2
    :goto_0
    instance-of v2, p2, Lcom/android/tools/r8/graph/A4;

    if-nez v2, :cond_4

    .line 77
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 78
    invoke-static {v2}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v2

    .line 79
    iget-object v2, v2, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 80
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CU;->i()Ljava/util/Map;

    move-result-object v2

    .line 81
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    if-nez v1, :cond_6

    .line 82
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 84
    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 85
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    :goto_3
    if-nez p2, :cond_8

    return-object v0

    .line 87
    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 88
    invoke-static {p1}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    .line 89
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 90
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xU;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/cu;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Ljava/util/function/Predicate;
    .locals 3

    .line 315
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 317
    const-string v2, "$-CC;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 318
    new-instance v2, Lcom/android/tools/r8/internal/Jz1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/tools/r8/internal/Jz1;-><init>(Lcom/android/tools/r8/internal/yI;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/nJ;)V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)V
    .locals 8

    .line 336
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->b:Ljava/util/function/Predicate;

    invoke-interface {v0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 338
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->c2:Ljava/util/Set;

    .line 339
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v7, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;

    .line 341
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 342
    sget-object v3, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 343
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v4

    .line 344
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v5

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    goto :goto_0

    :goto_1
    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;)V

    .line 346
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/AI;)V
    .locals 7

    .line 250
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 251
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 252
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->j1:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 253
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/internal/Tz1;

    invoke-direct {v5, p0, p1}, Lcom/android/tools/r8/internal/Tz1;-><init>(Lcom/android/tools/r8/internal/yI;Lcom/android/tools/r8/graph/H2;)V

    new-instance v6, Lcom/android/tools/r8/internal/eA1;

    invoke-direct {v6, p2, p1}, Lcom/android/tools/r8/internal/eA1;-><init>(Lcom/android/tools/r8/internal/AI;Lcom/android/tools/r8/graph/H2;)V

    move-object v1, p1

    .line 254
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    .line 279
    sget-boolean v0, Lcom/android/tools/r8/graph/L4;->f:Z

    .line 280
    new-instance v0, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/K4;-><init>()V

    .line 281
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v1, Lcom/android/tools/r8/graph/L4;

    const/high16 v2, 0x10000

    .line 282
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->a(I)V

    .line 283
    sget-boolean v1, Lcom/android/tools/r8/graph/f;->b:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 284
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/K4;->a()Lcom/android/tools/r8/graph/f;

    move-result-object v0

    .line 285
    check-cast v0, Lcom/android/tools/r8/graph/K4;

    .line 286
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 287
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->y()V

    .line 288
    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 289
    check-cast v0, Lcom/android/tools/r8/graph/L4;

    .line 290
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 291
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->G1()Lcom/android/tools/r8/internal/Ib;

    move-result-object v0

    .line 292
    sget-object v1, Lcom/android/tools/r8/internal/yI;->c:Lcom/android/tools/r8/internal/Ib;

    .line 293
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 294
    :goto_1
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 295
    new-instance v0, Lcom/android/tools/r8/internal/hA1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/hA1;-><init>(Lcom/android/tools/r8/internal/yI;Lcom/android/tools/r8/graph/H2;)V

    .line 296
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/synthesis/N;)V
    .locals 10

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 160
    new-instance v0, Lcom/android/tools/r8/graph/L4;

    .line 161
    iget v1, p1, Lcom/android/tools/r8/graph/g;->b:I

    .line 162
    iget p1, p1, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 163
    iget p1, v0, Lcom/android/tools/r8/graph/g;->c:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 164
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 165
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    .line 166
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->j:Lcom/android/tools/r8/graph/H3$g;

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p3, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 168
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 169
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    const/4 v2, 0x0

    move v3, p1

    .line 170
    :goto_0
    iget-object v4, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 171
    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_f

    .line 172
    aget-object v4, v4, v3

    .line 173
    iget-object v5, v4, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v7, v5, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v1, Lcom/android/tools/r8/graph/u1;->C5:Lcom/android/tools/r8/graph/M2;

    if-ne v7, v8, :cond_d

    .line 174
    sget-boolean v7, Lcom/android/tools/r8/graph/u0;->h:Z

    const/4 v8, 0x2

    if-nez v7, :cond_1

    iget v9, v4, Lcom/android/tools/r8/graph/r0;->b:I

    if-ne v9, v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    if-nez v7, :cond_3

    .line 175
    iget-object v9, v5, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v9, v9

    if-ne v9, v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    if-nez v7, :cond_5

    .line 176
    iget-object v5, v5, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "names"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    if-nez v7, :cond_7

    .line 177
    iget-object v5, v4, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "accessFlags"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 178
    :cond_7
    :goto_4
    iget-object v5, v4, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v5

    .line 179
    iget-object v4, v4, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v4

    if-nez v7, :cond_9

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    goto :goto_5

    .line 180
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_5
    if-nez v7, :cond_b

    .line 181
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v8

    array-length v8, v8

    if-ne v7, v8, :cond_a

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_6
    if-nez v2, :cond_c

    .line 182
    iget-object v2, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v7, v2

    new-array v7, v7, [Lcom/android/tools/r8/graph/r0;

    .line 183
    invoke-static {v2, p1, v7, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v7

    .line 184
    :cond_c
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v7, v6

    new-array v7, v7, [Lcom/android/tools/r8/graph/R2;

    .line 185
    new-instance v8, Lcom/android/tools/r8/graph/R2$k;

    .line 186
    const-string v9, "_this"

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    aput-object v8, v7, p1

    .line 187
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    array-length v5, v5

    invoke-static {v8, p1, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v6

    new-array v5, v5, [Lcom/android/tools/r8/graph/R2;

    .line 189
    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object v8

    aput-object v8, v5, p1

    .line 190
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v4

    array-length v4, v4

    .line 191
    invoke-static {v8, p1, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    invoke-static {v7, v5, v1}, Lcom/android/tools/r8/graph/r0;->a([Lcom/android/tools/r8/graph/R2;[Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/r0;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_7

    :cond_d
    if-eqz v2, :cond_e

    .line 193
    aput-object v4, v2, v3

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_f
    if-nez v2, :cond_10

    goto :goto_8

    .line 194
    :cond_10
    sget-boolean v0, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 195
    array-length v0, v2

    if-nez v0, :cond_11

    .line 196
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    goto :goto_8

    :cond_11
    new-instance v0, Lcom/android/tools/r8/graph/u0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    .line 197
    :goto_8
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->k:Lcom/android/tools/r8/graph/u0;

    .line 198
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object p2

    .line 199
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    .line 200
    :cond_12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v0

    add-int/2addr v0, v6

    new-array v0, v0, [Lcom/android/tools/r8/graph/u0;

    .line 201
    iget-object v1, p2, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result p2

    invoke-static {v1, p1, v0, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p2

    aput-object p2, v0, p1

    .line 203
    new-instance p2, Lcom/android/tools/r8/graph/z5;

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/graph/z5;-><init>([Lcom/android/tools/r8/graph/u0;I)V

    .line 204
    :goto_9
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->l:Lcom/android/tools/r8/graph/z5;

    .line 205
    new-instance p1, Lcom/android/tools/r8/internal/pA1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/pA1;-><init>()V

    .line 206
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/I;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 46
    invoke-interface {p2, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p2

    .line 47
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 3

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 18
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xU;->i()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 26
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 319
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v1

    .line 323
    invoke-virtual {v1, p4}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    iget-object p2, p2, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/L2;->a([B)Z

    move-result p2

    if-nez p2, :cond_1

    .line 326
    iget-object p2, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 327
    invoke-static {p2}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object p2

    .line 328
    iget-object p2, p2, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 329
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/CU;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 330
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p2

    .line 331
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p2

    .line 332
    iget-object p2, p2, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 333
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/CU;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 334
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 335
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;
    .locals 3

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 39
    sget-boolean v1, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

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

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->m1()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/g4;->a(Lcom/android/tools/r8/graph/i0;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/yI;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1

    .line 45
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1

    .line 47
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-static {v0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/eu;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/eu;->a:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;
    .locals 8

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 8
    const-string v2, "$private$"

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/A2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    new-instance v6, Lcom/android/tools/r8/internal/nA1;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/internal/nA1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    new-instance v7, Lcom/android/tools/r8/internal/oA1;

    invoke-direct {v7, p2, p1}, Lcom/android/tools/r8/internal/oA1;-><init>(Lcom/android/tools/r8/internal/AI;Lcom/android/tools/r8/graph/H5;)V

    .line 13
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-static {v0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;
    .locals 8

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/AI;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    new-instance v6, Lcom/android/tools/r8/internal/jA1;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/internal/jA1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    new-instance v7, Lcom/android/tools/r8/internal/kA1;

    invoke-direct {v7, p2, p1}, Lcom/android/tools/r8/internal/kA1;-><init>(Lcom/android/tools/r8/internal/AI;Lcom/android/tools/r8/graph/H5;)V

    .line 13
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/yI;->b:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
