.class public Lcom/simsilica/mathd/util/FixedIntRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/simsilica/mathd/util/IntRange;


# instance fields
.field private min:I

.field private size:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/simsilica/mathd/util/FixedIntRange;->min:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/simsilica/mathd/util/FixedIntRange;->size:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/util/FixedIntRange;->size:I

    return v0
.end method

.method public getMaxValue()I
    .locals 2

    iget v0, p0, Lcom/simsilica/mathd/util/FixedIntRange;->min:I

    iget v1, p0, Lcom/simsilica/mathd/util/FixedIntRange;->size:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/util/FixedIntRange;->min:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/simsilica/mathd/util/FixedIntRange;->getMinValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/simsilica/mathd/util/FixedIntRange;->getMaxValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
