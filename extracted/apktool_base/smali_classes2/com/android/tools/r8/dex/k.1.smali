.class public Lcom/android/tools/r8/dex/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/nJ;

.field public final c:Lcom/android/tools/r8/dex/r;

.field public final d:Ljava/util/function/Predicate;

.field public final e:Ljava/util/Optional;

.field public final f:Ljava/util/Collection;

.field public g:Ljava/util/List;

.field public h:Ljava/util/HashSet;

.field public final i:Lcom/android/tools/r8/n;

.field public j:Lcom/android/tools/r8/internal/iJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/r0;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xU;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/dex/p;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/dex/p;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/tools/r8/dex/q;

    invoke-direct {v0}, Lcom/android/tools/r8/dex/q;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/dex/k;->c:Lcom/android/tools/r8/dex/r;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/dex/k;->e:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/tools/r8/dex/k;->i:Lcom/android/tools/r8/n;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lu/O0;

    invoke-direct {p3, p2}, Lu/O0;-><init>(Lcom/android/tools/r8/graph/h;)V

    invoke-static {p3}, Lcom/android/tools/r8/internal/X60;->a(Ljava/util/function/Function;)Ljava/util/function/Predicate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/dex/k;->d:Ljava/util/function/Predicate;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u1;->d()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/k;->f:Ljava/util/Collection;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/L;)Lcom/android/tools/r8/dex/F;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/dex/L;->a(II)Lcom/android/tools/r8/dex/G;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/tools/r8/dex/F;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/dex/G;->b:Lcom/android/tools/r8/dex/y;

    .line 7
    iget-object v2, v1, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 10
    iget p0, p0, Lcom/android/tools/r8/dex/H;->w:I

    .line 11
    invoke-direct {v0, v2, p0}, Lcom/android/tools/r8/dex/F;-><init>(Lcom/android/tools/r8/dex/s;I)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)Lcom/android/tools/r8/dex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/dex/W;",
            ")",
            "Lcom/android/tools/r8/dex/k;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/dex/l;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/dex/l;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/n;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/dex/k;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/dex/k;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/n;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/pb0;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pb0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/dex/W;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/W;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/Oa0;)Ljava/lang/Boolean;
    .locals 1

    .line 201
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lu/X0;

    invoke-direct {v0, p1}, Lu/X0;-><init>(Lcom/android/tools/r8/internal/Oa0;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;
    .locals 1

    .line 361
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    const/16 v0, 0x2f

    .line 362
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".class"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Ljava/lang/String;
    .locals 5

    .line 363
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    .line 366
    iget-object v3, v0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    .line 367
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v3, v0, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v3, v4

    .line 368
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    new-instance v3, Lu/I0;

    invoke-direct {v3, v2}, Lu/I0;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/o2;->a(Ljava/util/function/Consumer;)V

    .line 370
    new-instance v0, Lu/K0;

    invoke-direct {v0}, Lu/K0;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 371
    new-instance v0, Lu/L0;

    invoke-direct {v0, v1, p0}, Lu/L0;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;Lcom/android/tools/r8/internal/pb0;I)Ljava/util/Map;
    .locals 1

    .line 218
    new-instance p2, Ljava/util/IdentityHashMap;

    .line 219
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    .line 220
    sget-boolean v0, Lcom/android/tools/r8/internal/pb0;->g:Z

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p1, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 223
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    .line 224
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 225
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/util/IdentityHashMap;-><init>(I)V

    return-object p2
.end method

