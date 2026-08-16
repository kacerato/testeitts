.class public final Lcom/android/tools/r8/internal/hH;
.super Lcom/android/tools/r8/internal/S;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public d:Lcom/android/tools/r8/internal/hH;

.field public e:Lcom/android/tools/r8/internal/hH;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/S;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/S;-><init>(ILjava/lang/Object;)V

    const/high16 p1, -0x40000000    # -2.0f

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/hH;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/hH;->f:I

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/hH;->d:Lcom/android/tools/r8/internal/hH;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    return-void

    .line 4
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/hH;)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/hH;->f:I

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/hH;->e:Lcom/android/tools/r8/internal/hH;

    return-void
.end method

.method public final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    return-void

    .line 2
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/android/tools/r8/internal/hH;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hH;->e:Lcom/android/tools/r8/internal/hH;

    iget v1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    iget v1, v0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/hH;->d:Lcom/android/tools/r8/internal/hH;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final clone()Lcom/android/tools/r8/internal/hH;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hH;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/S;->b:I

    iput v1, v0, Lcom/android/tools/r8/internal/S;->b:I

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    .line 5
    iget v1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    iput v1, v0, Lcom/android/tools/r8/internal/hH;->f:I

    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hH;->clone()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/hH;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hH;->d:Lcom/android/tools/r8/internal/hH;

    iget v1, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    iget v1, v0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/hH;->e:Lcom/android/tools/r8/internal/hH;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget v0, p0, Lcom/android/tools/r8/internal/S;->b:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/hH;->f:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/S;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/tools/r8/internal/S;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
