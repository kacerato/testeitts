.class public Lcom/ardor3d/math/ColorRGBA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field public static final BLACK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final BLACK_NO_ALPHA:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final BLUE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final BROWN:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field private static final COLOR_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/ColorRGBA;",
            ">;"
        }
    .end annotation
.end field

.field public static final CYAN:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final DARK_GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final GREEN:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final LIGHT_GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final MAGENTA:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final ORANGE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final PINK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final RED:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final YELLOW:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _a:F

.field protected _b:F

.field protected _g:F

.field protected _r:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ardor3d/math/ColorRGBA;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->COLOR_POOL:Lcom/ardor3d/math/ObjectPool;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->BLACK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->BLACK_NO_ALPHA:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->DARK_GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->LIGHT_GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->RED:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->GREEN:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->BLUE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->YELLOW:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->MAGENTA:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->CYAN:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const v3, 0x3f7bfbfc

    const v4, 0x3f028283

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->ORANGE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const v1, 0x3e20a0a1

    const v3, 0x3dc8c8c9

    const v4, 0x3e828283

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->BROWN:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const v1, 0x3f2e147b    # 0.68f

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/math/ColorRGBA;->PINK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    .line 5
    iput p2, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    .line 6
    iput p3, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    .line 7
    iput p4, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 3

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/ColorRGBA;->COLOR_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/ColorRGBA;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static lerp(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;FLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 5

    if-nez p3, :cond_0

    .line 7
    new-instance p3, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p3}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 8
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 9
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 10
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 11
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p0

    mul-float/2addr v0, p0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p0

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    .line 12
    invoke-virtual {p3, v1, v2, v3, v0}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p0

    return-object p0
.end method

