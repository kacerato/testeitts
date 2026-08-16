.class public final Lcom/android/tools/r8/internal/Am0;
.super Lcom/android/tools/r8/internal/Bm0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bm0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final K()Lcom/android/tools/r8/internal/Am0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Am0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Am0;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 48
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 49
    invoke-static {p0, v0, p1}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-static {v0, p2, p1, v1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 39
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/Am0;->d:Z

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return v2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;
    .locals 6

    const/4 v0, 0x0

    .line 3
    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/internal/pu0;->a:Z

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3, v2, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v2

    .line 6
    sget-boolean v3, Lcom/android/tools/r8/internal/Am0;->d:Z

    if-nez v3, :cond_1

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/tools/r8/internal/jh;->n:Z

    .line 8
    new-instance v5, Lcom/android/tools/r8/internal/ih;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ih;-><init>()V

    .line 9
    invoke-interface {p3, v2, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 10
    iput-object p3, v5, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 11
    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 12
    iput-object p3, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 13
    iget-object p3, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    .line 14
    iput-object p3, v5, Lcom/android/tools/r8/internal/ih;->d:Lcom/android/tools/r8/graph/M2;

    .line 15
    new-instance p3, Lcom/android/tools/r8/internal/jh;

    iget-object p4, v5, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v1, v5, Lcom/android/tools/r8/internal/ih;->d:Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-direct {p3, p4, v1, v0}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    .line 17
    iget-object p4, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p4, :cond_2

    .line 18
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_2
    if-nez v3, :cond_8

    .line 19
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    .line 20
    iget-object p4, p3, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 22
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-nez v1, :cond_4

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p4, p1, :cond_7

    goto :goto_2

    :cond_4
    if-nez v4, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 27
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 28
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-static {p4, p2, v1, p1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 31
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    const/4 p1, 0x1

    .line 32
    new-array p1, p1, [Lcom/android/tools/r8/internal/zE;

    aput-object p3, p1, v0

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Am0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;
    .locals 0

    sget-boolean p1, Lcom/android/tools/r8/internal/Am0;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3, p4, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleConstClassValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
