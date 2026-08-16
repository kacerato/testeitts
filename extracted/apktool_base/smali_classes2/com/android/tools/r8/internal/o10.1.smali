.class public final Lcom/android/tools/r8/internal/o10;
.super Lcom/android/tools/r8/internal/Wl0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/p10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/p10;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Wl0;-><init>(I)V

    sget-boolean p1, Lcom/android/tools/r8/internal/o10;->d:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/o10;->c:Lcom/android/tools/r8/internal/p10;

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Wl0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Xl0;
    .locals 2

    .line 8
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    sget-boolean p1, Lcom/android/tools/r8/internal/o10;->d:Z

    if-eqz p1, :cond_0

    .line 15
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of p1, p1, Lcom/android/tools/r8/internal/Hm0;

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/android/tools/r8/internal/o10;->c:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    return-object p1

    .line 22
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 23
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 24
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result p2

    .line 25
    instance-of v0, p1, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/android/tools/r8/internal/o10;->c:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance p1, Lcom/android/tools/r8/internal/bv;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/bv;-><init>(IJ)V

    return-object p1

    .line 31
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance p1, Lcom/android/tools/r8/internal/f10;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/f10;-><init>(IJ)V

    return-object p1

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/o10;->c:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/cm0;->a(ILcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/o10;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Z
    .locals 3

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/o10;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/o10;->c:Lcom/android/tools/r8/internal/p10;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    return v2

    .line 6
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/xF0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xF0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/o10;->c:Lcom/android/tools/r8/internal/p10;

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
