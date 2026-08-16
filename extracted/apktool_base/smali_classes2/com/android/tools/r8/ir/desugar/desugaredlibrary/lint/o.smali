.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/QC;

.field public final b:Lcom/android/tools/r8/internal/QC;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public final d:Lcom/android/tools/r8/graph/g3;

.field public final e:Lcom/android/tools/r8/internal/C2;

.field public final f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Collection;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/nJ;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/ClassFileResourceProvider;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v4, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Collection;ZLcom/android/tools/r8/internal/C2;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Collection;ZLcom/android/tools/r8/internal/C2;ZZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 5
    iput-boolean p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->i:Z

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    .line 7
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object p3

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ClassFileResourceProvider;

    .line 9
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/utils/i$a;->b(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p2

    .line 11
    new-instance p3, Lcom/android/tools/r8/dex/c;

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-direct {p3, p2, v0, v1}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->n0:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->n0:Z

    .line 15
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p2

    .line 16
    iget-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/android/tools/r8/internal/nJ;->n0:Z

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    const-string v0, "Ljava/lang/invoke/VarHandle;"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 18
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/w4;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-nez p3, :cond_3

    .line 19
    iget-boolean p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->i:Z

    if-nez p3, :cond_3

    .line 20
    iget-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const-string v0, "SupportedClassesGenerator expects library above or equal to T, it works below, but the modifiers are not correct which is fine for lint but not html doc generation."

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 21
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/w4;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    .line 23
    iput-object p4, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->e:Lcom/android/tools/r8/internal/C2;

    .line 24
    iput-boolean p5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->g:Z

    .line 25
    iput-boolean p6, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->h:Z

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 27
    iget-object p2, p1, Lcom/android/tools/r8/graph/u1;->t2:Lcom/android/tools/r8/graph/M2;

    iget-object p3, p1, Lcom/android/tools/r8/graph/u1;->u2:Lcom/android/tools/r8/graph/M2;

    iget-object p4, p1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    .line 28
    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x3

    invoke-static {p3, p3, p2}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a:Lcom/android/tools/r8/internal/QC;

    .line 30
    iget-object p2, p1, Lcom/android/tools/r8/graph/u1;->i3:Lcom/android/tools/r8/graph/M2;

    iget-object p3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {p3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 31
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    .line 32
    const-string p4, "ofNullable"

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    iget-object p3, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    iget-object p4, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {p3, p3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 33
    invoke-virtual {p1, p4, p5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p4

    .line 34
    const-string p5, "compare"

    invoke-virtual {p1, p3, p4, p5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 35
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2, p2, p1}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->b:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/h1;Lcom/android/tools/r8/graph/h1;)Z
    .locals 0

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/util/ArrayList;)Z
    .locals 4

    .line 28
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/h1;

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/E;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/E;-><init>(Lcom/android/tools/r8/graph/h1;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 3

    if-eqz p1, :cond_4

    .line 270
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-nez p1, :cond_1

    .line 271
    iget-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->i:Z

    if-nez p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a:Lcom/android/tools/r8/internal/QC;

    .line 273
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backport missing from library: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->K0()Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    const/16 p2, 0x9

    const/4 v0, 0x0

    .line 277
    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    .line 278
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 280
    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->j:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p1

    .line 281
    :cond_4
    new-instance p1, Ljava/lang/Error;

    sget-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    .line 282
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing class from Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/F;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/F;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/internal/ft0;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 136
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->j:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-nez p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 139
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    sget-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->k:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    .line 140
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->d:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    if-eqz v0, :cond_2

    .line 8
    iget-boolean v0, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->a:Z

    if-eqz v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v4, p2, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/util/ArrayList;)Z

    move-result p2

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p3, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/util/ArrayList;)Z

    move-result p3

    and-int/2addr p2, p3

    .line 14
    iget-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 15
    iget-object p3, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    if-nez v1, :cond_4

    if-eqz p3, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_4
    :goto_1
    iget-object p3, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->f:Ljava/util/HashMap;

    .line 19
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    and-int/2addr p2, p3

    .line 20
    iget-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 21
    iget-object p3, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    if-nez v1, :cond_6

    if-eqz p3, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_6
    :goto_2
    iget-object p3, p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->e:Ljava/util/HashMap;

    .line 25
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    .line 26
    iget-boolean v0, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->g:Z

    and-int/2addr p2, v0

    goto :goto_3

    .line 27
    :cond_7
    iget-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    invoke-direct {v0, p2, v2, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;-><init>(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 240
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 242
    iget-object p3, p3, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 243
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 244
    iget-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V

    .line 245
    iget-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 246
    sget-object p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    .line 247
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V

    return-void

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 249
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 250
    iget-object p3, p3, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 251
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p2

    .line 252
    sget-boolean p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->j:Z

    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 253
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V

    .line 254
    iget-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 255
    sget-object p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    .line 256
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g3;Ljava/util/List;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 257
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    .line 260
    iget-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 261
    sget-object p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    .line 262
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V

    return-void

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    .line 266
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 267
    sget-object v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    .line 268
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V

    .line 269
    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xU;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/y;ILcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 106
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 107
    invoke-virtual {p1, p5}, Lcom/android/tools/r8/internal/xU;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p5

    if-nez p5, :cond_9

    .line 108
    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CU;->o()Ljava/util/Map;

    move-result-object p1

    .line 109
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 110
    :cond_0
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result p2

    const/4 p5, 0x1

    if-eqz p2, :cond_4

    .line 112
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    .line 113
    iget-object p2, p3, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    sget p3, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object p3, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 115
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 117
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p1

    if-ge p4, p1, :cond_9

    .line 118
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 119
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 120
    new-instance p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    invoke-direct {p3, p4, p4, p5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;-><init>(IIZ)V

    .line 121
    iget-object p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 122
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    .line 123
    sget-boolean p4, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->d:Z

    if-nez p4, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 124
    :cond_2
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V

    return-void

    .line 125
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 126
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "API database does not recognize the field "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_4
    sget-boolean p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->j:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 128
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 129
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 130
    new-instance p3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    invoke-direct {p3, p4, p4, p5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;-><init>(IIZ)V

    .line 131
    iget-object p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    .line 133
    sget-boolean p4, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->d:Z

    if-nez p4, :cond_8

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 134
    :cond_8
    :goto_2
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xU;Ljava/util/List;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/y;ILcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V
    .locals 7

    .line 76
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/graph/A2;

    .line 77
    invoke-virtual {p1, p6}, Lcom/android/tools/r8/internal/xU;->b(Lcom/android/tools/r8/graph/J2;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 78
    invoke-interface {p2, p6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 79
    iget-object p2, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CU;->d()Ljava/util/Map;

    move-result-object p2

    .line 80
    invoke-interface {p2, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 81
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object p1

    .line 82
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 84
    :cond_1
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    .line 86
    invoke-virtual {p3, p6, p1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    goto :goto_0

    :cond_2
    move-object p2, p6

    .line 89
    :goto_0
    iget-object p3, p4, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 90
    sget p4, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object p4, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 91
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p2

    .line 92
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result p3

    if-nez p3, :cond_4

    .line 93
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p1

    if-nez p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 95
    new-instance p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    move v5, p5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;-><init>(ZZZZII)V

    .line 96
    invoke-virtual {p1, p6, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V

    return-void

    .line 97
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 98
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "API database does not recognize the method "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_4
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p1

    if-ge p5, p1, :cond_6

    .line 100
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 101
    new-instance p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    move v5, p5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;-><init>(ZZZZII)V

    .line 102
    invoke-virtual {p1, p6, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V

    return-void

    .line 103
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CU;->d()Ljava/util/Map;

    move-result-object p1

    .line 104
    invoke-interface {p1, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 105
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    sget-object p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->h:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    invoke-virtual {p1, p6, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/v0;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 33
    iget-object v0, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 34
    iget-object v0, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 35
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 36
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/C2;->r:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    move v9, v0

    .line 37
    :goto_0
    sget-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    if-gt v9, v0, :cond_3

    .line 38
    invoke-static {v9}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    if-nez v8, :cond_1

    .line 39
    new-instance v1, Lcom/android/tools/r8/internal/wU;

    .line 40
    new-instance v2, Lcom/android/tools/r8/internal/EU;

    sget-object v11, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    .line 41
    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 42
    sget-object v16, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 43
    const-string v12, "unused"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 44
    sget-boolean v3, Lcom/android/tools/r8/internal/CU;->s:Z

    .line 45
    new-instance v3, Lcom/android/tools/r8/internal/BU;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/BU;-><init>()V

    .line 46
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/wU;-><init>(Lcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    :goto_1
    move-object v10, v1

    goto :goto_2

    .line 47
    :cond_1
    iget-object v1, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v3

    const/4 v4, 0x0

    .line 49
    invoke-static {v8, v2, v1, v4, v3}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)Lcom/android/tools/r8/internal/vm;

    move-result-object v1

    .line 50
    iget-object v2, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/tools/r8/internal/vm;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    goto :goto_1

    .line 51
    :goto_2
    iget-object v1, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    .line 52
    iget-object v0, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    iput-object v1, v0, Lcom/android/tools/r8/internal/WR;->e:Lcom/android/tools/r8/internal/Tr0;

    .line 54
    new-instance v2, Lcom/android/tools/r8/internal/wU;

    .line 55
    new-instance v3, Lcom/android/tools/r8/internal/EU;

    sget-object v12, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    .line 56
    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    .line 57
    sget-object v17, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 58
    const-string v13, "unused"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 59
    sget-boolean v4, Lcom/android/tools/r8/internal/CU;->s:Z

    .line 60
    new-instance v4, Lcom/android/tools/r8/internal/BU;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/BU;-><init>()V

    .line 61
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/wU;-><init>(Lcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    .line 62
    iput-object v2, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 63
    iput-object v1, v0, Lcom/android/tools/r8/internal/WR;->c:Lcom/android/tools/r8/internal/zm;

    .line 64
    iget-object v0, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/vm;)V

    .line 65
    iget-object v0, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    .line 66
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->d()Lcom/android/tools/r8/synthesis/E;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object v11

    .line 69
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v12

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v0, Lcom/android/tools/r8/internal/lp1;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/lp1;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/G;

    invoke-direct {v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/G;-><init>()V

    .line 72
    iget-boolean v2, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->g:Z

    if-nez v2, :cond_2

    .line 73
    iget-object v2, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    iget-object v4, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v2, v4, v0, v1}, Lcom/android/tools/r8/internal/H5;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 74
    :cond_2
    iget-object v13, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    new-instance v14, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v12

    move-object v5, v11

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;Lcom/android/tools/r8/internal/xU;Ljava/util/List;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/y;I)V

    invoke-virtual {v13, v14}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->b(Ljava/util/function/BiConsumer;)V

    .line 75
    iget-object v6, v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    new-instance v13, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/I;

    move-object v0, v13

    move-object v3, v12

    move-object v4, v11

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/I;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;Lcom/android/tools/r8/internal/xU;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/y;I)V

    invoke-virtual {v6, v13}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Ljava/util/function/BiConsumer;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/v0;)V
    .locals 12

    .line 141
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->e:Lcom/android/tools/r8/internal/C2;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 142
    new-instance p2, Lcom/android/tools/r8/internal/wU;

    .line 143
    new-instance v0, Lcom/android/tools/r8/internal/EU;

    sget-object v3, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    .line 144
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 145
    sget-object v8, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 146
    const-string v4, "unused"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 147
    sget-boolean v2, Lcom/android/tools/r8/internal/CU;->s:Z

    .line 148
    new-instance v2, Lcom/android/tools/r8/internal/BU;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/BU;-><init>()V

    .line 149
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/android/tools/r8/internal/wU;-><init>(Lcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 151
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    .line 152
    invoke-static {p2, v3, v2, v1, v0}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)Lcom/android/tools/r8/internal/vm;

    move-result-object p2

    .line 153
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/android/tools/r8/internal/vm;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/xU;

    move-result-object p2

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->e:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    .line 155
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    const/4 v2, 0x0

    .line 156
    iput-object v2, v0, Lcom/android/tools/r8/internal/WR;->e:Lcom/android/tools/r8/internal/Tr0;

    .line 157
    new-instance v3, Lcom/android/tools/r8/internal/wU;

    .line 158
    new-instance v11, Lcom/android/tools/r8/internal/EU;

    sget-object v5, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    .line 159
    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    .line 160
    sget-object v10, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 161
    const-string v6, "unused"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 162
    sget-boolean v4, Lcom/android/tools/r8/internal/CU;->s:Z

    .line 163
    new-instance v4, Lcom/android/tools/r8/internal/BU;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/BU;-><init>()V

    .line 164
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object v4

    invoke-direct {v3, v11, v4}, Lcom/android/tools/r8/internal/wU;-><init>(Lcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    .line 165
    iput-object v3, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 166
    iput-object v2, v0, Lcom/android/tools/r8/internal/WR;->c:Lcom/android/tools/r8/internal/zm;

    .line 167
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/vm;)V

    .line 168
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    .line 169
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 170
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p1

    .line 172
    new-instance v0, Lcom/android/tools/r8/dex/c;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    .line 173
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/c;->a()Lcom/android/tools/r8/graph/w4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/w4;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v3, Lcom/android/tools/r8/internal/lp1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/lp1;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/android/tools/r8/internal/mp1;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/mp1;-><init>(Ljava/util/List;)V

    .line 177
    iget-boolean v5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->g:Z

    if-nez v5, :cond_2

    .line 178
    iget-object v5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    iget-object v6, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v5, v6, v3, v4}, Lcom/android/tools/r8/internal/H5;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 180
    iget-object v5, p2, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 181
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v5

    .line 182
    iget-object v6, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 183
    sget-boolean v5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->j:Z

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 184
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    .line 185
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    .line 186
    :cond_7
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    const-string v8, "lambda$"

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/L2;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 187
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "$deserializeLambda$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    .line 188
    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 189
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v7

    .line 190
    const-string v8, "void java.util.Collection.forEach(java.util.function.Consumer)"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    .line 191
    :cond_9
    iget-object v7, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {v7, v4, v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    goto :goto_4

    .line 192
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_b
    :goto_5
    if-ge v6, v5, :cond_c

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 193
    iget-object v8, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    if-ne v8, v9, :cond_b

    .line 194
    iget-object v8, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    iget-object v9, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v8

    .line 195
    invoke-virtual {p0, v8, v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    .line 196
    iget-object v8, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {v8, v4, v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    goto :goto_5

    .line 197
    :cond_c
    iget-object v5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 198
    sget-object v6, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    .line 199
    invoke-virtual {v5, v4, v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V

    goto/16 :goto_2

    .line 200
    :cond_d
    iget-object v5, v4, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v4, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_e
    iget-object v5, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 201
    invoke-virtual {p2, v5}, Lcom/android/tools/r8/internal/xU;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    iget-object v6, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 202
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 203
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    .line 204
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v7

    if-nez v7, :cond_f

    .line 205
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 206
    iget-object v7, v6, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_6

    .line 207
    :cond_f
    iget-object v7, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {v7, v4, v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    goto :goto_6

    .line 208
    :cond_10
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/g1;

    .line 209
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v7

    if-nez v7, :cond_11

    .line 210
    iget-object v7, v6, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_7

    .line 211
    :cond_11
    iget-object v7, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {v7, v4, v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V

    goto :goto_7

    .line 212
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_13
    :goto_8
    if-ge v6, v5, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 213
    iget-object v8, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    if-ne v8, v9, :cond_13

    .line 214
    iget-object v8, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->d:Lcom/android/tools/r8/graph/g3;

    iget-object v9, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v8

    .line 215
    invoke-virtual {p0, v8, v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    .line 216
    iget-object v8, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {v8, v4, v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    goto :goto_8

    .line 217
    :cond_14
    new-instance v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/J;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/J;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;Lcom/android/tools/r8/graph/g3;Ljava/util/List;)V

    .line 218
    iget-object v4, p2, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 219
    iget-object v5, v4, Lcom/android/tools/r8/internal/CU;->f:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 220
    iget-object v5, v4, Lcom/android/tools/r8/internal/CU;->g:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 221
    iget-object v4, v4, Lcom/android/tools/r8/internal/CU;->h:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 222
    iget-object p2, p2, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CU;->o()Ljava/util/Map;

    move-result-object p2

    .line 223
    new-instance v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/K;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/K;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;Lcom/android/tools/r8/graph/g3;)V

    .line 224
    invoke-interface {p2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 225
    iget-boolean p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->h:Z

    if-eqz p2, :cond_19

    .line 226
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_15
    :goto_9
    if-ge v4, v3, :cond_16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 228
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v6

    if-nez v6, :cond_15

    .line 229
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 230
    :cond_16
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 231
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 232
    iput-object p2, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->b:Ljava/util/AbstractCollection;

    .line 233
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_17
    :goto_a
    if-ge v1, v0, :cond_18

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 235
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-nez v4, :cond_17

    .line 236
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 237
    :cond_18
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 238
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    .line 239
    iput-object p2, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->c:Ljava/util/AbstractCollection;

    :cond_19
    return-void
.end method

.method public b(Ljava/util/Collection;Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/ProgramResourceProvider;",
            ">;",
            "Lcom/android/tools/r8/v0;",
            ")",
            "Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Ljava/util/Collection;Lcom/android/tools/r8/v0;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    sget-object v2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->j:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    .line 5
    iget-object v3, v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    if-nez v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Lcom/android/tools/r8/v0;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a()V

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    invoke-virtual {p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->f:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/D;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/D;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->b(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final c()Ljava/util/Set;
    .locals 10

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    const-string v2, "Ljava/util/stream/Stream;"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->Y2:Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v5, "parallelStream"

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v1, v3, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "Ljava/util/stream/BaseStream;"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const-string v3, "Int"

    const-string v5, "Long"

    const-string v6, "Base"

    const-string v7, "Double"

    filled-new-array {v6, v7, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    move v5, v4

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    aget-object v6, v3, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ljava/util/stream/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Stream;"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    new-array v7, v4, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    const-string v8, "parallel"

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v1, v6, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array v7, v4, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
