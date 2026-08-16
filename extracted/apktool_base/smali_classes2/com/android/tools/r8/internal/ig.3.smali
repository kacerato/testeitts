.class public final Lcom/android/tools/r8/internal/ig;
.super Lcom/android/tools/r8/internal/xg;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public f:Lcom/android/tools/r8/internal/p10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/p10;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/xg;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    sget-boolean p1, Lcom/android/tools/r8/internal/ig;->g:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must use BottomArrayTypeParameterState instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->f()Z

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

.method public static a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/Q00;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ig;

    .line 5
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/ig;-><init>(Lcom/android/tools/r8/internal/p10;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/android/tools/r8/internal/p10;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object p1, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p1

    .line 11
    :cond_0
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xg;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
    .locals 2

    .line 13
    sget-boolean p3, Lcom/android/tools/r8/internal/ig;->g:Z

    if-nez p3, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xg;->A()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    .line 15
    iget-object p4, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    .line 16
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, p4, :cond_2

    move p4, v1

    goto :goto_1

    :cond_2
    move p4, v0

    .line 17
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 18
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 19
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/yg;->a(Lcom/android/tools/r8/internal/yg;)Z

    move-result p3

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yg;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 22
    :cond_4
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/yg;->c:Z

    if-nez p1, :cond_5

    iget-boolean p1, p2, Lcom/android/tools/r8/internal/yg;->c:Z

    if-eqz p1, :cond_5

    .line 23
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/yg;->c:Z

    move v0, v1

    :cond_5
    if-nez p4, :cond_7

    if-nez p3, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    return-object p0

    .line 24
    :cond_7
    :goto_2
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/ig;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/yg;
    .locals 2

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/ig;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/ig;-><init>(Lcom/android/tools/r8/internal/p10;Ljava/util/Set;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ig;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/ig;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final q()Lcom/android/tools/r8/internal/B7;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/p7;->b:Lcom/android/tools/r8/internal/p7;

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/internal/iw0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/fw0;->b:Lcom/android/tools/r8/internal/fw0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/ig;->g:Z

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result v0

    return v0
.end method

.method public final z()Lcom/android/tools/r8/internal/xt;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    return-object v0
.end method
