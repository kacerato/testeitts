.class public final Lcom/android/tools/r8/internal/Pf0;
.super Lcom/android/tools/r8/internal/lh;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lh;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/Pf0;->m:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p2, p0, Lcom/android/tools/r8/internal/Pf0;->l:I

    return-void
.end method


# virtual methods
.method public final F0()Lcom/android/tools/r8/internal/Pf0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 9
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 12
    iget p2, p0, Lcom/android/tools/r8/internal/Pf0;->l:I

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/G1;->b(I)Lcom/android/tools/r8/internal/Lm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/internal/Pf0;->m:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of p1, p1, Lcom/android/tools/r8/internal/uI;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 1

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "We never write out ResourceConstNumber"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 1

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "We never write cf code with resource numbers"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 1

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/Pf0;->l:I

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/PS;->d(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 1

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "We never write out a resource const number"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lcom/android/tools/r8/internal/Pf0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F0()Lcom/android/tools/r8/internal/Pf0;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/Pf0;->l:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pf0;->l:I

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final e2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "We map out of ResourceConstNumber before register allocation"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q2()I
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "We map out of ResourceConstNumber before register allocation"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method
