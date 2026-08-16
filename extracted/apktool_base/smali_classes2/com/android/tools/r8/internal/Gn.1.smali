.class public final Lcom/android/tools/r8/internal/Gn;
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

.method public constructor <init>(Lcom/android/tools/r8/internal/aY;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Fn;-><init>(Lcom/android/tools/r8/internal/zE;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Kn;)I
    .locals 3

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Gn;->c(Lcom/android/tools/r8/internal/Kn;)I

    move-result v0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Gn;->b(Lcom/android/tools/r8/internal/Kn;)I

    move-result p1

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 38
    iput v1, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    goto :goto_0

    :cond_0
    const/16 v2, 0xf

    if-gt v0, v2, :cond_1

    if-gt p1, v2, :cond_1

    .line 39
    iput v1, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/4 p1, 0x2

    .line 40
    iput p1, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 41
    iput p1, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    .line 42
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 2
    check-cast v0, Lcom/android/tools/r8/internal/aY;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Gn;->c(Lcom/android/tools/r8/internal/Kn;)I

    move-result v2

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Gn;->b(Lcom/android/tools/r8/internal/Kn;)I

    move-result p1

    .line 6
    iget v3, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    const/4 v4, 0x1

    const-string v5, "Unexpected type: "

    if-eq v3, v4, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/Gq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Gq;-><init>(II)V

    goto/16 :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Qq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Qq;-><init>(II)V

    goto/16 :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Kq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Kq;-><init>(II)V

    goto/16 :goto_0

    .line 13
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget p2, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/Jq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Jq;-><init>(II)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/Sq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Sq;-><init>(II)V

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/Mq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Mq;-><init>(II)V

    goto :goto_0

    .line 21
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-ne v2, p1, :cond_9

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kr;-><init>()V

    goto :goto_0

    .line 23
    :cond_9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/Hq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Hq;-><init>(II)V

    goto :goto_0

    .line 25
    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/Rq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Rq;-><init>(II)V

    goto :goto_0

    .line 27
    :cond_b
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/Lq;

    invoke-direct {v0, p1, v2}, Lcom/android/tools/r8/internal/Lq;-><init>(II)V

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 30
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 31
    :cond_c
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Fn;Lcom/android/tools/r8/internal/Kn;)Z
    .locals 3

    .line 32
    instance-of v0, p1, Lcom/android/tools/r8/internal/Gn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 33
    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Gn;

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Gn;->c(Lcom/android/tools/r8/internal/Kn;)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Gn;->c(Lcom/android/tools/r8/internal/Kn;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Gn;->b(Lcom/android/tools/r8/internal/Kn;)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Gn;->b(Lcom/android/tools/r8/internal/Kn;)I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final b()I
    .locals 1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/Gn;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/Gn;->e:I

    return v0
.end method

.method public final b(Lcom/android/tools/r8/internal/Kn;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 2
    check-cast v0, Lcom/android/tools/r8/internal/aY;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aY;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 5
    check-cast v1, Lcom/android/tools/r8/internal/aY;

    .line 6
    iget v1, v1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 2

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/Gn;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Gq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/Gq;-><init>(II)V

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public final c(Lcom/android/tools/r8/internal/Kn;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 2
    check-cast v0, Lcom/android/tools/r8/internal/aY;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 5
    check-cast v1, Lcom/android/tools/r8/internal/aY;

    .line 6
    iget v1, v1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/xw0;I)I

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Gn;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kr;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Hq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/Hq;-><init>(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
