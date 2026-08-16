.class public final Lcom/android/tools/r8/internal/Rk0;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rk0;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/Rk0;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rk0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rk0;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v3, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/androidapi/a;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {v3}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    goto :goto_1

    :cond_3
    invoke-interface {v2, v3}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v0

    sget v3, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v3, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/androidapi/a;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {v1}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    goto :goto_2

    :cond_7
    invoke-interface {v0, v1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_9
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameApiReferenceLevelPolicy"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rk0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
