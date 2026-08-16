.class public final Lcom/android/tools/r8/internal/Tc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/androidapi/f;
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->z0()Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;)Lcom/android/tools/r8/internal/Tc;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Rc;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Rc;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/uX0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/uX0;-><init>(Lcom/android/tools/r8/internal/Rc;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    new-instance p0, Lcom/android/tools/r8/internal/Tc;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Rc;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Tc;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Rc;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/Rc;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/tools/r8/internal/Rc;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/androidapi/f;
    .locals 2

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/Tc;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 13
    new-instance v1, Lcom/android/tools/r8/internal/vX0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/vX0;-><init>()V

    .line 14
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/androidapi/f;

    return-object p1
.end method
