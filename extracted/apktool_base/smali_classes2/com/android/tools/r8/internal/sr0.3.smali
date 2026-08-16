.class public abstract Lcom/android/tools/r8/internal/sr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/on0;


# static fields
.field public static final g:Ljava/util/function/Predicate;

.field public static final h:Ljava/util/function/Predicate;

.field public static final synthetic i:Z = true


# instance fields
.field public a:I

.field public final b:I

.field public c:[I

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Lcom/android/tools/r8/internal/B60;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/gt1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gt1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/sr0;->g:Ljava/util/function/Predicate;

    new-instance v0, Lcom/android/tools/r8/internal/ht1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ht1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/sr0;->h:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sr0;->f:Lcom/android/tools/r8/internal/B60;

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    iget v0, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p2

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    iput v0, p0, Lcom/android/tools/r8/internal/sr0;->b:I

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result p2

    new-array p2, p2, [I

    new-instance v0, Lcom/android/tools/r8/internal/ft1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ft1;-><init>(Lcom/android/tools/r8/internal/sr0;Lcom/android/tools/r8/graph/H5;)V

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/X3;->a([ILjava/util/function/IntUnaryOperator;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/sr0;->c:[I

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/aB;)Z
    .locals 0

    .line 3
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/aB;)Z
    .locals 0

    .line 2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/aB;)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Predicate;

    invoke-interface {v0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :cond_1
    :goto_0
    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;I)I
    .locals 0

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    .line 5
    iget p2, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    return p2
.end method

.method public final a(II)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/B60;
    .locals 0

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/internal/B60;->g:Z

    .line 13
    sget-object p1, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    return-object p1
.end method

.method public final a(IIILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected call to resolveAndBuildSwitch"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(IILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected call to resolveAndBuildNewArrayFilledData"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IIZ)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IZ)V
    .locals 0

    .line 9
    iget-object p3, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/function/Consumer;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/aB;)V
    .locals 3

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Uh1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Uh1;-><init>()V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/j1;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final c(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final c()Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    return v0
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/tools/r8/internal/sr0;->c:[I

    return-void
.end method

.method public final d(I)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()V
    .locals 4

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/sr0;->i:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/Xh;

    .line 5
    iget-object v2, v1, Lcom/android/tools/r8/internal/Xh;->m:Lcom/android/tools/r8/internal/DG;

    .line 6
    iget v2, v2, Lcom/android/tools/r8/internal/DG;->c:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Xh;->h()V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Xh;->i()V

    :goto_1
    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public final e(I)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/internal/N8;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final f(I)I
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final g(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final g()Lcom/android/tools/r8/internal/B60;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/sr0;->f:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method
