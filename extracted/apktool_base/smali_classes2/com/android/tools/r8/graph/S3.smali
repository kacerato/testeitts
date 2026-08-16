.class public final Lcom/android/tools/r8/graph/S3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/yZ;
.implements Lcom/android/tools/r8/internal/AZ;
.implements Lcom/android/tools/r8/internal/BZ;
.implements Lcom/android/tools/r8/internal/DZ;
.implements Lcom/android/tools/r8/internal/FZ;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/I;

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/I;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/S3;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/graph/S3;->a:Lcom/android/tools/r8/shaking/I;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/D5;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/S3;->b:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Y3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/S3;->a:Lcom/android/tools/r8/shaking/I;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/Pa;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/graph/Pa;-><init>(Lcom/android/tools/r8/shaking/I;)V

    invoke-direct {v0, p2, v2}, Lcom/android/tools/r8/graph/Y3;-><init>(Lcom/android/tools/r8/graph/D5;Ljava/util/function/BiConsumer;)V

    .line 10
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->asClass()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p2, p1, Lcom/android/tools/r8/graph/H3$b;->a:Ljava/util/AbstractCollection;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/Y3;->c(Ljava/util/List;)Ljava/util/List;

    .line 14
    iget-object p2, p1, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    if-nez p2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    .line 16
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$b;->c:Ljava/util/AbstractCollection;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/Y3;->e(Ljava/util/List;)Ljava/util/List;

    return-void

    .line 17
    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    return-void

    .line 20
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H3$g;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$g;

    return-void

    .line 21
    :cond_5
    sget-boolean p2, Lcom/android/tools/r8/graph/S3;->c:Z

    if-nez p2, :cond_7

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_7
    :goto_2
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->c()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/Y3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p1}, Lcom/android/tools/r8/graph/S3;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/S3;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/L0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p1, p1}, Lcom/android/tools/r8/graph/S3;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p1}, Lcom/android/tools/r8/graph/S3;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/S3;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method
