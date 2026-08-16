.class public final Lcom/android/tools/r8/internal/B3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/internal/nJ;

.field public final c:Lcom/android/tools/r8/internal/nJ$b;

.field public final d:Ljava/util/HashMap;

.field public final e:Lcom/android/tools/r8/internal/h80;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public final i:Lcom/android/tools/r8/internal/F3;

.field public final j:Lcom/android/tools/r8/internal/Ef;

.field public final synthetic k:Lcom/android/tools/r8/internal/C3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/C3;Lcom/android/tools/r8/internal/F3;Lcom/android/tools/r8/internal/Ef;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/B3;->c:Lcom/android/tools/r8/internal/nJ$b;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/B3;->d:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->k()Lcom/android/tools/r8/internal/h80;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/B3;->e:Lcom/android/tools/r8/internal/h80;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/B3;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/B3;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/B3;->h:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/B3;->i:Lcom/android/tools/r8/internal/F3;

    iput-object p3, p0, Lcom/android/tools/r8/internal/B3;->j:Lcom/android/tools/r8/internal/Ef;

    return-void
.end method

.method public static synthetic a(I)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->v:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/HashMap;
    .locals 4

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 132
    new-instance v2, Lcom/android/tools/r8/internal/Xz0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Xz0;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    sget-object v3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/graph/proto/c$a;Lcom/android/tools/r8/internal/SG;ILcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    .line 307
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p4

    .line 308
    invoke-interface {p1, p4}, Lcom/android/tools/r8/internal/JH;->h(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    invoke-static {}, Lcom/android/tools/r8/graph/proto/g;->d()Lcom/android/tools/r8/graph/proto/g$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/graph/proto/g$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/g$b;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/proto/g$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/g$a;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object p1

    .line 310
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    return-void

    .line 311
    :cond_0
    invoke-interface {p3, p4}, Lcom/android/tools/r8/internal/HG;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 312
    invoke-interface {p3, p4}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 313
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p3

    .line 314
    iput-object p1, p3, Lcom/android/tools/r8/graph/proto/k$a;->a:Lcom/android/tools/r8/graph/M2;

    .line 315
    invoke-virtual {p3, p5}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p3

    .line 316
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object p1

    .line 318
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    :cond_1
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/dA0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dA0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 135
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/m80;

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/A2;
    .locals 10

    .line 213
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    .line 214
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/A3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/A3;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->f:Ljava/util/HashMap;

    .line 216
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 217
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/F2;

    if-eqz v2, :cond_2

    .line 218
    sget-boolean v0, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v0, :cond_1

    .line 219
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    .line 220
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 222
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    .line 225
    invoke-virtual {p2, p1, v2}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 226
    invoke-static {p2, p2}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lcom/android/tools/r8/internal/B3;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 228
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-nez p1, :cond_3

    .line 229
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/A3;)V

    :cond_3
    return-object p2

    .line 230
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/B3;->h:Ljava/util/HashMap;

    .line 231
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/o50;

    .line 232
    sget-boolean v4, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/A3;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/A3;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 233
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/F2;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/graph/F2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 234
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 235
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/B3;->g:Ljava/util/HashMap;

    new-instance v4, Lcom/android/tools/r8/internal/mA0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/mA0;-><init>()V

    .line 236
    invoke-static {v4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v4

    .line 237
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/IH;

    .line 238
    iget-object v3, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    .line 239
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 240
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 242
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/nA0;

    invoke-direct {v8, p0, v2, v0, v1}, Lcom/android/tools/r8/internal/nA0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/A3;)V

    .line 243
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v9

    const/4 v5, 0x0

    .line 244
    invoke-virtual/range {v3 .. v9}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 245
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-nez p1, :cond_7

    .line 246
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    new-instance p1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 248
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/A3;)V

    :cond_7
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    .line 367
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 368
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 369
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 370
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/I1;->u:Z

    if-eqz v0, :cond_e

    .line 371
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v3

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 374
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v1

    .line 375
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/F8;->b(I)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 376
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_3

    .line 377
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 378
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 379
    sget-boolean v1, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 380
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 381
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    instance-of p2, p1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz p2, :cond_6

    return-object v3

    .line 383
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p2

    if-eqz p2, :cond_7

    return-object v3

    :cond_7
    if-nez v1, :cond_9

    .line 384
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 385
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v3

    .line 386
    :cond_a
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_b

    return-object v3

    .line 387
    :cond_b
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/Z1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_c

    return-object v3

    .line 388
    :cond_c
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_d

    return-object v3

    :cond_d
    return-object p1

    :cond_e
    :goto_3
    return-object v3
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Pm0;)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 330
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p3, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 333
    iget-object v3, v1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 334
    invoke-static {p3, v3, v1}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/y;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 335
    iget-object p1, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 336
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p3, p3, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p3

    .line 337
    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    .line 338
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    iget-boolean v1, p3, Lcom/android/tools/r8/shaking/I1;->z:Z

    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 343
    iget-object p1, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 344
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    .line 345
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 346
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 347
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 348
    iget-boolean p2, p3, Lcom/android/tools/r8/shaking/I1;->w:Z

    if-eqz p2, :cond_c

    .line 349
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 351
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 352
    sget-boolean p2, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    instance-of p3, p1, Lcom/android/tools/r8/internal/xs0;

    if-nez p3, :cond_4

    .line 354
    iget-object p3, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p3, p3, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 355
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p3, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 356
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 357
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p3

    if-nez p3, :cond_7

    if-nez p2, :cond_6

    .line 358
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p2

    if-nez p2, :cond_6

    .line 359
    instance-of p2, p1, Lcom/android/tools/r8/internal/Zd0;

    if-nez p2, :cond_6

    .line 360
    instance-of p1, p1, Lcom/android/tools/r8/internal/xs0;

    if-eqz p1, :cond_5

    goto :goto_1

    .line 361
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    return-object v2

    .line 362
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v2

    .line 363
    :cond_8
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_9

    return-object v2

    .line 364
    :cond_9
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/Z1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_a

    return-object v2

    .line 365
    :cond_a
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_b

    return-object v2

    :cond_b
    return-object p1

    :cond_c
    return-object v2
