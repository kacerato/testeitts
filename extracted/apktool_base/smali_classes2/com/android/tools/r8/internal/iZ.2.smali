.class public Lcom/android/tools/r8/internal/iZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/iZ;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/hZ;Lcom/android/tools/r8/graph/F5;Z)Lcom/android/tools/r8/graph/H5;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 15
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/O1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/F5;Z)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->p:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/W;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 3
    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)V
    .locals 4

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p2, v2, p1}, Lcom/android/tools/r8/internal/gZ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/gZ;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H0;)Z
    .locals 2

    .line 111
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->p:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/W;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 3
    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->p:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->p:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 6

    .line 205
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 206
    iget-object p2, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    .line 207
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 208
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    .line 209
    new-instance v0, Lcom/android/tools/r8/internal/oe1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oe1;-><init>()V

    .line 210
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/pe1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pe1;-><init>()V

    .line 211
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    sget-boolean p2, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez p2, :cond_2

    .line 213
    instance-of p2, p1, Lcom/android/tools/r8/graph/I0;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 215
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    .line 216
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 217
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 218
    new-instance p2, Lcom/android/tools/r8/internal/qe1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/qe1;-><init>()V

    .line 219
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    iget-object v5, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/re1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/re1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/se1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/se1;-><init>()V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {p1}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v4

    .line 222
    iget-object p1, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 223
    invoke-interface {p2, p1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    .line 224
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/E0;
    .locals 3

    .line 190
    sget-boolean v0, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-nez v0, :cond_3

    .line 193
    instance-of v0, p1, Lcom/android/tools/r8/graph/e0;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 195
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->t0:Z

    if-nez v0, :cond_5

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_4

    .line 198
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_2

    .line 199
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->M()Lcom/android/tools/r8/graph/e0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e0;->K()Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 200
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/de1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/de1;-><init>(Lcom/android/tools/r8/internal/iZ;Lcom/android/tools/r8/graph/E0;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    return-object p1

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 203
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ne1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/ne1;-><init>(Lcom/android/tools/r8/internal/iZ;Lcom/android/tools/r8/graph/H0;)V

    .line 204
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 6

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    instance-of p2, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz p2, :cond_0

    .line 227
    iget-object p2, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    .line 228
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 229
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    .line 230
    new-instance v0, Lcom/android/tools/r8/internal/fe1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fe1;-><init>()V

    .line 231
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/ge1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ge1;-><init>()V

    .line 232
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    .line 233
    :cond_0
    sget-boolean p2, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez p2, :cond_2

    .line 234
    instance-of p2, p1, Lcom/android/tools/r8/graph/e0;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 236
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    .line 237
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 238
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 239
    new-instance p2, Lcom/android/tools/r8/internal/he1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/he1;-><init>()V

    .line 240
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->M()Lcom/android/tools/r8/graph/e0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e0;->K()Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    iget-object v5, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/ie1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ie1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/je1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/je1;-><init>()V

    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    invoke-static {p1}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v4

    .line 243
    iget-object p1, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 244
    invoke-interface {p2, p1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    .line 245
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/hZ;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p2, p2, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    .line 60
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/O1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    .line 63
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/O1;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Z)Lcom/android/tools/r8/graph/L2;
    .locals 2

    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const-string p2, "-$$Nest$fget"

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 182
    const-string p2, "-$$Nest$sfget"

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-nez p2, :cond_2

    .line 184
    const-string p2, "-$$Nest$fput"

    goto :goto_0

    .line 185
    :cond_2
    const-string p2, "-$$Nest$sfput"

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    .line 187
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/F9;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 124
    new-instance v0, Lcom/android/tools/r8/internal/te1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/te1;-><init>(Lcom/android/tools/r8/internal/iZ;Lcom/android/tools/r8/internal/F9;)V

    .line 125
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 126
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 150
    new-instance v0, Lcom/android/tools/r8/internal/ke1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ke1;-><init>(Lcom/android/tools/r8/internal/iZ;Lcom/android/tools/r8/internal/ga;)V

    .line 151
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 152
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 1

    .line 115
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/internal/F9;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 119
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 122
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 123
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/hZ;
    .locals 6

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 67
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_7

    .line 69
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H0;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_4

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 71
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    .line 72
    sget-boolean p3, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 73
    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    .line 74
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    iget-object v1, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    .line 78
    iget-object v3, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v4, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 79
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v3

    const/4 v5, 0x0

    .line 80
    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    aput-object p2, v2, v1

    .line 82
    iget-object p2, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3, p2, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 83
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    .line 84
    iget-object v1, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 85
    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    goto :goto_3

    .line 86
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iZ;->d(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 87
    :goto_3
    new-instance p3, Lcom/android/tools/r8/internal/hZ;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/hZ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/G0;)V

    return-object p3

    :cond_7
    :goto_4
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/F9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 127
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->H()Z

    move-result p1

    .line 128
    iget-object p3, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iget-object p4, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p7}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p5

    .line 130
    iget-object p6, p5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p4, p6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p4}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p5

    :goto_0
    const/4 p3, 0x0

    if-eqz p5, :cond_1

    .line 131
    invoke-virtual {p5, p2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p3

    :goto_1
    if-eqz p2, :cond_3

    .line 132
    invoke-static {p2, p7}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H0;)Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_2

    .line 133
    :cond_2
    new-instance p3, Lcom/android/tools/r8/internal/hZ;

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/iZ;->b(Lcom/android/tools/r8/graph/F0;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/hZ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/G0;)V

    .line 134
    :cond_3
    :goto_2
    sget-boolean p1, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez p1, :cond_5

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    if-nez p1, :cond_7

    .line 135
    iget-object p1, p3, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    .line 136
    check-cast p1, Lcom/android/tools/r8/graph/F0;

    .line 137
    instance-of p2, p1, Lcom/android/tools/r8/graph/F5;

    if-eqz p2, :cond_7

    .line 138
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 139
    iget-object p2, p3, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 140
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 141
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 142
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_4

    .line 143
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 144
    :cond_7
    :goto_4
    new-instance p1, Lcom/android/tools/r8/internal/ga;

    .line 145
    iget-object p2, p3, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 146
    iget-object p3, p3, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    .line 147
    check-cast p3, Lcom/android/tools/r8/graph/F0;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    const/16 p4, 0xb8

    invoke-direct {p1, p4, p2, p3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 148
    sget p2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 149
    new-instance p2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 153
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 154
    new-instance p3, Lcom/android/tools/r8/internal/ve1;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/ve1;-><init>(Lcom/android/tools/r8/internal/iZ;)V

    .line 155
    invoke-virtual {p0, p2, p7, p3}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/hZ;

    move-result-object p2

    .line 156
    sget-boolean p3, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 157
    iget-object p5, p2, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    .line 158
    check-cast p5, Lcom/android/tools/r8/graph/H0;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    instance-of p5, p5, Lcom/android/tools/r8/graph/H5;

    if-eqz p5, :cond_3

    .line 160
    iget-object p5, p2, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    .line 161
    check-cast p5, Lcom/android/tools/r8/graph/H0;

    .line 162
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p5

    .line 163
    iget-object p6, p2, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 164
    iget-object p5, p5, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 165
    iget-object p5, p5, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 166
    invoke-virtual {p5, p6}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p5

    if-eqz p5, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 168
    :cond_3
    :goto_1
    iget-object p5, p2, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    .line 169
    check-cast p5, Lcom/android/tools/r8/graph/H0;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p5

    if-eqz p5, :cond_6

    if-nez p3, :cond_5

    .line 170
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 171
    invoke-interface {p4, p1}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 172
    new-instance p1, Lcom/android/tools/r8/internal/x9;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/x9;-><init>()V

    new-instance p3, Lcom/android/tools/r8/internal/ga;

    .line 173
    iget-object p2, p2, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    const/4 p4, 0x0

    const/16 p5, 0xb7

    .line 174
    invoke-direct {p3, p5, p2, p4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 175
    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1

    .line 176
    :cond_6
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    .line 177
    iget-object p2, p2, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 178
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p1

    const/16 p4, 0xb8

    invoke-direct {p3, p4, p2, p1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 179
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V
    .locals 3

    .line 42
    new-instance v0, Lcom/android/tools/r8/internal/le1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/le1;-><init>(Lcom/android/tools/r8/internal/iZ;)V

    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/hZ;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 45
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p1, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    .line 49
    check-cast v0, Lcom/android/tools/r8/graph/H0;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 50
    iget-object v1, p1, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 51
    new-instance v2, Lcom/android/tools/r8/internal/me1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/tools/r8/internal/me1;-><init>(Lcom/android/tools/r8/internal/iZ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/hZ;)V

    .line 52
    invoke-virtual {p4, v2, v1}, Lcom/android/tools/r8/internal/Z70;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/iZ;->b(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    .line 55
    invoke-interface {p3, v0, p1, p4, p2}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V

    return-void

    .line 56
    :cond_0
    invoke-interface {p3, v0, p1, p2}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/internal/W9;)V
    .locals 7

    .line 23
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 25
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W9;->H()Z

    move-result v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/l1;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    return-void

    .line 28
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p4

    .line 30
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    return-void

    .line 32
    :cond_1
    instance-of v0, p4, Lcom/android/tools/r8/internal/ha;

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object p4

    .line 34
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object p4

    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    .line 36
    invoke-static {p4, v0, v1, p1}, Lcom/android/tools/r8/internal/kR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 37
    iget-object p4, p4, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object p4, p4, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    .line 38
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    sget-boolean v0, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_3
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p4

    .line 41
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 90
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 92
    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H0;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 93
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/hZ;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/iZ;->b(Lcom/android/tools/r8/graph/F0;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/hZ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/G0;)V

    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 94
    iget-object p1, v0, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->a0()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 95
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 96
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 97
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-nez p1, :cond_5

    .line 98
    iget-object p1, v0, Lcom/android/tools/r8/internal/hZ;->b:Lcom/android/tools/r8/graph/G0;

    .line 99
    check-cast p1, Lcom/android/tools/r8/graph/F0;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    .line 100
    iget-object v1, v0, Lcom/android/tools/r8/internal/hZ;->a:Lcom/android/tools/r8/graph/A2;

    .line 101
    new-instance v2, Lcom/android/tools/r8/internal/ue1;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/tools/r8/internal/ue1;-><init>(Lcom/android/tools/r8/internal/hZ;Lcom/android/tools/r8/graph/F5;Z)V

    .line 102
    invoke-virtual {p5, v2, v1}, Lcom/android/tools/r8/internal/Z70;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p5

    if-eqz p2, :cond_4

    .line 103
    invoke-interface {p4, p1, p5, p3}, Lcom/android/tools/r8/internal/kZ;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void

    .line 104
    :cond_4
    invoke-interface {p4, p1, p5, p3}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 18
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ee1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/tools/r8/internal/ee1;-><init>(Lcom/android/tools/r8/internal/iZ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    .line 22
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v3, v2, p2}, Lcom/android/tools/r8/internal/gZ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/gZ;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->a(Ljava/util/function/IntConsumer;)V

    .line 17
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;)Z
    .locals 5

    .line 105
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 108
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 109
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/G0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 110
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H0;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/F0;Z)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    xor-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    add-int/2addr v1, v0

    .line 5
    new-array v0, v1, [Lcom/android/tools/r8/graph/M2;

    if-nez p2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 7
    aput-object v2, v0, v1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/F0;Z)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v2, v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->t0:Z

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    return-object p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "-$$Nest$sm"

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "-$$Nest$m"

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iZ;->c(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method
