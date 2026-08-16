.class public Ljpct/ae/wrapper/JRGBColor;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctRGBColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/RGBColor;",
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

    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0}, Lcom/threed/jpct/RGBColor;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JRGBColor;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(III)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, p1, p2, p3}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JRGBColor;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize3(IIII)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/threed/jpct/RGBColor;-><init>(IIII)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JRGBColor;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public getARGB()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getARGB()I

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBlue()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v0

    return v0
.end method

.method public getGreen()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v0

    return v0
.end method

.method public getNormalizedAlpha()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result v0

    return v0
.end method

.method public getNormalizedBlue()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v0

    return v0
.end method

.method public getNormalizedGreen()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v0

    return v0
.end method

.method public getNormalizedRed()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v0

    return v0
.end method

.method public getRed()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v0

    return v0
.end method

.method public setTo(IIII)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRGBColor;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/RGBColor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/RGBColor;->setTo(IIII)V

    return-void
.end method
