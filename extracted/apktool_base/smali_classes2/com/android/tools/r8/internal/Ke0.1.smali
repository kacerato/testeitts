.class public Lcom/android/tools/r8/internal/Ke0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/internal/Ke0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/pu0;

.field public final c:I

.field public final d:I

.field public final e:Lcom/android/tools/r8/internal/zE;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/android/tools/r8/internal/pu0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    .line 3
    iput p2, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/Ke0;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->e2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    const/high16 p1, -0x80000000

    .line 9
    iput p1, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    .line 10
    iput-object p3, p0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    .line 11
    iput-object p2, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ne0;)Z
    .locals 2

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    iget v1, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ne0;Ljava/util/TreeSet;Lcom/android/tools/r8/internal/hF;)Z
    .locals 3

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ke0;->a(Lcom/android/tools/r8/internal/Ne0;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Ke0;

    if-ne p0, p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget v1, p2, Lcom/android/tools/r8/internal/Ke0;->d:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v1

    .line 8
    iget-object p2, p2, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p2

    .line 9
    iget v2, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    if-ne v2, v1, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    iget v2, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    add-int/2addr v2, v0

    if-ne v2, v1, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_1

    .line 12
    iget p2, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    add-int/lit8 v1, v1, 0x1

    if-ne p2, v1, :cond_1

    :goto_1
    return v0

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/util/function/IntConsumer;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Ne0;)Z
    .locals 5

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/Ke0;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ke0;->a(Lcom/android/tools/r8/internal/Ne0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    .line 8
    iget p1, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return v2

    .line 9
    :cond_5
    iget-object v1, p1, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    iget v3, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v1

    if-nez v0, :cond_7

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    if-eq v1, v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_7
    :goto_2
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_8

    iget-object v3, p1, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    .line 12
    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    add-int/2addr v0, v4

    if-ne v1, v0, :cond_9

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result p1

    if-eqz p1, :cond_9

    return v4

    :cond_9
    return v2
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/Ke0;

    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    iget v1, p1, Lcom/android/tools/r8/internal/Ke0;->d:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    iget v1, p1, Lcom/android/tools/r8/internal/Ke0;->c:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    return p1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_6

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    if-nez p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    iget v0, v0, Lcom/android/tools/r8/internal/zE;->g:I

    iget p1, p1, Lcom/android/tools/r8/internal/zE;->g:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/Ke0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Ke0;

    iget v0, p1, Lcom/android/tools/r8/internal/Ke0;->d:I

    iget v2, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/tools/r8/internal/Ke0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    iget-object v2, p1, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v0

    const-string v1, ", "

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move-wide "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/Ke0;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/Ke0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/Ke0;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move-object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
