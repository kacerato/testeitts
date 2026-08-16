.class public Lcom/ardor3d/math/Rectangle3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyRectangle3;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field private static final RECTANGLE_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Rectangle3;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _a:Lcom/ardor3d/math/Vector3;

.field private final _b:Lcom/ardor3d/math/Vector3;

.field private final _c:Lcom/ardor3d/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ardor3d/math/Rectangle3;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Rectangle3;->RECTANGLE_POOL:Lcom/ardor3d/math/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    .line 7
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    .line 8
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    .line 9
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Rectangle3;->setA(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Rectangle3;->setB(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/ardor3d/math/Rectangle3;->setC(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Rectangle3;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Rectangle3;->RECTANGLE_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Rectangle3;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Rectangle3;

    invoke-direct {v0}, Lcom/ardor3d/math/Rectangle3;-><init>()V

    return-object v0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Rectangle3;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Rectangle3;->RECTANGLE_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/ardor3d/math/Rectangle3;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Rectangle3;

    .line 3
    iget-object v1, v0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 4
    iget-object v1, v0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 5
    iget-object v1, v0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
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
    invoke-virtual {p0}, Lcom/ardor3d/math/Rectangle3;->clone()Lcom/ardor3d/math/Rectangle3;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyRectangle3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyRectangle3;

    iget-object v1, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRectangle3;->getA()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRectangle3;->getB()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRectangle3;->getC()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getA()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getB()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getC()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Rectangle3;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x220

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public random(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 10

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v0

    float-to-double v0, v0

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    sub-double/2addr v4, v2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v7

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v8

    iget-object v9, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9, v4, v5, v6}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5, v0, v1, v7}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2, v3, v8}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v8}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "a"

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "b"

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "c"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

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

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Rectangle3;->setA(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Rectangle3;->setB(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Rectangle3;->setC(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public setA(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setB(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setC(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Rectangle3 [A: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " C: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "a"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "b"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "c"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_a:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_b:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/math/Rectangle3;->_c:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
