.class public final Lcom/android/tools/r8/internal/Dn;
.super Lcom/android/tools/r8/internal/Fn;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Bz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Fn;-><init>(Lcom/android/tools/r8/internal/zE;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Kn;)I
    .locals 5

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/internal/Dn;->f:Z

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 30
    check-cast v1, Lcom/android/tools/r8/internal/Bz;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Fn;

    move-result-object p1

    .line 32
    iget-object v2, p1, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    const/4 v3, 0x2

    if-ne v1, v2, :cond_2

    .line 33
    iput v3, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    return v3

    .line 34
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/Fn;->d:Z

    if-nez v1, :cond_4

    iget v2, p0, Lcom/android/tools/r8/internal/Fn;->c:I

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_4
    :goto_1
    iget v2, p0, Lcom/android/tools/r8/internal/Fn;->c:I

    if-nez v1, :cond_6

    .line 36
    iget v1, p1, Lcom/android/tools/r8/internal/Fn;->c:I

    if-ltz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_6
    :goto_2
    iget v1, p1, Lcom/android/tools/r8/internal/Fn;->c:I

    if-ge v1, v2, :cond_7

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v2

    :goto_3
    sub-int/2addr v1, v2

    goto :goto_4

    .line 39
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v2

    goto :goto_3

    :goto_4
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_8

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    goto :goto_5

    :cond_8
    const/16 v2, 0x7fff

    if-gt v1, v2, :cond_9

    .line 42
    iput v3, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    goto :goto_5

    :cond_9
    const/4 v1, 0x3

    .line 43
    iput v1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    .line 44
    :goto_5
    iget-object v1, p1, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 46
    iget-object v1, p1, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez v0, :cond_b

    .line 48
    instance-of v1, p1, Lcom/android/tools/r8/internal/An;

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_b
    :goto_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Fn;->b()I

    move-result p1

    iget v1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    :cond_c
    if-nez v0, :cond_e

    .line 50
    iget p1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    if-eqz p1, :cond_d

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_e
    :goto_7
    iget p1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 2
    check-cast v0, Lcom/android/tools/r8/internal/Bz;

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    if-gez v2, :cond_0

    .line 6
    iput-boolean v1, p1, Lcom/android/tools/r8/internal/Kn;->p:Z

    .line 7
    :cond_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    iget v4, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fn;->b()I

    move-result v0

    if-ne v4, v0, :cond_1

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/yk0;->b(Lcom/android/tools/r8/internal/Kn;)Lcom/android/tools/r8/internal/tn;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    .line 14
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    if-ge p1, v0, :cond_2

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kr;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 17
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    if-eq p1, v1, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/pp;

    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/pp;-><init>(I)V

    goto :goto_2

    .line 19
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget p2, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected size for goto instruction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-nez v2, :cond_6

    .line 20
    new-instance p1, Lcom/android/tools/r8/internal/kr;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/kr;-><init>()V

    .line 21
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance p1, Lcom/android/tools/r8/internal/qp;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/qp;-><init>(I)V

    goto :goto_2

    .line 23
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/op;

    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/op;-><init>(I)V

    goto :goto_2

    .line 24
    :cond_7
    sget-boolean p1, Lcom/android/tools/r8/internal/Dn;->f:Z

    if-nez p1, :cond_9

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_9
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/qp;

    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/qp;-><init>(I)V

    .line 26
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 27
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Fn;Lcom/android/tools/r8/internal/Kn;)Z
    .locals 0

    .line 52
    instance-of p1, p1, Lcom/android/tools/r8/internal/Dn;

    return p1
.end method

.method public final b()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Dn;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/Dn;->e:I

    return v0
.end method

.method public final c()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Dn;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/pp;

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public final d()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Dn;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/qp;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/qp;-><init>(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
