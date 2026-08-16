.class public final Lcom/android/tools/r8/internal/lg;
.super Lcom/android/tools/r8/internal/xg;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public f:Lcom/android/tools/r8/internal/F1;

.field public g:Lcom/android/tools/r8/internal/xt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V
    .locals 0

    .line 4
    invoke-direct {p0, p3}, Lcom/android/tools/r8/internal/xg;-><init>(Ljava/util/Set;)V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    .line 7
    sget-boolean p1, Lcom/android/tools/r8/internal/lg;->h:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must use BottomClassTypeParameterState instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lg;->w()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must use UnknownParameterState instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 2

    .line 1
    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    sget-boolean v1, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/zt;->c:Lcom/android/tools/r8/internal/zt;

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/lg;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/android/tools/r8/internal/p10;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/lg;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of v0, v0, Lcom/android/tools/r8/internal/Hm0;

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    instance-of v0, v0, Lcom/android/tools/r8/internal/n10;

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object p1, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p1

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/xg;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/r7;->b:Lcom/android/tools/r8/internal/r7;

    return-object p1

    .line 8
    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/internal/lg;->h:Z

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/lg;

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->p()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xg;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
    .locals 6

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/internal/lg;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    .line 29
    iget-object v2, p1, Lcom/android/tools/r8/graph/y;->w:Lcom/android/tools/r8/internal/J1;

    .line 30
    iget-object v3, v2, Lcom/android/tools/r8/internal/K1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4, v3}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v4

    .line 32
    sget-boolean v5, Lcom/android/tools/r8/internal/J1;->c:Z

    if-nez v5, :cond_3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_3
    :goto_1
    iput-object v4, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    .line 34
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xg;->z()Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    .line 37
    invoke-virtual {v2, p1, v1, p3, p4}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object p3

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 39
    invoke-static {p1, p3, p4, v1}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object p3

    .line 40
    iput-object p3, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    .line 41
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lg;->w()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 43
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 44
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/yg;->a(Lcom/android/tools/r8/internal/yg;)Z

    move-result p4

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yg;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 46
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 47
    :cond_5
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/yg;->c:Z

    if-nez p1, :cond_6

    iget-boolean p1, p2, Lcom/android/tools/r8/internal/yg;->c:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/yg;->c:Z

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz v0, :cond_8

    if-eqz p3, :cond_8

    if-nez p4, :cond_8

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    return-object p0

    .line 49
    :cond_8
    :goto_3
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    return-object p0
.end method

.method public final a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/yg;
    .locals 3

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/lg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/lg;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/lg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/lg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    iget-object v3, p1, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    iget-object v3, p1, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/lg;

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final q()Lcom/android/tools/r8/internal/B7;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/r7;->b:Lcom/android/tools/r8/internal/r7;

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/internal/iw0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/gw0;->b:Lcom/android/tools/r8/internal/gw0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/lg;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassState(type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/A7;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Lcom/android/tools/r8/internal/xt;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    return-object v0
.end method
