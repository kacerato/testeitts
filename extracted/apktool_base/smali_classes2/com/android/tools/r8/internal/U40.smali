.class public final Lcom/android/tools/r8/internal/U40;
.super Lcom/android/tools/r8/internal/Z40;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Lcom/android/tools/r8/internal/kK;

.field public final e:Z

.field public final f:Lcom/android/tools/r8/graph/I2;

.field public final g:Z

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z[Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/graph/I2;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Z40;-><init>()V

    array-length v0, p4

    iget-object v1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/U40;->g:Z

    sget-boolean v1, Lcom/android/tools/r8/internal/U40;->i:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    aget-object p4, p4, v2

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/U40;->d:Lcom/android/tools/r8/internal/kK;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/U40;->e:Z

    iput-object p5, p0, Lcom/android/tools/r8/internal/U40;->f:Lcom/android/tools/r8/graph/I2;

    iput-boolean p6, p0, Lcom/android/tools/r8/internal/U40;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/W40;I)I
    .locals 6

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U40;->e()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U40;->e()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4
    iget-object v1, p2, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 5
    iget-object p3, p2, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/U40;->g:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    .line 10
    :goto_1
    invoke-virtual {p1, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move p3, v2

    goto :goto_0

    .line 11
    :cond_3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/U40;->e:Z

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 14
    iget-object p2, p2, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x2

    .line 16
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    :goto_2
    move-object v3, p2

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    goto :goto_2

    .line 17
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/U40;->d:Lcom/android/tools/r8/internal/kK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/U40;->f:Lcom/android/tools/r8/graph/I2;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/U40;->h:Z

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/NJ;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return p3
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/U40;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INVOKE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Y40;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Y40;->g:Lcom/android/tools/r8/internal/Y40;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/android/tools/r8/internal/Z40;

    instance-of v0, p1, Lcom/android/tools/r8/internal/U40;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Y40;->g:Lcom/android/tools/r8/internal/Y40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Z40;->c()Lcom/android/tools/r8/internal/Y40;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/U40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->d:Lcom/android/tools/r8/internal/kK;

    iget-object v2, v0, Lcom/android/tools/r8/internal/U40;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/U40;->e:Z

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/U40;->e:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->f:Lcom/android/tools/r8/graph/I2;

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/android/tools/r8/internal/U40;->f:Lcom/android/tools/r8/graph/I2;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    :cond_4
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/U40;->h:Z

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/U40;->h:Z

    invoke-static {v1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/U40;->i:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U40;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/U40;->e:Z

    return v0
.end method

.method public final e()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/U40;->g:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/U40;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/U40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->d:Lcom/android/tools/r8/internal/kK;

    iget-object v3, p1, Lcom/android/tools/r8/internal/U40;->d:Lcom/android/tools/r8/internal/kK;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/U40;->e:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/U40;->e:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/U40;->f:Lcom/android/tools/r8/graph/I2;

    sget v4, Lcom/android/tools/r8/graph/I2;->g:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/U40;->h:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/U40;->h:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v1, p0, Lcom/android/tools/r8/internal/U40;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/U40;->d:Lcom/android/tools/r8/internal/kK;

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/U40;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/U40;->f:Lcom/android/tools/r8/graph/I2;

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/U40;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v0, Lcom/android/tools/r8/internal/Y40;->g:Lcom/android/tools/r8/internal/Y40;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