.method public static synthetic a(Lcom/android/tools/r8/DataResourceConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/DataEntryResource;)V
    .locals 0

    .line 294
    invoke-interface {p0, p2, p1}, Lcom/android/tools/r8/DataResourceConsumer;->accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/DataResourceConsumer;)V
    .locals 3

    .line 295
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 297
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    .line 298
    new-instance v2, Lu/G0;

    invoke-direct {v2, v0, v1}, Lu/G0;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/TreeMap;)V

    .line 299
    invoke-virtual {p1, p0, v2}, Lcom/android/tools/r8/graph/l;->a(Lcom/android/tools/r8/FeatureSplit;Ljava/util/function/BiConsumer;)V

    .line 300
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 302
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/services/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    .line 304
    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/DataEntryResource;->fromBytes([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object p1

    .line 305
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/DataResourceConsumer;->accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/dex/j;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 202
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H2;->b(Lcom/android/tools/r8/dex/X;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/tools/r8/graph/f3;->c(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 12
    iput-object p0, p1, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/concurrent/ExecutorService;)V
    .locals 20

    move-object/from16 v0, p0

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    .line 235
    iget-object v8, v7, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 236
    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 237
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/y;)V

    .line 238
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->T1:Lcom/android/tools/r8/StringConsumer;

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    .line 240
    iget-object v2, v2, Lcom/android/tools/r8/shaking/o3;->a:Ljava/lang/String;

    .line 241
    invoke-static {v8, v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;Ljava/lang/String;)V

    .line 242
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->T1:Lcom/android/tools/r8/StringConsumer;

    invoke-static {v8, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;)V

    .line 243
    :cond_0
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    if-eqz v1, :cond_1

    .line 244
    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/y;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v8, v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;Ljava/lang/String;)V

    .line 246
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    invoke-static {v8, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;)V

    .line 247
    :cond_1
    new-instance v9, Lcom/android/tools/r8/naming/N;

    invoke-direct {v9, v0}, Lcom/android/tools/r8/naming/N;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 248
    iget-object v10, v7, Lcom/android/tools/r8/internal/nJ;->r:Lcom/android/tools/r8/DataResourceConsumer;

    .line 249
    new-instance v11, Lcom/android/tools/r8/dex/f0;

    invoke-direct {v11, v0}, Lcom/android/tools/r8/dex/f0;-><init>(Lcom/android/tools/r8/graph/y;)V

    if-eqz v10, :cond_3

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/x0;->a:Lcom/android/tools/r8/internal/hC;

    .line 251
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 252
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/tools/r8/DataResourceProvider;

    .line 253
    :try_start_0
    new-instance v15, Lcom/android/tools/r8/dex/h;

    move-object v1, v15

    move-object v2, v11

    move-object v3, v10

    move-object v4, v7

    move-object v5, v9

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/dex/h;-><init>(Lcom/android/tools/r8/dex/f0;Lcom/android/tools/r8/DataResourceConsumer;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/naming/N;Ljava/util/HashSet;)V

    invoke-interface {v14, v15}, Lcom/android/tools/r8/DataResourceProvider;->accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    new-instance v1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :cond_2
    sget-object v1, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-static {v1, v0, v8, v10}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/DataResourceConsumer;)V

    .line 256
    invoke-virtual {v9}, Lcom/android/tools/r8/naming/N;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    new-instance v2, Lu/R0;

    invoke-direct {v2, v10, v8}, Lu/R0;-><init>(Lcom/android/tools/r8/DataResourceConsumer;Lcom/android/tools/r8/internal/Ef0;)V

    .line 257
    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    :cond_3
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 259
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v1, v1, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_4
    :goto_1
    if-ge v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/FeatureSplit;

    .line 263
    invoke-virtual {v5}, Lcom/android/tools/r8/FeatureSplit;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/tools/r8/ProgramConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 264
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 265
    invoke-virtual {v5}, Lcom/android/tools/r8/FeatureSplit;->getProgramResourceProviders()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 266
    invoke-interface {v14}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 267
    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    :cond_6
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 269
    new-instance v13, Lcom/android/tools/r8/internal/Pv;

    invoke-direct {v13, v5, v12, v6}, Lcom/android/tools/r8/internal/Pv;-><init>(Lcom/android/tools/r8/FeatureSplit;Ljava/util/HashSet;Lcom/android/tools/r8/DataResourceConsumer;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    :goto_3
    if-ge v3, v12, :cond_9

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v13, v3, 0x1

    move-object v14, v1

    check-cast v14, Lcom/android/tools/r8/internal/Pv;

    .line 271
    iget-object v15, v14, Lcom/android/tools/r8/internal/Pv;->c:Lcom/android/tools/r8/DataResourceConsumer;

    iget-object v1, v14, Lcom/android/tools/r8/internal/Pv;->b:Ljava/util/HashSet;

    .line 272
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 273
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/tools/r8/DataResourceProvider;

    .line 274
    :try_start_1
    new-instance v5, Lcom/android/tools/r8/dex/h;

    move-object v1, v5

    move-object v2, v11

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v18, v10

    move-object v10, v5

    move-object v5, v9

    move-object/from16 v19, v9

    move-object v9, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/dex/h;-><init>(Lcom/android/tools/r8/dex/f0;Lcom/android/tools/r8/DataResourceConsumer;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/naming/N;Ljava/util/HashSet;)V

    invoke-interface {v9, v10}, Lcom/android/tools/r8/DataResourceProvider;->accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    :try_end_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    goto :goto_4

    :catch_1
    move-exception v0

    .line 275
    new-instance v1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move-object/from16 v19, v9

    move-object/from16 v18, v10

    .line 276
    iget-object v1, v14, Lcom/android/tools/r8/internal/Pv;->a:Lcom/android/tools/r8/FeatureSplit;

    iget-object v2, v14, Lcom/android/tools/r8/internal/Pv;->c:Lcom/android/tools/r8/DataResourceConsumer;

    invoke-static {v1, v0, v8, v2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/DataResourceConsumer;)V

    move v3, v13

    goto :goto_3

    .line 277
    :cond_9
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->p:Ljava/util/function/Consumer;

    if-eqz v1, :cond_c

    .line 278
    sget-boolean v1, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez v1, :cond_b

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 280
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 281
    :cond_b
    :goto_5
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->p:Ljava/util/function/Consumer;

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->N()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    .line 283
    new-instance v3, Lcom/android/tools/r8/internal/Oi;

    .line 284
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Oi;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 285
    new-instance v2, Lcom/android/tools/r8/internal/Gi;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Gi;-><init>(Lcom/android/tools/r8/internal/Oi;)V

    .line 286
    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 287
    :cond_c
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->q:Ljava/util/function/Consumer;

    if-eqz v1, :cond_f

    .line 288
    sget-boolean v1, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez v1, :cond_e

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    .line 290
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_e
    :goto_6
    iget-object v1, v7, Lcom/android/tools/r8/internal/nJ;->q:Ljava/util/function/Consumer;

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v0, v2, v3}, Lcom/android/tools/r8/internal/U7;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/Xa0;

    move-result-object v0

    .line 293
    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/r0;Ljava/util/TreeMap;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 306
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 308
    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    .line 309
    new-instance v0, Lu/Y0;

    invoke-direct {v0, p0}, Lu/Y0;-><init>(Lcom/android/tools/r8/naming/r0;)V

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lu/Z0;

    invoke-direct {p3}, Lu/Z0;-><init>()V

    .line 310
    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lu/a1;

    invoke-direct {p3}, Lu/a1;-><init>()V

    .line 311
    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 312
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 313
    invoke-static {p0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 314
    invoke-virtual {p1, p2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 373
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/ByteBufferProvider;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/dex/F;
    .locals 8

    .line 357
    new-instance v7, Lcom/android/tools/r8/dex/L;

    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/dex/k;->c:Lcom/android/tools/r8/dex/r;

    .line 358
    new-instance v2, Lcom/android/tools/r8/dex/y;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/dex/y;-><init>(Lcom/android/tools/r8/ByteBufferProvider;)V

    const/4 v6, 0x1

    move-object v0, v7

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/dex/L;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/dex/r;Lcom/android/tools/r8/dex/t0;Z)V

    .line 359
    new-instance p1, Lu/M0;

    invoke-direct {p1, v7}, Lu/M0;-><init>(Lcom/android/tools/r8/dex/L;)V

    const-string p2, "collect"

    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    .line 360
    new-instance p1, Lu/N0;

    invoke-direct {p1, v7}, Lu/N0;-><init>(Lcom/android/tools/r8/dex/L;)V

    const-string p2, "generate"

    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/dex/F;

    return-object p1
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/naming/I0;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 228
    sget-boolean v0, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 229
    new-instance p2, Lcom/android/tools/r8/dex/f;

    invoke-direct {p2}, Lcom/android/tools/r8/dex/f;-><init>()V

    goto :goto_1

    .line 230
    :cond_2
    new-instance v0, Lcom/android/tools/r8/dex/g;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/dex/g;-><init>(Lcom/android/tools/r8/naming/I0;)V

    move-object p2, v0

    .line 231
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    invoke-interface {v0, p2}, Lcom/android/tools/r8/SourceFileProvider;->get(Lcom/android/tools/r8/SourceFileEnvironment;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 233
    :goto_2
    new-instance v0, Lu/H0;

    invoke-direct {v0, p2}, Lu/H0;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p2
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/ns0;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/dex/k;->c(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/concurrent/ExecutorService;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .line 99
    new-instance v0, Lu/F0;

    invoke-direct {v0, p0, p3}, Lu/F0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/List;)V

    iget-object p3, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 100
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p3

    .line 101
    invoke-static {p2, v0, p3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .locals 11

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 16
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    if-eqz v2, :cond_3

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 19
    iget-object v4, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 21
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    iget-object v4, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ$p;->H:Ljava/util/function/Consumer;

    if-eqz v4, :cond_0

    .line 25
    invoke-interface {v4, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v7, v2

    goto :goto_1

    :cond_3
    move-object v7, v0

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    .line 29
    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 30
    instance-of v3, v2, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v3, :cond_4

    .line 31
    new-instance p1, Lcom/android/tools/r8/dex/k0;

    .line 32
    check-cast v2, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    .line 33
    invoke-interface {v2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer;->combineSyntheticClassesWithPrimaryClass()Z

    move-result v0

    invoke-direct {p1, p0, v7, v0}, Lcom/android/tools/r8/dex/k0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Z)V

    goto/16 :goto_7

    .line 34
    :cond_4
    sget-boolean v2, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez v2, :cond_6

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_6
    :goto_2
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez v2, :cond_a

    .line 38
    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 40
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    .line 43
    sget-boolean v2, Lcom/android/tools/r8/shaking/o2;->g:Z

    if-nez v2, :cond_9

    .line 44
    iget-object v2, v0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    .line 45
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_9
    :goto_3
    iget-object v2, v0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    .line 47
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->U0:Z

    if-eqz v0, :cond_a

    .line 49
    new-instance p1, Lcom/android/tools/r8/dex/o0;

    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {p1, p0, v7, v0}, Lcom/android/tools/r8/dex/o0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)V

    goto :goto_7

    .line 50
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    .line 51
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/po0;->e:Z

    if-eqz v0, :cond_b

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 53
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    :goto_5
    move-object v10, v0

    goto :goto_6

    .line 54
    :cond_b
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v0

    goto :goto_5

    .line 55
    :goto_6
    new-instance v0, Lcom/android/tools/r8/dex/l0;

    iget-object v8, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    move-object v5, v0

    move-object v6, p0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/dex/l0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/qo0;)V

    move-object p1, v0

    .line 56
    :goto_7
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/i0;->a()Ljava/util/ArrayList;

    move-result-object p1

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 58
    new-instance v0, Lcom/android/tools/r8/dex/k0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/dex/k0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Z)V

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/k0;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/tools/r8/dex/k;->h:Ljava/util/HashSet;

    .line 61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    .line 63
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 64
    instance-of v1, v1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v1, :cond_c

    .line 65
    new-instance v1, Lcom/android/tools/r8/internal/gJ;

    .line 66
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 67
    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/gJ;-><init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/graph/y;)V

    goto :goto_8

    .line 68
    :cond_c
    new-instance v1, Lcom/android/tools/r8/internal/fJ;

    .line 69
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 70
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/fJ;-><init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;)V

    :goto_8
    iput-object v1, p0, Lcom/android/tools/r8/dex/k;->j:Lcom/android/tools/r8/internal/iJ;

    .line 71
    :cond_d
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    .line 72
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    .line 73
    check-cast v1, Lcom/android/tools/r8/dex/t0;

    .line 74
    iget-object v1, v1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 75
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    return-object p1
.end method

