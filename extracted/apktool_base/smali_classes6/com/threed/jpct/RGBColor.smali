.class public Lcom/threed/jpct/RGBColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLACK:Lcom/threed/jpct/RGBColor;

.field public static final BLUE:Lcom/threed/jpct/RGBColor;

.field private static final COLOR_INV:F = 0.003921569f

.field public static final GREEN:Lcom/threed/jpct/RGBColor;

.field public static final RED:Lcom/threed/jpct/RGBColor;

.field public static final WHITE:Lcom/threed/jpct/RGBColor;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field alpha:I

.field blue:I

.field green:I

.field nalpha:F

.field nblue:F

.field ngreen:F

.field nred:F

.field red:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/threed/jpct/RGBColor;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->BLACK:Lcom/threed/jpct/RGBColor;

    new-instance v0, Lcom/threed/jpct/RGBColor;

    const/16 v2, 0xff

    invoke-direct {v0, v2, v2, v2}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->WHITE:Lcom/threed/jpct/RGBColor;

    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v2, v1, v1}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->RED:Lcom/threed/jpct/RGBColor;

    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v1, v2, v1}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->GREEN:Lcom/threed/jpct/RGBColor;

    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v1, v1, v2}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->BLUE:Lcom/threed/jpct/RGBColor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    .line 3
    iput v0, p0, Lcom/threed/jpct/RGBColor;->blue:I

    .line 4
    iput v0, p0, Lcom/threed/jpct/RGBColor;->green:I

    .line 5
    iput v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nred:F

    .line 7
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    .line 8
    iput v0, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    .line 9
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0xff

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/RGBColor;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    .line 13
    iput v0, p0, Lcom/threed/jpct/RGBColor;->blue:I

    .line 14
    iput v0, p0, Lcom/threed/jpct/RGBColor;->green:I

    .line 15
    iput v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/threed/jpct/RGBColor;->nred:F

    .line 17
    iput v1, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    .line 18
    iput v1, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    .line 19
    iput v1, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    const/16 v1, 0xff

    .line 20
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/RGBColor;->red:I

    .line 21
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/RGBColor;->blue:I

    .line 22
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/RGBColor;->green:I

    .line 23
    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    .line 24
    iget p2, p0, Lcom/threed/jpct/RGBColor;->red:I

    int-to-float p2, p2

    const p3, 0x3b808081

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/threed/jpct/RGBColor;->nred:F

    .line 25
    iget p2, p0, Lcom/threed/jpct/RGBColor;->blue:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    .line 26
    iget p2, p0, Lcom/threed/jpct/RGBColor;->green:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    int-to-float p1, p1

    mul-float/2addr p1, p3

    .line 27
    iput p1, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    return-void
.end method


# virtual methods
.method public getARGB()I
    .locals 2

    iget v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/threed/jpct/RGBColor;->red:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/RGBColor;->green:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/RGBColor;->blue:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    return v0
.end method

.method public getBlue()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/RGBColor;->blue:I

    return v0
.end method

.method public getGreen()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/RGBColor;->green:I

    return v0
.end method

.method public getNormalizedAlpha()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    return v0
.end method

.method public getNormalizedBlue()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    return v0
.end method

.method public getNormalizedGreen()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    return v0
.end method

.method public getNormalizedRed()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/RGBColor;->nred:F

    return v0
.end method

.method public getRGB()I
    .locals 2

    iget v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/threed/jpct/RGBColor;->green:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/RGBColor;->blue:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getRed()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    return v0
.end method

.method public setTo(IIII)V
    .locals 2

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/RGBColor;->red:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/RGBColor;->blue:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/RGBColor;->green:I

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    iget p2, p0, Lcom/threed/jpct/RGBColor;->red:I

    int-to-float p2, p2

    const p3, 0x3b808081

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/threed/jpct/RGBColor;->nred:F

    iget p2, p0, Lcom/threed/jpct/RGBColor;->blue:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    iget p2, p0, Lcom/threed/jpct/RGBColor;->green:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    int-to-float p1, p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    return-void
.end method
