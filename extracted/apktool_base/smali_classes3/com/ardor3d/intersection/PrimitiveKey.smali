.class public Lcom/ardor3d/intersection/PrimitiveKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _primitiveIndex:I

.field private final _section:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ardor3d/intersection/PrimitiveKey;->_primitiveIndex:I

    iput p2, p0, Lcom/ardor3d/intersection/PrimitiveKey;->_section:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/intersection/PrimitiveKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/intersection/PrimitiveKey;

    iget v1, p0, Lcom/ardor3d/intersection/PrimitiveKey;->_primitiveIndex:I

    iget v3, p1, Lcom/ardor3d/intersection/PrimitiveKey;->_primitiveIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/ardor3d/intersection/PrimitiveKey;->_section:I

    iget p1, p1, Lcom/ardor3d/intersection/PrimitiveKey;->_section:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPrimitiveIndex()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/intersection/PrimitiveKey;->_primitiveIndex:I

    return v0
.end method

.method public getSection()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/intersection/PrimitiveKey;->_section:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/ardor3d/intersection/PrimitiveKey;->_primitiveIndex:I

    add-int/lit16 v0, v0, 0x220

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/ardor3d/intersection/PrimitiveKey;->_section:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method
