.class public final Lcom/jme3/system/DisplayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private display:J

.field private height:I

.field private name:Ljava/lang/String;

.field private primary:Z

.field private rate:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v6, 0x0

    .line 1
    const-string v7, "Generic Monitor"

    const-wide/16 v1, 0x0

    const/16 v3, 0x438

    const/16 v4, 0x780

    const/16 v5, 0x3c

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/jme3/system/DisplayInfo;-><init>(JIIIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JIIIZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/jme3/system/DisplayInfo;->display:J

    .line 4
    iput p3, p0, Lcom/jme3/system/DisplayInfo;->width:I

    .line 5
    iput p4, p0, Lcom/jme3/system/DisplayInfo;->height:I

    .line 6
    iput p5, p0, Lcom/jme3/system/DisplayInfo;->rate:I

    .line 7
    iput-boolean p6, p0, Lcom/jme3/system/DisplayInfo;->primary:Z

    .line 8
    iput-object p7, p0, Lcom/jme3/system/DisplayInfo;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jme3/system/DisplayInfo;

    if-eq v2, v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/jme3/system/DisplayInfo;

    iget-wide v1, p0, Lcom/jme3/system/DisplayInfo;->display:J

    iget-wide v3, p1, Lcom/jme3/system/DisplayInfo;->display:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lcom/jme3/system/DisplayInfo;->width:I

    iget v2, p1, Lcom/jme3/system/DisplayInfo;->width:I

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/jme3/system/DisplayInfo;->height:I

    iget v2, p1, Lcom/jme3/system/DisplayInfo;->height:I

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget v1, p0, Lcom/jme3/system/DisplayInfo;->rate:I

    iget v2, p1, Lcom/jme3/system/DisplayInfo;->rate:I

    if-eq v1, v2, :cond_6

    return v0

    :cond_6
    iget-boolean v1, p0, Lcom/jme3/system/DisplayInfo;->primary:Z

    iget-boolean v2, p1, Lcom/jme3/system/DisplayInfo;->primary:Z

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    iget-object v0, p0, Lcom/jme3/system/DisplayInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/jme3/system/DisplayInfo;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDisplay()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/system/DisplayInfo;->display:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/system/DisplayInfo;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/DisplayInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    iget v0, p0, Lcom/jme3/system/DisplayInfo;->rate:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/jme3/system/DisplayInfo;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/jme3/system/DisplayInfo;->display:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x123

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget v0, p0, Lcom/jme3/system/DisplayInfo;->width:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget v0, p0, Lcom/jme3/system/DisplayInfo;->height:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget v0, p0, Lcom/jme3/system/DisplayInfo;->rate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget-boolean v0, p0, Lcom/jme3/system/DisplayInfo;->primary:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget-object v0, p0, Lcom/jme3/system/DisplayInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isPrimary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/system/DisplayInfo;->primary:Z

    return v0
.end method

.method public setDisplay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jme3/system/DisplayInfo;->display:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/system/DisplayInfo;->height:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/system/DisplayInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/system/DisplayInfo;->primary:Z

    return-void
.end method

.method public setRate(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/system/DisplayInfo;->rate:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/system/DisplayInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/system/DisplayInfo;->getDisplay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "NULL"

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/system/DisplayInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/system/DisplayInfo;->getDisplay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/system/DisplayInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/system/DisplayInfo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/system/DisplayInfo;->getRate()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/system/DisplayInfo;->getRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "[Unknown refresh rate]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