.method public final a()Ljava/util/Map;
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lu/y0;

    invoke-direct {v1}, Lu/y0;-><init>()V

    .line 214
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    new-instance v3, Lu/J0;

    invoke-direct {v3}, Lu/J0;-><init>()V

    .line 215
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Collection;Ljava/util/function/IntFunction;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object v1

    .line 217
    new-instance v2, Lu/T0;

    invoke-direct {v2, v0, v1}, Lu/T0;-><init>(Ljava/util/Collection;Lcom/android/tools/r8/internal/pb0;)V

    new-instance v3, Lu/U0;

    invoke-direct {v3, v1}, Lu/U0;-><init>(Lcom/android/tools/r8/internal/pb0;)V

    new-instance v1, Lu/J0;

    invoke-direct {v1}, Lu/J0;-><init>()V

    invoke-static {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Collection;Ljava/util/function/IntFunction;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/dex/t0;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    sget-boolean v0, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

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

    .line 376
    iget-object v1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 377
    iget-object v1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->m:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 378
    iget-object v1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 379
    iget-object v1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->o:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez v0, :cond_b

    .line 380
    iget-object v1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->p:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    if-nez v0, :cond_d

    .line 381
    iget-object p1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object p1, p1, Lcom/android/tools/r8/dex/s0;->q:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 347
    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    new-instance v1, Lu/Q0;

    invoke-direct {v1}, Lu/Q0;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 5

    .line 315
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 317
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    .line 319
    iget-object v3, p0, Lcom/android/tools/r8/dex/k;->d:Ljava/util/function/Predicate;

    .line 320
    invoke-interface {v1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 321
    :cond_1
    new-instance v4, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    .line 322
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    .line 323
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 325
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/r0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/r0;

    move-result-object v1

    .line 326
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/r0;

    .line 327
    array-length v1, v0

    if-nez v1, :cond_2

    .line 328
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/tools/r8/graph/u0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    move-object v0, v1

    .line 329
    :goto_1
    iput-object v0, p1, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    .line 330
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/graph/g1;->k:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)V
    .locals 5

    .line 331
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 333
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/android/tools/r8/dex/k;->d:Ljava/util/function/Predicate;

    .line 336
    invoke-interface {v1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 337
    :cond_1
    new-instance v4, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    .line 338
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;

    .line 339
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 341
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/r0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/r0;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/r0;

    .line 343
    array-length v1, v0

    if-nez v1, :cond_2

    .line 344
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/tools/r8/graph/u0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    move-object v0, v1

    .line 345
    :goto_1
    iput-object v0, p1, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    .line 346
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/graph/j1;->q:Lcom/android/tools/r8/graph/H3$g;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 353
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->o0:Z

    .line 355
    invoke-interface {v0, p2, p1, v1, v2}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/y;Z)Lcom/android/tools/r8/graph/f3;

    move-result-object p1

    .line 356
    invoke-interface {p1}, Lcom/android/tools/r8/graph/f3;->P()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Ljava/util/Collection;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->o0:Z

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p1, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 351
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 352
    new-instance v1, Lu/P0;

    invoke-direct {v1}, Lu/P0;-><init>()V

    new-instance v2, Lu/S0;

    invoke-direct {v2, p0, p1}, Lu/S0;-><init>(Lcom/android/tools/r8/dex/k;Lcom/android/tools/r8/graph/w5;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/C7;Ljava/util/ArrayList;)V
    .locals 10

    .line 203
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->f:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    .line 207
    iget-object v8, p0, Lcom/android/tools/r8/dex/k;->e:Ljava/util/Optional;

    new-instance v9, Lu/D0;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lu/D0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/List;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/u1;Ljava/util/List;)V

    .line 208
    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 209
    new-instance p1, Lcom/android/tools/r8/F1;

    invoke-direct {p1}, Lcom/android/tools/r8/F1;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 210
    new-instance p1, Lu/E0;

    invoke-direct {p1, v7}, Lu/E0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-static {v6, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/k;->g:Ljava/util/List;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    .line 119
    const-string v1, "DexApplication.write"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 120
    new-instance v1, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/internal/C7;Ljava/util/ArrayList;)V

    .line 123
    iget-object v3, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v3, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    if-nez v4, :cond_0

    .line 124
    sget-object v3, Lcom/android/tools/r8/internal/K40;->b:Lcom/android/tools/r8/internal/I40;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/Collection;Lcom/android/tools/r8/naming/I0;)Lcom/android/tools/r8/graph/L2;

    .line 127
    sget-object v3, Lcom/android/tools/r8/internal/K40;->a:Lcom/android/tools/r8/internal/H40;

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/k;->a()Ljava/util/Map;

    move-result-object v3

    .line 129
    new-instance v4, Lcom/android/tools/r8/dex/e;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/tools/r8/dex/e;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/Map;Lcom/android/tools/r8/internal/C7;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v4, Lcom/android/tools/r8/internal/J40;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/J40;-><init>(Ljava/util/Map;)V

    move-object v3, v4

    .line 131
    :goto_0
    :try_start_0
    const-string v4, "Insert Attribute Annotations"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 132
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/k;->b()V

    .line 133
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 134
    iget-object v4, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    const-string v4, "Set call-site contexts"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 136
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/dex/k;->b(Ljava/util/concurrent/ExecutorService;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 138
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 139
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v5

    .line 141
    iget-boolean v5, v5, Lcom/android/tools/r8/internal/po0;->d:Z

    if-eqz v5, :cond_3

    .line 142
    new-instance v5, Lcom/android/tools/r8/internal/mo0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/mo0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 143
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/mo0;->a()Ljava/util/Set;

    move-result-object v6

    .line 144
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/H2;

    .line 145
    invoke-virtual {v5, v7, v6}, Lcom/android/tools/r8/internal/mo0;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V

    goto :goto_2

    .line 146
    :cond_3
    const-string v4, "Distribute"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 147
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object v4

    .line 148
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 149
    iget-object v5, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v5, v5, Lcom/android/tools/r8/internal/nJ;->T:Z

    if-eqz v5, :cond_4

    .line 150
    const-string v5, "Encode checksums"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 151
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/List;)V

    .line 152
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 153
    :cond_4
    sget-boolean v5, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/android/tools/r8/dex/k;->f:Ljava/util/Collection;

    if-eqz v6, :cond_6

    .line 154
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 155
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/u1;->d()Ljava/util/Collection;

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 156
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    if-nez v5, :cond_9

    .line 157
    iget-object v5, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    new-instance v6, Lu/V0;

    invoke-direct {v6, v4}, Lu/V0;-><init>(Ljava/util/List;)V

    .line 158
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 159
    iget-object v5, v5, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v5, :cond_7

    .line 160
    invoke-interface {v6, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 161
    :cond_7
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 162
    :cond_9
    :goto_4
    const-string v5, "Sort Annotations"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 163
    new-instance v5, Lcom/android/tools/r8/dex/j;

    .line 164
    iget-object v6, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v6

    .line 165
    invoke-direct {v5, v6}, Lcom/android/tools/r8/dex/j;-><init>(Lcom/android/tools/r8/naming/r0;)V

    .line 166
    iget-object v6, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v6

    new-instance v7, Lu/W0;

    invoke-direct {v7, v5}, Lu/W0;-><init>(Lcom/android/tools/r8/dex/j;)V

    invoke-interface {v6, v7}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 167
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 168
    const-string v5, "Pre-write phase"

    .line 169
    invoke-static {p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object v5

    .line 170
    invoke-virtual {p0, p2, v4, v2}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 171
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 172
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ls0;->a()V

    .line 173
    iget-object v5, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 174
    iget-object v5, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    .line 175
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/oj;->a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/lj;

    move-result-object v5

    .line 176
    iget-object v6, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 177
    invoke-static {p1, v6, v0, v3, v5}, Lcom/android/tools/r8/internal/iS;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/K40;Lcom/android/tools/r8/internal/lj;)Lcom/android/tools/r8/naming/I0;

    move-result-object p1

    .line 178
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 179
    :cond_a
    const-string p1, "Compute lazy strings"

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_d

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/dex/i;

    .line 182
    sget-boolean v6, Lcom/android/tools/r8/dex/i;->b:Z

    if-nez v6, :cond_c

    .line 183
    iget-boolean v6, v5, Lcom/android/tools/r8/dex/i;->a:Z

    if-nez v6, :cond_b

    goto :goto_6

    .line 184
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 185
    :cond_c
    :goto_6
    invoke-virtual {v5}, Lcom/android/tools/r8/dex/i;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    const/4 v7, 0x1

    .line 186
    iput-boolean v7, v5, Lcom/android/tools/r8/dex/i;->a:Z

    .line 187
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 188
    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 189
    invoke-virtual {p0, p2, v4, p1, v0}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/List;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/ns0;)V

    .line 190
    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->V1:Lcom/android/tools/r8/StringConsumer;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->c:Lcom/android/tools/r8/dex/r;

    invoke-virtual {p1}, Lcom/android/tools/r8/dex/r;->a()Z

    move-result p1

    if-nez p1, :cond_10

    .line 191
    sget-boolean p1, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    .line 192
    iget-object p1, p1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 193
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez p1, :cond_e

    goto :goto_7

    .line 194
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 195
    :cond_f
    :goto_7
    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->c:Lcom/android/tools/r8/dex/r;

    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 196
    :cond_10
    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    .line 197
    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->i:Lcom/android/tools/r8/n;

    if-nez p1, :cond_11

    .line 198
    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, v4, p2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 200
    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 8

    .line 79
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/android/tools/r8/internal/Ad0;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Ad0;-><init>(I)V

    .line 81
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 82
    iget-object v3, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v3

    .line 83
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H2;->F1()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/tools/r8/internal/Ad0;->a(Ljava/lang/Object;J)J

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/t0;

    .line 85
    new-instance v2, Lcom/android/tools/r8/dex/n;

    invoke-direct {v2}, Lcom/android/tools/r8/dex/n;-><init>()V

    .line 86
    iget-object v3, v0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 87
    iget-object v3, v3, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 88
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 89
    iget-object v5, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v5

    .line 90
    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/Ad0;->b(Ljava/lang/Object;)J

    move-result-wide v6

    .line 92
    iget-object v4, v2, Lcom/android/tools/r8/dex/n;->a:Lcom/android/tools/r8/internal/D20;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/tools/r8/internal/D20;->a(Ljava/lang/Object;J)J

    goto :goto_2

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 94
    iget-object v3, v0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/L2;)Z

    .line 95
    iget-object v0, v0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/n0;->a()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/u1;Ljava/util/List;Lcom/android/tools/r8/dex/W;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance p4, Lcom/android/tools/r8/dex/d;

    invoke-direct {p4, p5, p2, p3}, Lcom/android/tools/r8/dex/d;-><init>(Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 98
    :cond_0
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/concurrent/ExecutorService;Ljava/util/List;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 103
    const-string v0, "Write files"

    .line 104
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v1

    invoke-virtual {p4, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object p4

    .line 105
    new-instance v0, Lu/C0;

    invoke-direct {v0, p0, p3}, Lu/C0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/List;)V

    iget-object p3, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 106
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p3

    .line 107
    invoke-static {p2, v0, p3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p1

    .line 108
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 109
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ls0;->a()V

    .line 110
    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->j:Lcom/android/tools/r8/internal/iJ;

    if-eqz p1, :cond_0

    .line 111
    iget-object p2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/iJ;->a(Lcom/android/tools/r8/graph/y;)V

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    .line 113
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    if-eqz p1, :cond_1

    .line 114
    iget-object p2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 115
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 116
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 117
    invoke-interface {p1, p2}, Lcom/android/tools/r8/GlobalSyntheticsConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/ns0;
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 2
    iget-object v1, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/dex/t0;)V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->h:Ljava/util/HashSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->j:Lcom/android/tools/r8/internal/iJ;

    :goto_0
    move-object v3, v1

    goto :goto_3

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->i:Lcom/android/tools/r8/n;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p2, Lcom/android/tools/r8/dex/t0;->f:Lcom/android/tools/r8/graph/L2;

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    .line 10
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 11
    check-cast v1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    goto :goto_0

    .line 12
    :cond_4
    iget-object v1, p2, Lcom/android/tools/r8/dex/t0;->d:Lcom/android/tools/r8/FeatureSplit;

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/FeatureSplit;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    .line 14
    sget-boolean v3, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez v3, :cond_6

    instance-of v3, v1, Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_6
    :goto_2
    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/DexIndexedConsumer;

    goto :goto_3

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    .line 17
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 18
    check-cast v1, Lcom/android/tools/r8/DexIndexedConsumer;

    goto :goto_0

    .line 19
    :goto_3
    const-string v4, "Reindex for lazy strings"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->c()Lcom/android/tools/r8/graph/w5;

    move-result-object v4

    .line 21
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/List;)V

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 23
    const-string p1, "Write bytes"

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 24
    invoke-virtual {p0, v4, v3, p2, v0}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/ByteBufferProvider;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/dex/F;

    move-result-object p1

    .line 25
    new-instance v4, Lcom/android/tools/r8/ByteDataView;

    iget-object v5, p1, Lcom/android/tools/r8/dex/F;->a:Lcom/android/tools/r8/dex/s;

    .line 26
    invoke-virtual {v5}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 28
    iget-object v6, p1, Lcom/android/tools/r8/dex/F;->a:Lcom/android/tools/r8/dex/s;

    .line 29
    invoke-virtual {v6}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    .line 31
    iget v7, p1, Lcom/android/tools/r8/dex/F;->b:I

    invoke-direct {v4, v5, v6, v7}, Lcom/android/tools/r8/ByteDataView;-><init>([BII)V

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 33
    const-string v5, "Pass bytes to consumer"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 34
    instance-of v5, v1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v5, :cond_c

    .line 35
    check-cast v1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    .line 36
    iget-object v5, p2, Lcom/android/tools/r8/dex/t0;->f:Lcom/android/tools/r8/graph/L2;

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    :goto_4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 38
    iget-object v6, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v6, v6, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/H2;

    .line 39
    iget-object v7, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 40
    sget-boolean v8, Lcom/android/tools/r8/dex/t0;->k:Z

    if-nez v8, :cond_9

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_b
    iget-object v6, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 42
    invoke-interface {v1, v2, v4, v5, v6}, Lcom/android/tools/r8/DexFilePerClassFileConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_7

    .line 43
    :cond_c
    check-cast v1, Lcom/android/tools/r8/DexIndexedConsumer;

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v2

    .line 45
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 46
    iget-object v6, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v6, v6, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/H2;

    .line 47
    iget-object v7, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 48
    sget-boolean v8, Lcom/android/tools/r8/dex/t0;->k:Z

    if-nez v8, :cond_d

    if-eqz v7, :cond_e

    goto :goto_6

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_f
    iget-object v6, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/android/tools/r8/DexIndexedConsumer;->accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 50
    :goto_7
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    .line 51
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->q:Ljava/util/function/Consumer;

    if-eqz v1, :cond_12

    .line 52
    sget v1, Lcom/android/tools/r8/internal/pA;->a:I

    .line 53
    sget-object v1, Lcom/android/tools/r8/internal/oA;->a:Lcom/android/tools/r8/internal/hW;

    .line 54
    invoke-virtual {v4}, Lcom/android/tools/r8/ByteDataView;->getBuffer()[B

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/tools/r8/ByteDataView;->getOffset()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/tools/r8/ByteDataView;->getOffset()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/tools/r8/ByteDataView;->getLength()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int v6, v5, v7

    .line 55
    array-length v8, v2

    invoke-static {v5, v6, v8}, Lcom/android/tools/r8/internal/U60;->a(III)V

    if-ltz v7, :cond_10

    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_11

    .line 56
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hW;->a()Lcom/android/tools/r8/internal/lA;

    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/tools/r8/internal/l;

    invoke-virtual {v1, v2, v5, v7}, Lcom/android/tools/r8/internal/l;->a([BII)Lcom/android/tools/r8/internal/lA;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/gW;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gW;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object v1

    .line 58
    iput-object v1, p2, Lcom/android/tools/r8/dex/t0;->i:Lcom/android/tools/r8/internal/gA;

    goto :goto_9

    .line 59
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "expectedInputSize must be >= 0 but was %s"

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_12
    :goto_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 61
    invoke-virtual {v4}, Lcom/android/tools/r8/ByteDataView;->invalidate()V

    .line 62
    iget-object p1, p1, Lcom/android/tools/r8/dex/F;->a:Lcom/android/tools/r8/dex/s;

    invoke-virtual {p1}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/android/tools/r8/ByteBufferProvider;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 63
    :goto_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public final b()V
    .locals 20

    move-object/from16 v0, p0

    .line 64
    iget-object v1, v0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v3

    .line 66
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v4

    if-nez v3, :cond_0

    .line 67
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v5

    if-nez v5, :cond_0

    .line 70
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->x1()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v16, v1

    goto/16 :goto_e

    .line 71
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 73
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iget-object v8, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 74
    sget-object v9, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 75
    iget-object v9, v8, Lcom/android/tools/r8/graph/u1;->z5:Lcom/android/tools/r8/graph/M2;

    new-instance v10, Lcom/android/tools/r8/graph/W2;

    invoke-direct {v10, v6}, Lcom/android/tools/r8/graph/W2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    invoke-static {v9, v8, v10}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_1
    iget-object v6, v3, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    .line 78
    iget-object v8, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 79
    sget-object v9, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 80
    iget-object v9, v8, Lcom/android/tools/r8/graph/u1;->y5:Lcom/android/tools/r8/graph/M2;

    new-instance v10, Lcom/android/tools/r8/graph/R2$l;

    invoke-direct {v10, v6}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-static {v9, v8, v10}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/e4;

    .line 85
    iget-object v10, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    if-ne v10, v11, :cond_7

    if-nez v3, :cond_4

    .line 86
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 87
    iget-object v10, v9, Lcom/android/tools/r8/graph/e4;->d:Lcom/android/tools/r8/graph/L2;

    if-nez v10, :cond_4

    .line 88
    :cond_3
    iget-object v9, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v10, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 89
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H2;->G1()Lcom/android/tools/r8/internal/Ib;

    move-result-object v12

    .line 90
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/internal/Ib;)V

    goto :goto_2

    .line 91
    :cond_4
    iget-object v10, v0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v10

    .line 92
    iget-object v11, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v10, v9, v11}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 93
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->a()I

    move-result v11

    iget-object v12, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v12, v12, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 94
    new-instance v13, Lcom/android/tools/r8/graph/r0;

    new-instance v14, Lcom/android/tools/r8/graph/e1;

    iget-object v15, v12, Lcom/android/tools/r8/graph/u1;->A5:Lcom/android/tools/r8/graph/M2;

    new-instance v8, Lcom/android/tools/r8/graph/t0;

    .line 95
    const-string v7, "accessFlags"

    invoke-virtual {v12, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-static {v11}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object v11

    invoke-direct {v8, v7, v11}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    new-instance v7, Lcom/android/tools/r8/graph/t0;

    .line 96
    const-string v11, "name"

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    if-nez v10, :cond_5

    .line 97
    sget-object v10, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    goto :goto_3

    :cond_5
    new-instance v12, Lcom/android/tools/r8/graph/R2$k;

    invoke-direct {v12, v10}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    move-object v10, v12

    :goto_3
    invoke-direct {v7, v11, v10}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    filled-new-array {v8, v7}, [Lcom/android/tools/r8/graph/t0;

    move-result-object v7

    invoke-direct {v14, v15, v7}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    const/4 v7, 0x2

    invoke-direct {v13, v7, v14}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    .line 98
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->e()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 100
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 101
    iget-object v9, v8, Lcom/android/tools/r8/graph/u1;->y5:Lcom/android/tools/r8/graph/M2;

    new-instance v10, Lcom/android/tools/r8/graph/R2$l;

    invoke-direct {v10, v7}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-static {v9, v8, v10}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v7

    .line 102
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    const/4 v7, 0x2

    goto/16 :goto_2

    .line 103
    :cond_7
    iget-object v7, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    if-ne v7, v8, :cond_6

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->e()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 104
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 105
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 106
    iget-object v3, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 107
    sget-object v4, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 108
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/tools/r8/graph/R2;

    const/4 v7, 0x0

    .line 109
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 110
    new-instance v8, Lcom/android/tools/r8/graph/R2$l;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/M2;

    invoke-direct {v8, v9}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 111
    :cond_9
    iget-object v6, v3, Lcom/android/tools/r8/graph/u1;->B5:Lcom/android/tools/r8/graph/M2;

    new-instance v7, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v7, v4}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-static {v6, v3, v7}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v3

    .line 112
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_a
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H3$b;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 114
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v3

    .line 115
    iget-object v6, v0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v6

    .line 116
    iget-object v7, v0, Lcom/android/tools/r8/dex/k;->d:Ljava/util/function/Predicate;

    .line 117
    invoke-interface {v3}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v3, 0x0

    goto :goto_6

    .line 118
    :cond_b
    new-instance v8, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v8, v6, v7}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    .line 119
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$b;)Lcom/android/tools/r8/graph/H3$b;

    .line 120
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    :goto_6
    iget-object v6, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 122
    invoke-static {v3, v6}, Lcom/android/tools/r8/graph/r0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/r0;

    move-result-object v3

    .line 123
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_c
    iget-object v3, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->i()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 125
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 126
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v3

    iget-object v6, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 127
    sget-object v7, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/p5;

    .line 130
    new-instance v9, Lcom/android/tools/r8/graph/R2$l;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 131
    :cond_d
    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->F5:Lcom/android/tools/r8/graph/M2;

    new-instance v8, Lcom/android/tools/r8/graph/R2$b;

    sget-object v9, Lcom/android/tools/r8/graph/R2;->b:[Lcom/android/tools/r8/graph/R2;

    .line 132
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/tools/r8/graph/R2;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    .line 133
    invoke-static {v3, v6, v8}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v3

    .line 134
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_e
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->u1()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 136
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->U0()Lcom/android/tools/r8/graph/o5;

    move-result-object v3

    iget-object v6, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 137
    sget-object v7, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 138
    iget-object v7, v6, Lcom/android/tools/r8/graph/u1;->E5:Lcom/android/tools/r8/graph/M2;

    new-instance v8, Lcom/android/tools/r8/graph/R2$l;

    .line 139
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/o5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 140
    invoke-static {v7, v6, v8}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v3

    .line 141
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_f
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 143
    iget-object v3, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    sget-object v6, Lcom/android/tools/r8/internal/C2;->J:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ;->u0:Z

    if-eqz v3, :cond_12

    .line 145
    :cond_10
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->W0()Ljava/util/List;

    move-result-object v3

    iget-object v6, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 146
    sget-object v7, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 147
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A5;

    .line 149
    new-instance v9, Lcom/android/tools/r8/graph/R2$l;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/A5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 150
    :cond_11
    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->G5:Lcom/android/tools/r8/graph/M2;

    new-instance v8, Lcom/android/tools/r8/graph/R2$b;

    sget-object v9, Lcom/android/tools/r8/graph/R2;->b:[Lcom/android/tools/r8/graph/R2;

    .line 151
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/tools/r8/graph/R2;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    .line 152
    invoke-static {v3, v6, v8}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v3

    .line 153
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_12
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->x1()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ;->p0:Z

    if-eqz v3, :cond_16

    .line 155
    iget-object v3, v0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    sget-object v6, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 156
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    .line 157
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->X0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 158
    new-array v8, v7, [Lcom/android/tools/r8/graph/R2$k;

    .line 159
    new-array v9, v7, [Lcom/android/tools/r8/graph/R2$l;

    .line 160
    new-array v10, v7, [Lcom/android/tools/r8/graph/R2;

    .line 161
    new-array v11, v7, [Lcom/android/tools/r8/graph/R2$b;

    .line 162
    new-array v12, v7, [Lcom/android/tools/r8/graph/R2$b;

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v7, :cond_15

    .line 163
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->X0()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/P5;

    .line 164
    new-instance v15, Lcom/android/tools/r8/graph/R2$k;

    .line 165
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v4

    move-object/from16 v16, v1

    .line 166
    iget-object v1, v14, Lcom/android/tools/r8/graph/P5;->b:Lcom/android/tools/r8/graph/l1;

    .line 167
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    aput-object v15, v8, v13

    .line 168
    new-instance v1, Lcom/android/tools/r8/graph/R2$l;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/P5;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    aput-object v1, v9, v13

    .line 169
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/P5;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 170
    sget-object v1, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    aput-object v1, v10, v13

    goto :goto_a

    .line 171
    :cond_13
    new-instance v1, Lcom/android/tools/r8/graph/R2$a;

    .line 172
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/P5;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H3$e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/tools/r8/graph/r0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/r0;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/graph/R2$a;-><init>(Lcom/android/tools/r8/graph/e1;)V

    aput-object v1, v10, v13

    .line 173
    :goto_a
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/P5;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 174
    new-array v4, v1, [Lcom/android/tools/r8/graph/R2$d;

    .line 175
    new-array v15, v1, [Lcom/android/tools/r8/graph/R2$a;

    move-object/from16 v17, v3

    .line 176
    new-instance v3, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    aput-object v3, v11, v13

    .line 177
    new-instance v3, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v3, v15}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    aput-object v3, v12, v13

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_14

    move/from16 v18, v1

    .line 178
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/P5;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/r0;

    move/from16 v19, v7

    .line 179
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/r0;->m0()I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Lcom/android/tools/r8/graph/R2$d;->a(B)Lcom/android/tools/r8/graph/R2$d;

    move-result-object v7

    aput-object v7, v4, v3

    .line 180
    new-instance v7, Lcom/android/tools/r8/graph/R2$a;

    iget-object v1, v1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-direct {v7, v1}, Lcom/android/tools/r8/graph/R2$a;-><init>(Lcom/android/tools/r8/graph/e1;)V

    aput-object v7, v15, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v18

    move/from16 v7, v19

    goto :goto_b

    :cond_14
    move/from16 v19, v7

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto/16 :goto_9

    :cond_15
    move-object/from16 v16, v1

    .line 181
    new-instance v1, Lcom/android/tools/r8/graph/r0;

    new-instance v3, Lcom/android/tools/r8/graph/e1;

    iget-object v4, v6, Lcom/android/tools/r8/graph/u1;->H5:Lcom/android/tools/r8/graph/M2;

    new-instance v7, Lcom/android/tools/r8/graph/t0;

    iget-object v13, v6, Lcom/android/tools/r8/graph/u1;->I5:Lcom/android/tools/r8/graph/L2;

    new-instance v14, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v14, v8}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-direct {v7, v13, v14}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    new-instance v8, Lcom/android/tools/r8/graph/t0;

    iget-object v13, v6, Lcom/android/tools/r8/graph/u1;->J5:Lcom/android/tools/r8/graph/L2;

    new-instance v14, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v14, v9}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-direct {v8, v13, v14}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    new-instance v9, Lcom/android/tools/r8/graph/t0;

    iget-object v13, v6, Lcom/android/tools/r8/graph/u1;->K5:Lcom/android/tools/r8/graph/L2;

    new-instance v14, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v14, v10}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-direct {v9, v13, v14}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    new-instance v10, Lcom/android/tools/r8/graph/t0;

    iget-object v13, v6, Lcom/android/tools/r8/graph/u1;->L5:Lcom/android/tools/r8/graph/L2;

    new-instance v14, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v14, v11}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-direct {v10, v13, v14}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    new-instance v11, Lcom/android/tools/r8/graph/t0;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->M5:Lcom/android/tools/r8/graph/L2;

    new-instance v13, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v13, v12}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-direct {v11, v6, v13}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    filled-new-array {v7, v8, v9, v10, v11}, [Lcom/android/tools/r8/graph/t0;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    const/4 v4, 0x2

    invoke-direct {v1, v4, v3}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    .line 182
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    move-object/from16 v16, v1

    .line 183
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 184
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    sget-object v3, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 185
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/tools/r8/graph/r0;

    .line 186
    array-length v4, v1

    array-length v5, v3

    add-int/2addr v4, v5

    .line 187
    const-class v5, Lcom/android/tools/r8/graph/r0;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 188
    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    array-length v1, v1

    array-length v5, v3

    invoke-static {v3, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    check-cast v4, [Lcom/android/tools/r8/graph/r0;

    .line 191
    invoke-static {v4}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    goto :goto_d

    :cond_17
    new-instance v1, Lcom/android/tools/r8/graph/u0;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    .line 192
    :goto_d
    iput-object v1, v2, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    :cond_18
    const/4 v1, 0x0

    .line 193
    iput-object v1, v2, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    .line 194
    iget-object v1, v2, Lcom/android/tools/r8/graph/E0;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 195
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->D0()V

    .line 196
    iget-object v1, v2, Lcom/android/tools/r8/graph/E0;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 197
    iget-object v1, v2, Lcom/android/tools/r8/graph/E0;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 198
    :goto_e
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v1

    new-instance v3, Lu/A0;

    invoke-direct {v3, v0}, Lu/A0;-><init>(Lcom/android/tools/r8/dex/k;)V

    invoke-interface {v1, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 199
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v1

    new-instance v2, Lu/B0;

    invoke-direct {v2, v0}, Lu/B0;-><init>(Lcom/android/tools/r8/dex/k;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_19
    return-void
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 201
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lu/z0;

    invoke-direct {v1, p0}, Lu/z0;-><init>(Lcom/android/tools/r8/dex/k;)V

    iget-object v2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 202
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final c(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/ns0;
    .locals 3

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 6
    iget-object v1, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "Compute object offset mapping"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/y;ILcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/w5;)V

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 12
    const-string p1, "Rewrite jumbo strings"

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->c()Lcom/android/tools/r8/graph/w5;

    move-result-object p1

    .line 14
    iget-object v1, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/w5;Ljava/util/Collection;)V

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/t0;)V

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public c(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
