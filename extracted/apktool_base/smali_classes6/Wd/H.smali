.class public abstract LWd/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final i:J = -0x18e1d522c11ac837L

.field public static final j:F = 0.5f

.field public static final k:I = 0xa


# instance fields
.field public transient b:I

.field public transient c:I

.field public d:F

.field public e:I

.field public f:I

.field public g:F

.field public transient h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1
    invoke-direct {p0, v0, v1}, LWd/H;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    invoke-direct {p0, p1, v0}, LWd/H;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LWd/H;->h:Z

    .line 5
    iput p2, p0, LWd/H;->d:F

    .line 6
    iput p2, p0, LWd/H;->g:F

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 7
    invoke-static {p1}, LVd/b;->a(F)I

    move-result p1

    invoke-virtual {p0, p1}, LWd/H;->jf(I)I

    return-void
.end method


# virtual methods
.method public Xe()I
    .locals 1

    invoke-virtual {p0}, LWd/H;->Ye()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract Ye()I
.end method

.method public Ze()V
    .locals 3

    iget v0, p0, LWd/H;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, LWd/H;->d:F

    div-float/2addr v1, v2

    invoke-static {v1}, LVd/b;->a(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, LVd/c;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->gf(I)V

    invoke-virtual {p0}, LWd/H;->Ye()I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->af(I)V

    iget v0, p0, LWd/H;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->bf(I)V

    :cond_0
    return-void
.end method

.method public af(I)V
    .locals 3

    add-int/lit8 v0, p1, -0x1

    int-to-float v1, p1

    iget v2, p0, LWd/H;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LWd/H;->e:I

    iget v0, p0, LWd/H;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, LWd/H;->c:I

    return-void
.end method

.method public bf(I)V
    .locals 2

    iget v0, p0, LWd/H;->g:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, LWd/H;->f:I

    :cond_0
    return-void
.end method

.method public cf(I)V
    .locals 2

    iget v0, p0, LWd/H;->e:I

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, LWd/H;->d:F

    div-float/2addr p1, v1

    invoke-static {p1}, LVd/b;->a(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, LVd/c;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, LWd/H;->gf(I)V

    invoke-virtual {p0}, LWd/H;->Ye()I

    move-result p1

    invoke-virtual {p0, p1}, LWd/H;->af(I)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LWd/H;->b:I

    invoke-virtual {p0}, LWd/H;->Ye()I

    move-result v0

    iput v0, p0, LWd/H;->c:I

    return-void
.end method

.method public df()F
    .locals 1

    iget v0, p0, LWd/H;->g:F

    return v0
.end method

.method public final ef(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget p1, p0, LWd/H;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LWd/H;->c:I

    :cond_0
    iget p1, p0, LWd/H;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LWd/H;->b:I

    iget v0, p0, LWd/H;->e:I

    if-gt p1, v0, :cond_1

    iget v1, p0, LWd/H;->c:I

    if-nez v1, :cond_3

    :cond_1
    if-le p1, v0, :cond_2

    invoke-virtual {p0}, LWd/H;->Ye()I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    invoke-static {p1}, LVd/c;->a(I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LWd/H;->Ye()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, LWd/H;->gf(I)V

    invoke-virtual {p0}, LWd/H;->Ye()I

    move-result p1

    invoke-virtual {p0, p1}, LWd/H;->af(I)V

    :cond_3
    return-void
.end method

.method public ff(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LWd/H;->h:Z

    if-eqz p1, :cond_0

    iget p1, p0, LWd/H;->f:I

    if-gtz p1, :cond_0

    iget p1, p0, LWd/H;->g:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LWd/H;->Ze()V

    :cond_0
    return-void
.end method

.method public abstract gf(I)V
.end method

.method public hf(I)V
    .locals 1

    iget p1, p0, LWd/H;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LWd/H;->b:I

    iget p1, p0, LWd/H;->g:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, LWd/H;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LWd/H;->f:I

    iget-boolean v0, p0, LWd/H;->h:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    invoke-virtual {p0}, LWd/H;->Ze()V

    :cond_0
    return-void
.end method

.method public if(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, LWd/H;->g:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Factor must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, LWd/H;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jf(I)I
    .locals 1

    invoke-static {p1}, LVd/c;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->af(I)V

    invoke-virtual {p0, p1}, LWd/H;->bf(I)V

    return v0
.end method

.method public kf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LWd/H;->h:Z

    return-void
.end method

.method public final lf()V
    .locals 0

    invoke-virtual {p0}, LWd/H;->Ze()V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    iget v0, p0, LWd/H;->d:F

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v1

    iput v1, p0, LWd/H;->d:F

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result p1

    iput p1, p0, LWd/H;->g:F

    iget p1, p0, LWd/H;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p1}, LWd/H;->jf(I)I

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, LWd/H;->b:I

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LWd/H;->d:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget v0, p0, LWd/H;->g:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    return-void
.end method