.end method

.method public final a(Ljava/util/Map;Ljava/util/Set;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/graph/l1;
    .locals 3

    .line 202
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 203
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 204
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 205
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 206
    sget-boolean p1, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 207
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    .line 209
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 210
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 211
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/w1;

    invoke-direct {v2, p2}, Lu/w1;-><init>(Ljava/util/Set;)V

    .line 212
    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/proto/j;
    .locals 7

    .line 319
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/I1;->u:Z

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Lcom/android/tools/r8/internal/fA0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/fA0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/graph/H5;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 325
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/gA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gA0;-><init>()V

    goto :goto_0

    .line 326
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->B()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B3;->c(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object v1

    .line 327
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Pm0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 328
    new-instance v6, Lcom/android/tools/r8/internal/hA0;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/hA0;-><init>()V

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 329
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/graph/M2;Ljava/util/function/IntFunction;Ljava/util/function/IntPredicate;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nI;)Lcom/android/tools/r8/graph/proto/j;
    .locals 4

    .line 292
    invoke-static {}, Lcom/android/tools/r8/graph/proto/c;->a()Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 294
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 295
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v1

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/proto/c$a;->a(I)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/pA0;

    invoke-direct {v2, p1, p4, v0, p3}, Lcom/android/tools/r8/internal/pA0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/graph/proto/c$a;Lcom/android/tools/r8/internal/SG;)V

    const/4 p3, 0x0

    .line 298
    :goto_0
    iget-object p4, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 299
    array-length v3, p4

    if-ge p3, v3, :cond_0

    .line 300
    aget-object p4, p4, p3

    .line 301
    invoke-interface {v2, p3, p4}, Lcom/android/tools/r8/internal/ZH;->a(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 302
    :cond_0
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 303
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/proto/k;

    move-result-object p1

    .line 304
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/c$a;->a()Lcom/android/tools/r8/graph/proto/c;

    move-result-object p2

    .line 305
    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/proto/j;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 265
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2, p1, v2}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 266
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Dq;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p2

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->c:Lcom/android/tools/r8/internal/nJ$b;

    .line 268
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$b;->d:Z

    if-nez v2, :cond_3

    .line 269
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 270
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    new-instance v3, Lcom/android/tools/r8/internal/Fv;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Fv;-><init>()V

    goto :goto_0

    .line 272
    :cond_2
    new-instance v4, Lcom/android/tools/r8/internal/Gv;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Gv;-><init>(Lcom/android/tools/r8/graph/M2;)V

    move-object v3, v4

    :goto_0
    new-array v4, v1, [Lcom/android/tools/r8/internal/Bv;

    aput-object v3, v4, v0

    .line 273
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v3

    .line 274
    iget-object v4, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, p1, v4}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 275
    invoke-virtual {p3, v4}, Lcom/android/tools/r8/internal/Dq;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 277
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 278
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 279
    new-instance v3, Lcom/android/tools/r8/internal/iA0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/iA0;-><init>()V

    iget-object v4, p0, Lcom/android/tools/r8/internal/B3;->j:Lcom/android/tools/r8/internal/Ef;

    .line 280
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v5, v5, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 281
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/android/tools/r8/internal/B3;->i:Lcom/android/tools/r8/internal/F3;

    invoke-interface {v3, v2, p1}, Lcom/android/tools/r8/internal/F3;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    .line 284
    new-instance v3, Lcom/android/tools/r8/internal/Gv;

    .line 285
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Gv;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-array v1, v1, [Lcom/android/tools/r8/internal/Bv;

    aput-object v3, v1, v0

    .line 286
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p2

    .line 287
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    .line 288
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 289
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Dq;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    .line 290
    sget-boolean p3, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez p3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/proto/j;
    .locals 1

    .line 256
    sget-boolean v0, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 257
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 258
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 260
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p2

    goto :goto_1

    .line 262
    :cond_2
    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 263
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 264
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/graph/M2;Ljava/util/function/IntFunction;Ljava/util/function/IntPredicate;)Lcom/android/tools/r8/graph/proto/j;
    .locals 8

    .line 389
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 390
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/proto/k;

    move-result-object p3

    .line 391
    invoke-static {}, Lcom/android/tools/r8/graph/proto/c;->a()Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v1

    .line 392
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 393
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    .line 394
    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v2

    .line 395
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/proto/c$a;->a(I)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v1

    .line 396
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 397
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 399
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 400
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 401
    invoke-static {p2, p1, v4}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 402
    new-instance p2, Lcom/android/tools/r8/graph/proto/h;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/proto/h;-><init>()V

    .line 403
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/proto/h;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/g$b;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/proto/h;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/h;->a()Lcom/android/tools/r8/graph/proto/i;

    move-result-object p2

    .line 404
    invoke-virtual {v1, v4, p2}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object p2

    .line 405
    iput-boolean v3, p2, Lcom/android/tools/r8/graph/proto/c$a;->d:Z

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object p2

    .line 407
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    if-ge v4, v2, :cond_6

    .line 408
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 409
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v2, v4

    .line 410
    invoke-interface {p5, v4}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 411
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v5, v5, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 413
    invoke-static {v5, p1}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v5, v5, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 414
    invoke-static {v5, p1, v2}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 415
    invoke-static {}, Lcom/android/tools/r8/graph/proto/g;->d()Lcom/android/tools/r8/graph/proto/g$a;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/proto/g$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/g$b;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/proto/g$a;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/g$a;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object v5

    .line 416
    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    goto :goto_2

    .line 417
    :cond_1
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/F8;->a(I)Lcom/android/tools/r8/internal/F1;

    move-result-object v5

    .line 418
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 419
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v7, v7, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7, p1}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 420
    invoke-static {}, Lcom/android/tools/r8/graph/proto/g;->d()Lcom/android/tools/r8/graph/proto/g$a;

    move-result-object v6

    .line 421
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/proto/g$a;->a(Lcom/android/tools/r8/internal/Pm0;)Lcom/android/tools/r8/graph/proto/g$b;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/proto/g$a;

    .line 422
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/proto/g$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/g$b;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/proto/g$a;

    .line 423
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/g$a;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object v5

    .line 424
    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    goto :goto_2

    .line 425
    :cond_2
    invoke-interface {p4, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    if-eqz v5, :cond_5

    .line 426
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 427
    sget-boolean v7, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v7, :cond_4

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 428
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v7

    .line 429
    iput-object v5, v7, Lcom/android/tools/r8/graph/proto/k$a;->a:Lcom/android/tools/r8/graph/M2;

    .line 430
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v6

    .line 431
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v5

    .line 432
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v5

    .line 433
    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 434
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/c$a;->a()Lcom/android/tools/r8/graph/proto/c;

    move-result-object p1

    .line 435
    invoke-static {v0, p3, p1}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/proto/k;
    .locals 3

    if-nez p1, :cond_2

    .line 436
    sget-boolean p1, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/B3;->e:Lcom/android/tools/r8/internal/h80;

    .line 437
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 438
    sget-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 439
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 440
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 442
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 443
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Lcom/android/tools/r8/internal/Yz0;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/internal/Yz0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/graph/H5;)V

    .line 444
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/proto/k$a;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v0

    .line 445
    iput-object p1, v0, Lcom/android/tools/r8/graph/proto/k$a;->a:Lcom/android/tools/r8/graph/M2;

    .line 446
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p2

    .line 447
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p1

    .line 448
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/internal/Dq;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/t3;
    .locals 5

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B3;->b(Ljava/util/Set;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/B3;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/Dq;)V

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    sget-boolean v1, Lcom/android/tools/r8/internal/u3;->o:Z

    .line 13
    new-instance v1, Lcom/android/tools/r8/internal/t3;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/t3;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    new-instance p1, Lcom/android/tools/r8/errors/q;

    invoke-direct {p1}, Lcom/android/tools/r8/errors/q;-><init>()V

    .line 16
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 19
    invoke-virtual {p0, v3, p2, v1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/t3;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/F2;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/A3;->e:Lcom/android/tools/r8/internal/A3;

    .line 8
    invoke-virtual {p0, p1, p1, v0}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/A3;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/A3;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->f:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/Wz0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Wz0;-><init>()V

    .line 34
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 35
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v1, p3, p2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/proto/k$a;)V
    .locals 0

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B3;->c(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    .line 450
    iput-object p1, p2, Lcom/android/tools/r8/graph/proto/k$a;->d:Lcom/android/tools/r8/internal/Pm0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/m80;)V
    .locals 9

    .line 39
    new-instance v0, Lcom/android/tools/r8/internal/eA0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/eA0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/Dq;)V

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_10

    .line 40
    :cond_0
    iget-object p1, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 42
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 46
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 47
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 48
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/t5;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_10

    .line 49
    :cond_2
    iget-object p1, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 50
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_3

    goto :goto_0

    .line 51
    :cond_3
    iget-object p1, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    .line 53
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 57
    invoke-static {v2, p1, v1}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 58
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/dH;

    const/16 v2, 0x10

    .line 59
    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 60
    new-instance v2, Lcom/android/tools/r8/internal/FH;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/FH;-><init>()V

    .line 61
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_10

    add-int/lit8 v3, v1, 0x1

    .line 64
    iget-object v5, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 65
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 66
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    .line 67
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 68
    :cond_5
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 69
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v7, v7, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 70
    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v7, v7, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 71
    invoke-static {v7, v6, v3}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;I)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    .line 72
    :cond_6
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object v7

    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    instance-of v8, v7, Lcom/android/tools/r8/internal/jg;

    if-eqz v8, :cond_7

    .line 75
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/F8;->a()Lcom/android/tools/r8/internal/jg;

    move-result-object v7

    .line 76
    invoke-virtual {v7, v3}, Lcom/android/tools/r8/internal/jg;->a(I)Lcom/android/tools/r8/internal/F1;

    move-result-object v7

    .line 77
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 78
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v7

    iget-object v8, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v8, v8, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v8, v6}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    .line 79
    :cond_7
    iget-object v5, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 80
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    .line 81
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/H5;

    .line 82
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    .line 83
    :cond_8
    invoke-virtual {p0, v7, v1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-eqz v7, :cond_d

    if-eqz v6, :cond_9

    if-eq v6, v7, :cond_9

    goto :goto_6

    :cond_9
    move-object v6, v7

    goto :goto_4

    .line 84
    :cond_a
    sget-boolean v4, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v4, :cond_c

    if-eqz v6, :cond_c

    .line 85
    iget-object v4, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H0;

    .line 87
    check-cast v4, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-eq v6, v4, :cond_b

    goto :goto_5

    .line 88
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_5
    move-object v4, v6

    :cond_d
    :goto_6
    if-eqz v4, :cond_f

    .line 89
    invoke-virtual {p1, v1, v4}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 90
    :cond_e
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    :cond_f
    :goto_7
    move v1, v3

    goto/16 :goto_2

    .line 91
    :cond_10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_a

    .line 94
    :cond_11
    iget-object v1, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 95
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v4

    .line 96
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    .line 97
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_8

    .line 98
    :cond_12
    iget-object v6, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v6, v6, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v7, v7, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7, v5}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_a

    .line 99
    :cond_13
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v7, v7, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 100
    iget-object v6, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v6, v6, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 101
    iget-object v6, v6, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 102
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object v5

    goto :goto_9

    .line 103
    :cond_14
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object v5

    .line 104
    :goto_9
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 105
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v7, v7, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-eqz v3, :cond_15

    .line 106
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_a

    .line 107
    :cond_15
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v3

    goto :goto_8

    :cond_16
    :goto_a
    move-object v3, v4

    :cond_17
    if-nez v3, :cond_1e

    .line 108
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/internal/m80;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_d

    .line 109
    :cond_18
    iget-object v1, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, v4

    .line 110
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    .line 111
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_b

    .line 112
    :cond_19
    sget-object v7, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p0, v6, v7, v4}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Pm0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    if-eqz v6, :cond_1f

    if-eqz v5, :cond_1a

    if-eq v5, v6, :cond_1a

    goto :goto_e

    :cond_1a
    move-object v5, v6

    goto :goto_b

    .line 113
    :cond_1b
    sget-boolean v1, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v1, :cond_1d

    if-eqz v5, :cond_1d

    .line 114
    iget-object v1, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H0;

    .line 116
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v5, v1, :cond_1c

    goto :goto_c

    :cond_1c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1d
    :goto_c
    move-object v4, v5

    goto :goto_e

    .line 117
    :cond_1e
    :goto_d
    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    :cond_1f
    :goto_e
    if-nez v0, :cond_20

    if-nez v4, :cond_20

    .line 118
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 119
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/FH;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 120
    :cond_20
    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->d:Ljava/util/HashMap;

    new-instance v5, Lcom/android/tools/r8/internal/A3;

    invoke-direct {v5, v0, v4, p1, v2}, Lcom/android/tools/r8/internal/A3;-><init>(ZLcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nI;)V

    invoke-virtual {v1, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_21
    iget-object p1, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    if-ne v4, p1, :cond_23

    if-eqz v3, :cond_23

    .line 122
    iget-object p1, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 123
    :cond_22
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H5;

    .line 124
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p3

    if-eqz p3, :cond_22

    .line 125
    iget-object p3, p0, Lcom/android/tools/r8/internal/B3;->e:Lcom/android/tools/r8/internal/h80;

    .line 126
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    sget-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 128
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 129
    iget-object p2, p3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_23
    :goto_10
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 24
    iget-object p2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/C3;->d:Lcom/android/tools/r8/internal/Gg;

    .line 25
    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p3

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    check-cast p3, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object v0, p2, Lcom/android/tools/r8/internal/Gg;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Dq;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/Gg;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object p2, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p4, p1, v0}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Dq;->a(Lcom/android/tools/r8/graph/A2;)Z

    .line 169
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    sget-object p2, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 171
    new-instance v0, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v0, p2, p4}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 172
    iget-object p2, p3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/t3;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 173
    new-instance v0, Lcom/android/tools/r8/internal/oA0;

    invoke-direct {v0, p0, p6, p2, p3}, Lcom/android/tools/r8/internal/oA0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;)V

    .line 174
    invoke-virtual {p1, p6, v0}, Lcom/android/tools/r8/internal/Pn;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/proto/j;

    .line 175
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 176
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 177
    sget-boolean p1, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez p1, :cond_9

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 179
    iget-object p2, p3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 181
    :cond_1
    invoke-virtual {p0, p6, p1, p3}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 182
    :cond_2
    invoke-virtual {p0, p6, p1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 183
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    if-eq p2, p3, :cond_8

    .line 184
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 185
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    sget-boolean p6, Lcom/android/tools/r8/internal/t3;->e:Z

    if-nez p6, :cond_4

    if-eq p3, p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 187
    :cond_4
    :goto_0
    iget-object v0, p4, Lcom/android/tools/r8/internal/t3;->c:Lcom/android/tools/r8/internal/r6;

    .line 188
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v1, 0x1

    .line 189
    invoke-virtual {v0, p3, p2, v1}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 190
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 191
    iget-object p4, p4, Lcom/android/tools/r8/internal/t3;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p4, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-nez p6, :cond_7

    .line 192
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p3

    if-nez p3, :cond_7

    .line 193
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 194
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 195
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 196
    :cond_7
    :goto_1
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/U6;->e()V

    return-void

    .line 197
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result p2

    if-nez p2, :cond_9

    .line 198
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 199
    iget-object p3, p4, Lcom/android/tools/r8/internal/t3;->d:Ljava/util/IdentityHashMap;

    .line 200
    invoke-virtual {p3, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/U6;->e()V

    :cond_9
    :goto_2
    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/internal/Dq;)V
    .locals 1

    .line 37
    invoke-static {p1}, Lcom/android/tools/r8/internal/B3;->a(Ljava/util/Set;)Ljava/util/HashMap;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/Zz0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/Zz0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/internal/t3;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p2, p1, p5}, Lcom/android/tools/r8/internal/B3;->a(Ljava/util/Map;Ljava/util/Set;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 158
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    if-eq p1, p2, :cond_2

    .line 159
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    sget-boolean p5, Lcom/android/tools/r8/internal/t3;->e:Z

    if-nez p5, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 161
    :cond_1
    :goto_0
    iget-object p3, p3, Lcom/android/tools/r8/internal/t3;->b:Lcom/android/tools/r8/internal/r6;

    .line 162
    iget-object p3, p3, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 p5, 0x1

    .line 163
    invoke-virtual {p3, p2, p1, p5}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 164
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/U6;->e()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/t3;)Z
    .locals 9

    .line 145
    new-instance v7, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/U6;-><init>()V

    .line 146
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 148
    new-instance v0, Lcom/android/tools/r8/internal/Qz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qz0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Rz0;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/tools/r8/internal/Rz0;-><init>(Lcom/android/tools/r8/internal/B3;Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 149
    new-instance v6, Lcom/android/tools/r8/internal/Sz0;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/Sz0;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/Tz0;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Tz0;-><init>(Lcom/android/tools/r8/internal/B3;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/internal/t3;Lcom/android/tools/r8/internal/U6;)V

    invoke-virtual {p1, v8, v6}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 150
    new-instance v4, Lcom/android/tools/r8/internal/Dq;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 151
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->k()Lcom/android/tools/r8/internal/h80;

    move-result-object v2

    .line 152
    new-instance v0, Lcom/android/tools/r8/internal/Uz0;

    invoke-direct {v0, p0, p2, v4, v2}, Lcom/android/tools/r8/internal/Uz0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/h80;)V

    .line 153
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->g(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 154
    new-instance v8, Lcom/android/tools/r8/internal/Vz0;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Vz0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/t3;Lcom/android/tools/r8/internal/U6;)V

    invoke-virtual {p1, v8}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 155
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/I1;->i(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 139
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 141
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 144
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/A3;Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 249
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IH;->c()V

    .line 250
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    new-instance p1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {p1, p4}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 252
    iget-object p4, p0, Lcom/android/tools/r8/internal/B3;->h:Ljava/util/HashMap;

    .line 253
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/o50;

    const/4 p4, 0x1

    if-nez p1, :cond_0

    return p4

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/A3;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/A3;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 255
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/F2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;)Z
    .locals 1

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H0;

    .line 4
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/qA0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/qA0;-><init>(Lcom/android/tools/r8/internal/B3;)V

    .line 6
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/proto/j;
    .locals 9

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->d:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/A3;

    if-nez v0, :cond_0

    .line 44
    sget-object p1, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    return-object p1

    .line 45
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/A3;->d:Lcom/android/tools/r8/internal/W;

    .line 46
    iget-object v2, v0, Lcom/android/tools/r8/internal/A3;->c:Lcom/android/tools/r8/internal/Q;

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    iget-object v0, v0, Lcom/android/tools/r8/internal/A3;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nI;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    iget-boolean v8, v0, Lcom/android/tools/r8/internal/A3;->a:Z

    .line 50
    iget-object v5, v0, Lcom/android/tools/r8/internal/A3;->b:Lcom/android/tools/r8/graph/M2;

    .line 51
    new-instance v6, Lcom/android/tools/r8/internal/bA0;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/bA0;-><init>(Lcom/android/tools/r8/internal/SG;)V

    .line 52
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/cA0;

    invoke-direct {v7, v1}, Lcom/android/tools/r8/internal/cA0;-><init>(Lcom/android/tools/r8/internal/nI;)V

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    .line 53
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/graph/M2;Ljava/util/function/IntFunction;Ljava/util/function/IntPredicate;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 54
    sget-boolean v0, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v0, :cond_3

    .line 55
    iget-object v0, p1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 56
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    const v2, 0x7fffffff

    .line 57
    invoke-static {v2, v0}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v0

    .line 58
    invoke-static {v8}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/proto/j;
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 38
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B3;->b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/Map;Ljava/util/Set;Lcom/android/tools/r8/graph/F5;)V
    .locals 6

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vw;->g()Lcom/android/tools/r8/internal/xt;

    move-result-object v0

    .line 12
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v2

    .line 15
    sget-boolean v3, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 17
    iget-object v5, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v5, v5, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_2
    :goto_0
    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/q1;->l:Z

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 20
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    .line 21
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    .line 22
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    if-nez v3, :cond_7

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    iget-object v4, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v4, v4, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2, v4}, Lcom/android/tools/r8/internal/pu0;->c(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-nez v2, :cond_a

    if-nez v3, :cond_e

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->P:Z

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne v0, v1, :cond_b

    goto :goto_2

    .line 30
    :cond_b
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/Z1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    .line 31
    :cond_c
    iget-object v2, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    move-object v1, v0

    .line 32
    :cond_e
    :goto_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eq v1, v0, :cond_f

    .line 33
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 34
    :cond_f
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/util/Set;)V
    .locals 6

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 5
    new-instance v3, Lcom/android/tools/r8/internal/Pz0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Pz0;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/aA0;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/internal/aA0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 6
    iget-object v3, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v3, v3, Lcom/android/tools/r8/internal/C3;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v4, Lcom/android/tools/r8/internal/jA0;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/jA0;-><init>(Ljava/util/Set;)V

    new-instance v5, Lcom/android/tools/r8/internal/kA0;

    invoke-direct {v5, p0, v0}, Lcom/android/tools/r8/internal/kA0;-><init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/lA0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/lA0;-><init>(Lcom/android/tools/r8/internal/B3;)V

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Pm0;
    .locals 3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->e:Lcom/android/tools/r8/internal/h80;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 14
    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 15
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/B3;->l:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->e:Lcom/android/tools/r8/internal/h80;

    .line 19
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 20
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 21
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/tools/r8/internal/F1;

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 24
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/B3;->k:Lcom/android/tools/r8/internal/C3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B3;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/I1;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->B()Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
