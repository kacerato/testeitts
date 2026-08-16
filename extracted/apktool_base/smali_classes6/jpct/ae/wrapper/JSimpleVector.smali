.class public Ljpct/ae/wrapper/JSimpleVector;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctSimpleVector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/SimpleVector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final ORIGIN()Lcom/threed/jpct/SimpleVector;
    .locals 1

    sget-object v0, Lcom/threed/jpct/SimpleVector;->ORIGIN:Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JSimpleVector;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(FFF)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0, p1, p2, p3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JSimpleVector;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize3(DDD)V
    .locals 8

    new-instance v7, Lcom/threed/jpct/SimpleVector;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/SimpleVector;-><init>(DDD)V

    invoke-virtual {p0, v7}, Ljpct/ae/wrapper/JSimpleVector;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize4(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0, p1}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JSimpleVector;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize5([F)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0, p1}, Lcom/threed/jpct/SimpleVector;-><init>([F)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JSimpleVector;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public calcAdd(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->calcAdd(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public calcAngle(Lcom/threed/jpct/SimpleVector;)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->calcAngle(Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    return p1
.end method

.method public calcAngleFast(Lcom/threed/jpct/SimpleVector;)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->calcAngleFast(Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    return p1
.end method

.method public calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public calcDot(Lcom/threed/jpct/SimpleVector;)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->calcDot(Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    return p1
.end method

.method public calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public create()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public create2(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public create3(FFF)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public distance(Lcom/threed/jpct/SimpleVector;)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->distance(Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getRotationMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getRotationMatrix2(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getRotationMatrix3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getRotationMatrix4(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getx()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    return v0
.end method

.method public gety()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    return v0
.end method

.method public getz()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v0

    return v0
.end method

.method public makeEqualLength(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->makeEqualLength(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public matMul(Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public normalize()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public normalize2(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public reflect(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->reflect(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->rotate(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/threed/jpct/Matrix;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->rotate(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public rotateX(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->rotateX(F)V

    return-void
.end method

.method public rotateY(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->rotateY(F)V

    return-void
.end method

.method public rotateZ(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->rotateZ(F)V

    return-void
.end method

.method public scalarMul(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    return-void
.end method

.method public set(FFF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-void
.end method

.method public set2(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setx(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    iput p1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    return-void
.end method

.method public sety(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    iput p1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    return-void
.end method

.method public setz(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    iput p1, v0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public sub(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public toArray()[F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSimpleVector;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