.method public static parseColor(Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 10

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p1}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    const/16 v5, 0x10

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    move v0, p0

    move v1, v2

    move v2, v0

    goto/16 :goto_2

    :cond_1
    const/4 v6, 0x3

    if-ne v0, v6, :cond_2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v4

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    move v1, p0

    move p0, v2

    move v0, p0

    goto/16 :goto_2

    :cond_2
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p0, v4

    move v9, v2

    move v2, v0

    move v0, v1

    move v1, v9

    goto/16 :goto_2

    :cond_3
    const/4 v8, 0x5

    if-ne v0, v8, :cond_4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v4

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    :goto_1
    int-to-float p0, p0

    div-float/2addr p0, v4

    move v9, v1

    move v1, p0

    move p0, v9

    goto :goto_2

    :cond_4
    const/4 v3, 0x7

    const/high16 v4, 0x437f0000    # 255.0f

    if-ne v0, v3, :cond_5

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_5
    const/16 v7, 0x9

    if-ne v0, v7, :cond_6

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v4

    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_6
    move p0, v2

    move v0, p0

    move v1, v0

    :goto_2
    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    return-object p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "must start with #."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static randomColor(Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p0}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    return-object p0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/ColorRGBA;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/ColorRGBA;->COLOR_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(FFFFLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    if-nez p5, :cond_0

    .line 1
    new-instance p5, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p5}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result p1

    add-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result p2

    add-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result p3

    add-float/2addr p3, p4

    invoke-virtual {p5, v0, p1, p2, p3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 6

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/math/ColorRGBA;->add(FFFFLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public addLocal(FFFF)Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result p1

    add-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result p2

    add-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result p3

    add-float/2addr p3, p4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public addLocal(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 3

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ardor3d/math/ColorRGBA;->addLocal(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public asHexRRGGBBAA()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/ardor3d/math/MathUtils;->clamp(FFF)F

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v5

    invoke-static {v5, v2, v3}, Lcom/ardor3d/math/MathUtils;->clamp(FFF)F

    move-result v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v6

    invoke-static {v6, v2, v3}, Lcom/ardor3d/math/MathUtils;->clamp(FFF)F

    move-result v6

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v7

    invoke-static {v7, v2, v3}, Lcom/ardor3d/math/MathUtils;->clamp(FFF)F

    move-result v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v7, 0x2

    if-ge v3, v7, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asIntARGB()I
    .locals 3

    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget v2, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget v2, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public asIntRGBA()I
    .locals 3

    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget v2, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget v2, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public clamp(Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p1}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget v0, p1, Lcom/ardor3d/math/ColorRGBA;->_r:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_1

    iput v1, p1, Lcom/ardor3d/math/ColorRGBA;->_r:F

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iput v3, p1, Lcom/ardor3d/math/ColorRGBA;->_r:F

    :cond_2
    :goto_0
    iget v0, p1, Lcom/ardor3d/math/ColorRGBA;->_g:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    iput v1, p1, Lcom/ardor3d/math/ColorRGBA;->_g:F

    goto :goto_1

    :cond_3
    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iput v3, p1, Lcom/ardor3d/math/ColorRGBA;->_g:F

    :cond_4
    :goto_1
    iget v0, p1, Lcom/ardor3d/math/ColorRGBA;->_b:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_5

    iput v1, p1, Lcom/ardor3d/math/ColorRGBA;->_b:F

    goto :goto_2

    :cond_5
    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iput v3, p1, Lcom/ardor3d/math/ColorRGBA;->_b:F

    :cond_6
    :goto_2
    iget v0, p1, Lcom/ardor3d/math/ColorRGBA;->_a:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_7

    iput v1, p1, Lcom/ardor3d/math/ColorRGBA;->_a:F

    goto :goto_3

    :cond_7
    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iput v3, p1, Lcom/ardor3d/math/ColorRGBA;->_a:F

    :cond_8
    :goto_3
    return-object p1
.end method

.method public clampLocal()V
    .locals 4

    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    iput v1, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iput v3, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    :cond_1
    :goto_0
    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    iput v1, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    goto :goto_1

    :cond_2
    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iput v3, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    :cond_3
    :goto_1
    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    iput v1, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    goto :goto_2

    :cond_4
    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iput v3, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    :cond_5
    :goto_2
    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_6

    iput v1, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    goto :goto_3

    :cond_6
    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    iput v3, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    :cond_7
    :goto_3
    return-void
.end method

.method public clone()Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/ColorRGBA;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
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
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->clone()Lcom/ardor3d/math/ColorRGBA;

    move-result-object v0

    return-object v0
.end method

.method public divide(FLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p2}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    div-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p2}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    div-float/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public divideLocal(F)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result p1

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public divideLocal(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    div-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public fromIntARGB(I)V
    .locals 2

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    return-void
.end method

.method public fromIntRGBA(I)V
    .locals 2

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    return v0
.end method

.method public getBlue()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/ColorRGBA;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGreen()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    return v0
.end method

.method public getRed()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    return v0
.end method

.method public getValue(I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be either 0, 1, 2 or 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x220

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public lerp(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;FLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 5

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p3}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 5
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v4

    mul-float/2addr v0, v4

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    .line 6
    invoke-virtual {p3, v1, v2, v3, v0}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public lerpLocal(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;F)Lcom/ardor3d/math/ColorRGBA;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ardor3d/math/ColorRGBA;->setRed(F)V

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ardor3d/math/ColorRGBA;->setGreen(F)V

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ardor3d/math/ColorRGBA;->setBlue(F)V

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    return-object p0
.end method

.method public lerpLocal(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;F)Lcom/ardor3d/math/ColorRGBA;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    .line 5
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ardor3d/math/ColorRGBA;->setRed(F)V

    .line 6
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ardor3d/math/ColorRGBA;->setGreen(F)V

    .line 7
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ardor3d/math/ColorRGBA;->setBlue(F)V

    .line 8
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    return-object p0
.end method

.method public multiply(FLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p2}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p2}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    mul-float/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public multiplyLocal(F)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    mul-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "r"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setRed(F)V

    const-string v0, "g"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setGreen(F)V

    const-string v0, "b"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setBlue(F)V

    const-string v0, "a"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

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

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setRed(F)V

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setGreen(F)V

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setBlue(F)V

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    return-void
.end method

.method public set(FFFF)Lcom/ardor3d/math/ColorRGBA;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/ColorRGBA;->setRed(F)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/ColorRGBA;->setGreen(F)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/ardor3d/math/ColorRGBA;->setBlue(F)V

    .line 4
    invoke-virtual {p0, p4}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    return-object p0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    .line 5
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    .line 6
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    .line 7
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v0

    iput v0, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    .line 8
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    return-object p0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/ColorRGBA;->_a:F

    return-void
.end method

.method public setBlue(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/ColorRGBA;->_b:F

    return-void
.end method

.method public setGreen(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/ColorRGBA;->_g:F

    return-void
.end method

.method public setRed(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/ColorRGBA;->_r:F

    return-void
.end method

.method public setValue(IF)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be either 0, 1, 2 or 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/ColorRGBA;->setBlue(F)V

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/ColorRGBA;->setGreen(F)V

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/ColorRGBA;->setRed(F)V

    return-void
.end method

.method public subtract(FFFFLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    if-nez p5, :cond_0

    .line 1
    new-instance p5, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {p5}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result p2

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result p3

    sub-float/2addr p3, p4

    invoke-virtual {p5, v0, p1, p2, p3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 6

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/math/ColorRGBA;->subtract(FFFFLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public subtractLocal(FFFF)Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result p2

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result p3

    sub-float/2addr p3, p4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public subtractLocal(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 3

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ardor3d/math/ColorRGBA;->subtractLocal(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public toArray([F)[F
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v1

    aput v1, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.ColorRGBA [R="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", G="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", B="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    const-string v1, "r"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v0

    const-string v1, "g"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v0

    const-string v1, "b"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v0

    const-string v1, "a"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    invoke-virtual {p0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    return-void
.end method

.method public zero()Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v0

    return-object v0
.end method
