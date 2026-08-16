.class public final Lcom/android/tools/r8/internal/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wZ;
.implements Lcom/android/tools/r8/internal/zZ;
.implements Lcom/android/tools/r8/internal/AZ;
.implements Lcom/android/tools/r8/internal/BZ;
.implements Lcom/android/tools/r8/internal/CZ;
.implements Lcom/android/tools/r8/internal/DZ;
.implements Lcom/android/tools/r8/internal/FZ;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/androidapi/a;

.field public final c:Lcom/android/tools/r8/androidapi/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W2;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    iput-object v0, p0, Lcom/android/tools/r8/internal/W2;->b:Lcom/android/tools/r8/androidapi/a;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    iput-object p1, p0, Lcom/android/tools/r8/internal/W2;->c:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W2;->a(Lcom/android/tools/r8/graph/G0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W2;->a(Lcom/android/tools/r8/graph/G0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/G0;)V
    .locals 4

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/W2;->b:Lcom/android/tools/r8/androidapi/a;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/internal/W2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    sget v3, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v3, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/androidapi/a;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    .line 24
    iput-object p1, v0, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W2;->a(Lcom/android/tools/r8/graph/G0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W2;->a(Lcom/android/tools/r8/graph/G0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/W2;->d:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p2, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/W2;->c:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/androidapi/f;->d(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/H2;->k:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/W2;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/H2;->k:Ljava/util/function/BiConsumer;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v1

    .line 11
    iget-object v2, p2, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W2;->a(Lcom/android/tools/r8/graph/G0;)V

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 15
    iget-object p2, p2, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    .line 16
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1;->f(Lcom/android/tools/r8/androidapi/f;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/f0;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/WZ0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/WZ0;-><init>(Lcom/android/tools/r8/internal/W2;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/S;->c(Ljava/util/function/Consumer;)V

    return-void
.end method
