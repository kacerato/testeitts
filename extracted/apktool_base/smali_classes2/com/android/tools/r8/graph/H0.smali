.class public abstract Lcom/android/tools/r8/graph/H0;
.super Lcom/android/tools/r8/graph/G0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/D4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/G0<",
        "Lcom/android/tools/r8/graph/j1;",
        "Lcom/android/tools/r8/graph/A2;",
        ">;",
        "Lcom/android/tools/r8/graph/D4;"
    }
.end annotation


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/graph/G0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/G0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/h1;)V

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/graph/H0;->e:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/graph/I0;

    .line 5
    instance-of v1, p0, Lcom/android/tools/r8/graph/e0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    instance-of v1, p0, Lcom/android/tools/r8/graph/A4;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p2, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    instance-of p2, p0, Lcom/android/tools/r8/graph/H5;

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

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/A4;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/A4;-><init>(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0

    .line 5
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/H0;->e:Z

    if-nez v0, :cond_3

    .line 6
    instance-of v0, p0, Lcom/android/tools/r8/graph/I0;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 8
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/e0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/e0;-><init>(Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method


# virtual methods
.method public A()Lcom/android/tools/r8/internal/TW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    return-object v0
.end method

.method public C()Lcom/android/tools/r8/graph/O2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lcom/android/tools/r8/graph/I2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final F()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/android/tools/r8/graph/H0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b(I)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d()Lcom/android/tools/r8/graph/j1;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    return-object v0
.end method

.method public final g0()Lcom/android/tools/r8/graph/G0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic getAccessFlags()Lcom/android/tools/r8/graph/g;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getReference()Lcom/android/tools/r8/graph/A2;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final l()Lcom/android/tools/r8/graph/H0;
    .locals 0

    return-object p0
.end method

.method public u()Lcom/android/tools/r8/graph/L4;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    return v0
.end method

.method public w()Lcom/android/tools/r8/references/MethodReference;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/graph/D2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v0}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    return-object v0
.end method
