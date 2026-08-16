.class public final Lcom/android/tools/r8/internal/VU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;

.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:Ljava/lang/String;

.field public d:Lcom/android/tools/r8/naming/k$a;

.field public final synthetic e:Lcom/android/tools/r8/internal/XU;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/XU;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/VU;->a:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/VU;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/VU;->c:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->X:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 1

    .line 221
    new-instance v0, Lcom/android/tools/r8/internal/TY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TY0;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/aZ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/aZ0;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static f(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static g(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/VU;
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    .line 16
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->f1:Z

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_EXPERIMENTAL:Lcom/android/tools/r8/naming/MapVersion;

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->STABLE:Lcom/android/tools/r8/naming/MapVersion;

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/VU;->a:Lcom/android/tools/r8/graph/H2;

    new-instance v2, Lcom/android/tools/r8/internal/cZ0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/cZ0;-><init>(Lcom/android/tools/r8/internal/VU;Lcom/android/tools/r8/naming/MapVersion;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/K40;)Lcom/android/tools/r8/internal/VU;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/K40;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/android/tools/r8/naming/mappinginformation/a;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/mappinginformation/a;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/ZY0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/ZY0;-><init>()V

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/naming/g;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/internal/VU;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    move-result-object p1

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/Kf;->a:Lcom/android/tools/r8/internal/Kf;

    new-instance v1, Lcom/android/tools/r8/internal/bZ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bZ0;-><init>()V

    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/naming/g;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/WU;
    .locals 5

    .line 230
    new-instance v0, Lcom/android/tools/r8/internal/WU;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 231
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    .line 232
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    .line 234
    invoke-virtual {v3, v4, p1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 235
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 236
    invoke-virtual {v2, v1, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 238
    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/WU;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/naming/V$b;
    .locals 1

    .line 216
    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 217
    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->a:Lcom/android/tools/r8/graph/H2;

    .line 218
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->b:Lcom/android/tools/r8/graph/M2;

    .line 219
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 220
    :goto_0
    invoke-static {p1, p2}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/naming/V$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/naming/V$b;
    .locals 1

    .line 215
    new-instance v0, Lcom/android/tools/r8/internal/hZ0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/hZ0;-><init>(Lcom/android/tools/r8/internal/VU;Lcom/android/tools/r8/graph/A2;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V$b;

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/naming/g;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/s0;Z)Lcom/android/tools/r8/naming/k$b;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    :cond_0
    if-eqz p8, :cond_4

    .line 250
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v2

    if-nez v2, :cond_4

    .line 251
    sget-boolean p1, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez p1, :cond_2

    .line 252
    iget-boolean p2, p3, Lcom/android/tools/r8/internal/B60;->f:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez p1, :cond_c

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 254
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 255
    iget-object v2, p3, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 256
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 257
    iget-object v3, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v3, v3, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 258
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->M:Ljava/util/IdentityHashMap;

    .line 259
    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 260
    sget-boolean v4, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez v4, :cond_6

    iget-object v5, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v5, v5, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v5, v5, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 261
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    .line 262
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    .line 263
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 264
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 265
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v5, v5, Lcom/android/tools/r8/internal/XU;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 267
    :cond_8
    :goto_2
    iget-object v2, p3, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 268
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/V$b;

    if-nez v1, :cond_9

    move-object v0, p6

    goto :goto_3

    .line 269
    :cond_9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 270
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v3, :cond_a

    const/16 v4, 0x100

    if-ge v3, v4, :cond_a

    .line 271
    iget-object v0, p7, Lcom/android/tools/r8/naming/v0;->a:[Lcom/android/tools/r8/naming/M0;

    aget-object v0, v0, v3

    goto :goto_3

    :cond_a
    new-instance v4, Lcom/android/tools/r8/naming/M0;

    .line 272
    invoke-direct {v4, v3, v3, v0}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    move-object v0, v4

    .line 273
    :goto_3
    invoke-virtual {p4}, Lcom/android/tools/r8/naming/V$c;->c()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual {p2, p5, v2, v0, v3}, Lcom/android/tools/r8/naming/g;->a(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)Lcom/android/tools/r8/naming/k$b;

    move-result-object v0

    .line 275
    iget-boolean v2, p3, Lcom/android/tools/r8/internal/B60;->e:Z

    if-eqz v2, :cond_b

    .line 276
    sget-object v2, Lcom/android/tools/r8/internal/Fk0;->c:Lcom/android/tools/r8/naming/MapVersion;

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v4, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v4, v4, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 280
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->d1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-static {v4}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v4

    .line 282
    new-instance v5, Lcom/android/tools/r8/internal/Ek0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/Ek0;-><init>(Lcom/android/tools/r8/references/ClassReference;)V

    .line 283
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v4, Lcom/android/tools/r8/internal/Dk0;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/Dk0;-><init>(I)V

    .line 285
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v4, Lcom/android/tools/r8/internal/Fk0;

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/internal/Fk0;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 287
    new-instance v2, Lcom/android/tools/r8/internal/gZ0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/gZ0;-><init>()V

    .line 288
    invoke-virtual {v0, v2, v4}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    .line 289
    :cond_b
    iget-object p3, p3, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    if-nez p3, :cond_0

    .line 290
    :cond_c
    :goto_4
    sget-boolean p1, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez p1, :cond_e

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_5
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Z)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 240
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 241
    sget-boolean v1, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    .line 242
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object p1, p1, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 244
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 245
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 246
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    new-instance p3, Lcom/android/tools/r8/internal/dZ0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/dZ0;-><init>()V

    .line 247
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/util/List;Lcom/android/tools/r8/internal/D60;Z)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 55
    iget-object v1, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v3, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v3, v3, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/naming/V$b;

    move-result-object v11

    .line 58
    iget-object v2, v0, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->C0()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 59
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v2

    .line 60
    sget-boolean v3, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez v3, :cond_a

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v4

    .line 63
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/UU;

    .line 64
    iget-object v6, v6, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 65
    :goto_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 66
    sget-boolean v7, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    if-nez v7, :cond_5

    .line 67
    iget-boolean v7, v6, Lcom/android/tools/r8/internal/B60;->f:Z

    if-nez v7, :cond_4

    goto :goto_3

    .line 68
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_5
    :goto_3
    iget-object v6, v6, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    goto :goto_1

    .line 70
    :cond_6
    iget-object v7, v6, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 71
    sget-boolean v8, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez v8, :cond_8

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_4
    if-nez v8, :cond_1

    .line 72
    iget-boolean v6, v6, Lcom/android/tools/r8/internal/B60;->f:Z

    if-ne v4, v6, :cond_9

    goto :goto_0

    .line 73
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_5

    .line 75
    :cond_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/UU;

    .line 76
    iget-object v4, v4, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 77
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    .line 78
    :cond_d
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v5

    if-nez v5, :cond_f

    .line 79
    instance-of v4, v4, Lcom/android/tools/r8/internal/y60;

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_e
    const/4 v3, 0x1

    goto :goto_6

    :cond_f
    :goto_5
    const/4 v3, 0x0

    .line 80
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    move v14, v2

    move v15, v3

    goto :goto_a

    .line 81
    :cond_10
    :goto_7
    sget-boolean v2, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez v2, :cond_12

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_12
    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->c1()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 83
    iget-object v4, v0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    const/4 v14, 0x0

    :goto_9
    const/4 v15, 0x0

    goto :goto_a

    .line 84
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v2

    .line 85
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    move v14, v2

    goto :goto_9

    .line 86
    :goto_a
    sget-boolean v2, Lcom/android/tools/r8/internal/VU;->f:Z

    move-object/from16 v3, p1

    if-nez v2, :cond_14

    invoke-virtual {v9, v4, v3, v14}, Lcom/android/tools/r8/internal/VU;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Z)V

    .line 87
    :cond_14
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_15

    if-nez v15, :cond_15

    .line 88
    sget-object v5, Lcom/android/tools/r8/internal/Kf;->a:Lcom/android/tools/r8/internal/Kf;

    .line 89
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_15
    iget-object v5, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v6, v9, Lcom/android/tools/r8/internal/VU;->b:Lcom/android/tools/r8/graph/M2;

    if-eq v5, v6, :cond_16

    const/4 v5, 0x1

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    .line 91
    :goto_b
    invoke-static {v4, v5}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/naming/V$b;

    move-result-object v5

    .line 92
    iget-object v6, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v6, v6, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    .line 93
    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v6, v6, Lcom/android/tools/r8/internal/nJ$p;->f1:Z

    if-eqz v6, :cond_17

    .line 94
    sget-object v6, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_EXPERIMENTAL:Lcom/android/tools/r8/naming/MapVersion;

    goto :goto_c

    .line 95
    :cond_17
    sget-object v6, Lcom/android/tools/r8/naming/MapVersion;->STABLE:Lcom/android/tools/r8/naming/MapVersion;

    .line 96
    :goto_c
    iget-object v7, v9, Lcom/android/tools/r8/internal/VU;->b:Lcom/android/tools/r8/graph/M2;

    .line 97
    invoke-static {v6}, Lcom/android/tools/r8/internal/Jf0;->a(Lcom/android/tools/r8/naming/MapVersion;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 98
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 99
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1f

    if-ne v4, v1, :cond_1f

    goto :goto_d

    .line 100
    :cond_18
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 101
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 102
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    iget-object v13, v4, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-ne v12, v13, :cond_1f

    iget-object v12, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-ne v12, v7, :cond_1f

    :goto_d
    if-nez v2, :cond_3d

    .line 103
    iget-object v1, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->J1:Lcom/android/tools/r8/internal/nJ$i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    sget-object v2, Lcom/android/tools/r8/internal/nJ$i;->b:Lcom/android/tools/r8/internal/nJ$i;

    if-ne v1, v2, :cond_19

    return-void

    .line 105
    :cond_19
    iget-object v1, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 106
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/M60;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/j1;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_1d

    .line 107
    :cond_1a
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    goto/16 :goto_1d

    .line 109
    :cond_1b
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v0

    .line 111
    iget-object v0, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v1, :cond_1e

    aget-object v2, v0, v12

    .line 112
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Np;->l()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 113
    iget-object v0, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_1d

    .line 116
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_1e
    return-void

    .line 117
    :cond_1f
    invoke-static {v6}, Lcom/android/tools/r8/internal/Jf0;->a(Lcom/android/tools/r8/naming/MapVersion;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz v15, :cond_22

    .line 118
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/UU;

    .line 119
    iget-object v2, v2, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 120
    :goto_f
    iget-object v3, v2, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 121
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 122
    iget-object v2, v2, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    goto :goto_f

    .line 123
    :cond_21
    iget-object v2, v2, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 124
    invoke-static {v2}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/naming/V$b;

    move-result-object v2

    .line 125
    iget-object v3, v2, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v2, v2, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    iget-object v3, v11, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    .line 126
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_10

    .line 127
    :cond_22
    iget-object v0, v5, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v5, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    iget-object v2, v11, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    .line 129
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_11

    .line 130
    :cond_23
    :goto_10
    invoke-static {v1}, Lcom/android/tools/r8/internal/If0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/If0;

    move-result-object v0

    .line 131
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_24
    :goto_11
    new-instance v0, Lcom/android/tools/r8/naming/V;

    .line 133
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {v0, v5, v11, v1}, Lcom/android/tools/r8/naming/V;-><init>(Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/position/Position;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/naming/g;->a(Lcom/android/tools/r8/naming/V;)Lcom/android/tools/r8/naming/g;

    .line 135
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/tools/r8/naming/V$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v1, v2}, Lcom/android/tools/r8/naming/g;->a(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)Lcom/android/tools/r8/naming/k$b;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/android/tools/r8/internal/iZ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/iZ0;-><init>(Lcom/android/tools/r8/naming/k$b;)V

    .line 138
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 139
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 140
    :cond_25
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 141
    invoke-virtual {v0, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v12, Lcom/android/tools/r8/internal/jZ0;

    invoke-direct {v12, v9, v0}, Lcom/android/tools/r8/internal/jZ0;-><init>(Lcom/android/tools/r8/internal/VU;Ljava/util/Map;)V

    .line 143
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/UU;

    .line 144
    iget-object v2, v2, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 145
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 147
    check-cast v2, Lcom/android/tools/r8/internal/A60;

    .line 148
    iget-object v1, v2, Lcom/android/tools/r8/internal/A60;->h:Lcom/android/tools/r8/graph/A2;

    :cond_27
    if-eqz v1, :cond_28

    .line 149
    iget-object v0, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XU;->d:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/UY0;

    invoke-direct {v2, v9}, Lcom/android/tools/r8/internal/UY0;-><init>(Lcom/android/tools/r8/internal/VU;)V

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/WU;

    .line 151
    iput-object v10, v0, Lcom/android/tools/r8/internal/WU;->b:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/android/tools/r8/internal/O40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/O40;-><init>()V

    .line 153
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_28
    new-instance v0, Lcom/android/tools/r8/internal/VY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/VY0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 155
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    .line 156
    :goto_12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 157
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/UU;

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    move-object v0, v1

    const/4 v2, 0x1

    .line 158
    :goto_13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_34

    .line 159
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/UU;

    .line 160
    iget-object v4, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget v4, v4, Lcom/android/tools/r8/internal/XU;->h:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_29

    move-object/from16 v17, v8

    goto :goto_18

    .line 161
    :cond_29
    iget-object v6, v3, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 162
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v6

    .line 163
    iget-object v5, v0, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 164
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v5

    move-object/from16 v17, v8

    const/4 v8, 0x3

    if-ne v5, v6, :cond_2d

    .line 165
    iget v4, v0, Lcom/android/tools/r8/internal/UU;->a:I

    iget v5, v3, Lcom/android/tools/r8/internal/UU;->a:I

    if-ne v4, v5, :cond_2a

    const/4 v4, 0x1

    goto :goto_14

    :cond_2a
    const/4 v4, 0x0

    :goto_14
    if-ne v2, v8, :cond_2b

    if-eqz v4, :cond_31

    move v2, v8

    goto :goto_18

    :cond_2b
    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c

    const/4 v2, 0x1

    goto :goto_18

    :cond_2c
    const/4 v2, 0x2

    goto :goto_18

    :cond_2d
    const/4 v8, 0x2

    if-ne v2, v8, :cond_2e

    goto :goto_17

    .line 166
    :cond_2e
    iget v2, v3, Lcom/android/tools/r8/internal/UU;->a:I

    iget v8, v0, Lcom/android/tools/r8/internal/UU;->a:I

    sub-int/2addr v2, v8

    if-ltz v2, :cond_2f

    if-gt v2, v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_15

    :cond_2f
    const/4 v4, 0x0

    :goto_15
    sub-int/2addr v6, v5

    if-ne v6, v2, :cond_30

    const/4 v2, 0x1

    goto :goto_16

    :cond_30
    const/4 v2, 0x0

    :goto_16
    if-eqz v4, :cond_31

    if-eqz v2, :cond_31

    const/4 v2, 0x3

    goto :goto_18

    :cond_31
    :goto_17
    const/4 v2, 0x4

    .line 167
    :goto_18
    iget-object v4, v3, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 168
    iget-object v5, v0, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    const/4 v6, 0x4

    if-ne v2, v6, :cond_32

    goto :goto_19

    .line 169
    :cond_32
    iget-object v6, v4, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v8, v5, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v6, v8, :cond_35

    .line 170
    iget-object v6, v4, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    iget-object v8, v5, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 171
    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 172
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60;->i()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/B60;->i()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 173
    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 174
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60;->j()Lcom/android/tools/r8/internal/AH;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/B60;->j()Lcom/android/tools/r8/internal/AH;

    move-result-object v5

    .line 175
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto :goto_19

    :cond_33
    add-int/lit8 v7, v7, 0x1

    move-object v0, v3

    move-object/from16 v8, v17

    goto/16 :goto_13

    :cond_34
    move-object/from16 v17, v8

    .line 176
    :cond_35
    :goto_19
    iget-object v2, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v2, v2, Lcom/android/tools/r8/internal/XU;->g:Lcom/android/tools/r8/naming/t0;

    .line 177
    iget v3, v1, Lcom/android/tools/r8/internal/UU;->a:I

    iget v4, v0, Lcom/android/tools/r8/internal/UU;->a:I

    .line 178
    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/naming/t0;->a(II)Lcom/android/tools/r8/naming/M0;

    move-result-object v5

    .line 179
    iget-object v8, v1, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 180
    iget-object v0, v0, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 181
    iget-object v1, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/XU;->g:Lcom/android/tools/r8/naming/t0;

    .line 182
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/naming/t0;->a(II)Lcom/android/tools/r8/naming/M0;

    move-result-object v6

    if-eqz v14, :cond_36

    .line 183
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v2, 0x1

    goto :goto_1a

    :cond_36
    const/4 v2, 0x0

    .line 184
    :goto_1a
    sget-boolean v0, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez v0, :cond_38

    if-eqz v2, :cond_38

    .line 185
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 186
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/B60;->f:Z

    if-eqz v0, :cond_37

    goto :goto_1b

    .line 187
    :cond_37
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_38
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    move-result-object v2

    iget-object v0, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v4, v0, Lcom/android/tools/r8/internal/XU;->f:Lcom/android/tools/r8/naming/s0;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v3, v8

    move-object/from16 v18, v4

    move-object v4, v11

    move/from16 v19, v7

    move-object/from16 v7, v18

    move-object/from16 v10, v17

    move/from16 v17, v14

    move-object v14, v8

    move v8, v15

    .line 189
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/VU;->a(Ljava/util/function/Function;Lcom/android/tools/r8/naming/g;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/s0;Z)Lcom/android/tools/r8/naming/k$b;

    move-result-object v0

    .line 190
    instance-of v1, v14, Lcom/android/tools/r8/internal/y60;

    if-eqz v1, :cond_39

    .line 191
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/B60;->a()Lcom/android/tools/r8/internal/y60;

    move-result-object v1

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_39
    new-instance v1, Lcom/android/tools/r8/internal/WY0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/WY0;-><init>(Lcom/android/tools/r8/naming/k$b;)V

    .line 193
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 194
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move-object v8, v10

    move/from16 v14, v17

    move/from16 v0, v19

    move-object/from16 v10, p2

    goto/16 :goto_12

    .line 195
    :cond_3a
    new-instance v10, Lcom/android/tools/r8/internal/IH;

    invoke-static/range {p2 .. p2}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/UU;

    .line 196
    iget v0, v0, Lcom/android/tools/r8/internal/UU;->a:I

    .line 197
    invoke-direct {v10, v0}, Lcom/android/tools/r8/internal/IH;-><init>(I)V

    .line 198
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map$Entry;

    .line 199
    new-instance v8, Lcom/android/tools/r8/internal/ME;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ME;-><init>()V

    .line 200
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/y60;

    .line 201
    iget-object v7, v0, Lcom/android/tools/r8/internal/y60;->h:Lcom/android/tools/r8/internal/AH;

    .line 202
    new-instance v6, Lcom/android/tools/r8/internal/XY0;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v5, v8

    move-object/from16 p1, v10

    move-object v10, v6

    move-object v6, v12

    move-object/from16 v16, v12

    move-object v12, v7

    move-object v7, v11

    move-object/from16 v17, v13

    move-object v13, v8

    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/internal/XY0;-><init>(Lcom/android/tools/r8/internal/VU;ZLcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/F60;Lcom/android/tools/r8/internal/YE;Ljava/util/function/Function;Lcom/android/tools/r8/naming/V$b;Z)V

    .line 203
    invoke-virtual {v12, v10}, Lcom/android/tools/r8/internal/AH;->a(Ljava/util/function/BiConsumer;)V

    .line 204
    iget-object v0, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XU;->d:Ljava/util/IdentityHashMap;

    .line 205
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y60;

    .line 206
    iget-object v1, v1, Lcom/android/tools/r8/internal/y60;->i:Lcom/android/tools/r8/graph/A2;

    .line 207
    new-instance v2, Lcom/android/tools/r8/internal/YY0;

    invoke-direct {v2, v9}, Lcom/android/tools/r8/internal/YY0;-><init>(Lcom/android/tools/r8/internal/VU;)V

    .line 208
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/WU;

    .line 209
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$b;

    .line 210
    iget-object v0, v0, Lcom/android/tools/r8/internal/WU;->c:Ljava/util/ArrayList;

    .line 211
    invoke-static {v1, v13}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    goto :goto_1c

    .line 212
    :cond_3b
    sget-boolean v0, Lcom/android/tools/r8/internal/VU;->f:Z

    if-nez v0, :cond_3d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3d

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/naming/g;->a(Lcom/android/tools/r8/naming/V$b;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_1d

    .line 214
    :cond_3c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3d
    :goto_1d
    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/graph/g1;)V
    .locals 6

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v2, v2, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v3, v3, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-object v4, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 28
    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 29
    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 30
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 31
    invoke-virtual {v3, v4, v5, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 32
    iget-object v2, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v3, :cond_1

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/VU;->b:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 34
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/VU;->b:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_1
    new-instance v3, Lcom/android/tools/r8/naming/V$a;

    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->w0()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v1, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/android/tools/r8/naming/V$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/naming/V$a;

    move-result-object v1

    .line 39
    new-instance v2, Lcom/android/tools/r8/naming/V;

    .line 40
    sget-object v4, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {v2, v3, v1, v4}, Lcom/android/tools/r8/naming/V;-><init>(Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/position/Position;)V

    .line 41
    invoke-static {p1}, Lcom/android/tools/r8/internal/Jf0;->a(Lcom/android/tools/r8/naming/MapVersion;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v3, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 43
    new-instance p1, Lcom/android/tools/r8/internal/Hf0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Hf0;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/eZ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eZ0;-><init>()V

    .line 45
    iget-object v1, v2, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    sget-object v3, Lcom/android/tools/r8/naming/V;->f:Ljava/util/List;

    if-ne v1, v3, :cond_4

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    .line 47
    :cond_4
    iget-object v1, v2, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;Ljava/util/function/Consumer;)V

    .line 48
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 49
    sget-object p1, Lcom/android/tools/r8/internal/Kf;->a:Lcom/android/tools/r8/internal/Kf;

    new-instance p2, Lcom/android/tools/r8/internal/fZ0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/fZ0;-><init>()V

    .line 50
    iget-object v0, v2, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/naming/V;->f:Ljava/util/List;

    if-ne v0, v1, :cond_6

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    .line 52
    :cond_6
    iget-object v0, v2, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;Ljava/util/function/Consumer;)V

    .line 53
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/naming/g;->a(Lcom/android/tools/r8/naming/V;)Lcom/android/tools/r8/naming/g;

    return-void
.end method

.method public final synthetic a(ZLcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/F60;Lcom/android/tools/r8/internal/YE;Ljava/util/function/Function;Lcom/android/tools/r8/naming/V$b;ZLjava/lang/Integer;Lcom/android/tools/r8/internal/B60;)V
    .locals 10

    move-object v9, p0

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, p9

    goto :goto_0

    :cond_0
    move-object v0, p3

    move-object/from16 v3, p9

    .line 223
    invoke-interface {p3, v3}, Lcom/android/tools/r8/internal/F60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    .line 224
    :goto_0
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v2, p4

    invoke-interface {p4, v0, v1}, Lcom/android/tools/r8/internal/NE;->b(II)I

    .line 225
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VU;->b()Lcom/android/tools/r8/naming/g;

    move-result-object v2

    iget-object v0, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XU;->g:Lcom/android/tools/r8/naming/t0;

    .line 226
    invoke-virtual {v0, v1, v1}, Lcom/android/tools/r8/naming/t0;->a(II)Lcom/android/tools/r8/naming/M0;

    move-result-object v5

    iget-object v0, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XU;->g:Lcom/android/tools/r8/naming/t0;

    .line 227
    invoke-virtual/range {p9 .. p9}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    invoke-virtual/range {p9 .. p9}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/naming/t0;->a(II)Lcom/android/tools/r8/naming/M0;

    move-result-object v6

    iget-object v0, v9, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v7, v0, Lcom/android/tools/r8/internal/XU;->f:Lcom/android/tools/r8/naming/s0;

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v3, p9

    move-object/from16 v4, p6

    move/from16 v8, p7

    .line 228
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/VU;->a(Ljava/util/function/Function;Lcom/android/tools/r8/naming/g;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/s0;Z)Lcom/android/tools/r8/naming/k$b;

    move-result-object v0

    .line 229
    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v0, v0, Lcom/android/tools/r8/naming/M0;->b:I

    move-object v1, p2

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/IH;->d(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/WU;
    .locals 5

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/WU;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4, p1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 9
    invoke-virtual {v2, v1, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/WU;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/naming/g;
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->d:Lcom/android/tools/r8/naming/k$a;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->e:Lcom/android/tools/r8/internal/XU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XU;->c:Lcom/android/tools/r8/naming/b$a;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VU;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/VU;->b:Lcom/android/tools/r8/graph/M2;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/naming/b$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/position/Position;)Lcom/android/tools/r8/naming/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/VU;->d:Lcom/android/tools/r8/naming/k$a;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/VU;->d:Lcom/android/tools/r8/naming/k$a;

    return-object v0
.end method
