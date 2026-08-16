.class public Lcom/ardor3d/math/Rectangle2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyRectangle2;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field private static final RECTANGLE_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Rectangle2;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _height:I

.field private _width:I

.field private _x:I

.field private _y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ardor3d/math/Rectangle2;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Rectangle2;->RECTANGLE_POOL:Lcom/ardor3d/math/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Rectangle2;->setX(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Rectangle2;->setY(I)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/ardor3d/math/Rectangle2;->setWidth(I)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/ardor3d/math/Rectangle2;->setHeight(I)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/Rectangle2;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Rectangle2;->set(Lcom/ardor3d/math/Rectangle2;)Lcom/ardor3d/math/Rectangle2;

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Rectangle2;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Rectangle2;->RECTANGLE_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Rectangle2;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Rectangle2;

    invoke-direct {v0}, Lcom/ardor3d/math/Rectangle2;-><init>()V

    return-object v0
.end method

.method public static intersect(Lcom/ardor3d/math/Rectangle2;Lcom/ardor3d/math/Rectangle2;Lcom/ardor3d/math/Rectangle2;)Lcom/ardor3d/math/Rectangle2;
    .locals 5

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/ardor3d/math/Rectangle2;

    invoke-direct {p2}, Lcom/ardor3d/math/Rectangle2;-><init>()V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v3

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getHeight()I

    move-result p0

    add-int/2addr v3, p0

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result p0

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v2, v0

    sub-int/2addr p0, v1

    .line 12
    invoke-virtual {p2, v0, v1, v2, p0}, Lcom/ardor3d/math/Rectangle2;->set(IIII)Lcom/ardor3d/math/Rectangle2;

    return-object p2
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Rectangle2;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Rectangle2;->RECTANGLE_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/ardor3d/math/Rectangle2;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Rectangle2;

    .line 3
    iget v1, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    iput v1, v0, Lcom/ardor3d/math/Rectangle2;->_x:I

    .line 4
    iget v1, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    iput v1, v0, Lcom/ardor3d/math/Rectangle2;->_y:I

    .line 5
    iget v1, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    iput v1, v0, Lcom/ardor3d/math/Rectangle2;->_width:I

    .line 6
    iget v1, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    iput v1, v0, Lcom/ardor3d/math/Rectangle2;->_height:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->clone()Lcom/ardor3d/math/Rectangle2;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyRectangle2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyRectangle2;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRectangle2;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRectangle2;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRectangle2;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRectangle2;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getHeight()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Rectangle2;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    add-int/lit16 v0, v0, 0x220

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public intersect(Lcom/ardor3d/math/Rectangle2;Lcom/ardor3d/math/Rectangle2;)Lcom/ardor3d/math/Rectangle2;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/ardor3d/math/Rectangle2;

    invoke-direct {p2}, Lcom/ardor3d/math/Rectangle2;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getX()I

    move-result v3

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle2;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getY()I

    move-result v4

    invoke-virtual {p1}, Lcom/ardor3d/math/Rectangle2;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr v2, v0

    sub-int/2addr p1, v1

    .line 6
    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/ardor3d/math/Rectangle2;->set(IIII)Lcom/ardor3d/math/Rectangle2;

    return-object p2
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "x"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    const-string v0, "y"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    const-string v0, "width"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Rectangle2;->setX(I)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Rectangle2;->setY(I)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Rectangle2;->setWidth(I)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Rectangle2;->setHeight(I)V

    return-void
.end method

.method public set(IIII)Lcom/ardor3d/math/Rectangle2;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    .line 2
    iput p2, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    .line 3
    iput p3, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    .line 4
    iput p4, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    return-object p0
.end method

.method public set(Lcom/ardor3d/math/Rectangle2;)Lcom/ardor3d/math/Rectangle2;
    .locals 3

    .line 5
    iget v0, p1, Lcom/ardor3d/math/Rectangle2;->_x:I

    iget v1, p1, Lcom/ardor3d/math/Rectangle2;->_y:I

    iget v2, p1, Lcom/ardor3d/math/Rectangle2;->_width:I

    iget p1, p1, Lcom/ardor3d/math/Rectangle2;->_height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ardor3d/math/Rectangle2;->set(IIII)Lcom/ardor3d/math/Rectangle2;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Rectangle2 [origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    const-string v1, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    const-string v1, "width"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_x:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_y:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_width:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/ardor3d/math/Rectangle2;->_height:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
