.class public abstract Lcom/android/tools/r8/graph/F0;
.super Lcom/android/tools/r8/graph/G0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/G0<",
        "Lcom/android/tools/r8/graph/g1;",
        "Lcom/android/tools/r8/graph/l1;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/G0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/h1;)V

    sget-boolean p2, Lcom/android/tools/r8/graph/F0;->e:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/graph/I0;

    instance-of v1, p0, Lcom/android/tools/r8/graph/d0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    instance-of v1, p0, Lcom/android/tools/r8/graph/z4;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    instance-of p2, p0, Lcom/android/tools/r8/graph/F5;

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/z4;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/z4;-><init>(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/g1;)V

    return-object v0

    .line 6
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/F0;->e:Z

    if-nez v0, :cond_3

    .line 7
    instance-of v0, p0, Lcom/android/tools/r8/graph/I0;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/d0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/d0;-><init>(Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/g1;)V

    return-object v0
.end method


# virtual methods
.method public final J()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()Lcom/android/tools/r8/graph/F0;
    .locals 0

    return-object p0
.end method

.method public final g0()Lcom/android/tools/r8/graph/G0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic getAccessFlags()Lcom/android/tools/r8/graph/g;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/android/tools/r8/graph/k3;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    return-object v0
.end method
