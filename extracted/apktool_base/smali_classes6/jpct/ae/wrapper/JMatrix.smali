.class public Ljpct/ae/wrapper/JMatrix;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctMatrix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Matrix;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JMatrix;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(Lcom/threed/jpct/Matrix;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0, p1}, Lcom/threed/jpct/Matrix;-><init>(Lcom/threed/jpct/Matrix;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JMatrix;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public cloneMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fillDump([F)[F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object p1

    return-object p1
.end method

.method public get(II)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->get(II)F

    move-result p1

    return p1
.end method

.method public getDump()[F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getDump()[F

    move-result-object v0

    return-object v0
.end method

.method public getTranslation()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getTranslation()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getXAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getXAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->getXAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getYAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->getYAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getZAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->getZAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public interpolate(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Matrix;->interpolate(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;F)V

    return-void
.end method

.method public invert()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->invert()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public invert2(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public invert3x3()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->invert3x3()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public invert3x3_2(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public isIdentity()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->isIdentity()Z

    move-result v0

    return v0
.end method

.method public matMul(Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public orthonormalize()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->orthonormalize()V

    return-void
.end method

.method public rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    return-void
.end method

.method public rotateX(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateX(F)V

    return-void
.end method

.method public rotateY(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateY(F)V

    return-void
.end method

.method public rotateZ(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateZ(F)V

    return-void
.end method

.method public scalarMul(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    return-void
.end method

.method public set(IIF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Matrix;->set(IIF)V

    return-void
.end method

.method public setColumn(IFFFF)V
    .locals 7

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/Matrix;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/threed/jpct/Matrix;->setColumn(IFFFF)V

    return-void
.end method

.method public setDump([F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->setDump([F)V

    return-void
.end method

.method public setIdentity()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    return-void
.end method

.method public setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setRow(IFFFF)V
    .locals 7

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/Matrix;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/threed/jpct/Matrix;->setRow(IFFFF)V

    return-void
.end method

.method public setTo(Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformToGL()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->transformToGL()V

    return-void
.end method

.method public translate(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->translate(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public translate2(FFF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    return-void
.end method

.method public transpose()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMatrix;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->transpose()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method
