.class public Lcn/pedant/SweetAlert/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;
    }
.end annotation


# static fields
.field public static final ROLL_BY_X:I = 0x0

.field public static final ROLL_BY_Y:I = 0x1

.field public static final ROLL_BY_Z:I = 0x2


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mRollType:I

.field private mToDegrees:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXType:I

    .line 20
    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYType:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXValue:F

    .line 22
    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYValue:F

    .line 23
    iput p1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mRollType:I

    .line 24
    iput p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mFromDegrees:F

    .line 25
    iput p3, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mToDegrees:F

    .line 26
    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotX:F

    .line 27
    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 29
    iput p1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mRollType:I

    .line 30
    iput p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mFromDegrees:F

    .line 31
    iput p3, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mToDegrees:F

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXType:I

    .line 33
    iput p1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYType:I

    .line 34
    iput p4, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXValue:F

    .line 35
    iput p5, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYValue:F

    .line 36
    invoke-direct {p0}, Lcn/pedant/SweetAlert/Rotate3dAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(IFFIFIF)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput p1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mRollType:I

    .line 39
    iput p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mFromDegrees:F

    .line 40
    iput p3, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mToDegrees:F

    .line 41
    iput p5, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXValue:F

    .line 42
    iput p4, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXType:I

    .line 43
    iput p7, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYValue:F

    .line 44
    iput p6, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYType:I

    .line 45
    invoke-direct {p0}, Lcn/pedant/SweetAlert/Rotate3dAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXType:I

    .line 3
    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYType:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXValue:F

    .line 5
    iput v1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYValue:F

    .line 6
    sget-object v2, Lcn/pedant/SweetAlert/R$styleable;->Rotate3dAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcn/pedant/SweetAlert/R$styleable;->Rotate3dAnimation_fromDeg:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mFromDegrees:F

    .line 8
    sget p2, Lcn/pedant/SweetAlert/R$styleable;->Rotate3dAnimation_toDeg:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mToDegrees:F

    .line 9
    sget p2, Lcn/pedant/SweetAlert/R$styleable;->Rotate3dAnimation_rollType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mRollType:I

    .line 10
    sget p2, Lcn/pedant/SweetAlert/R$styleable;->Rotate3dAnimation_customPivotX:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/pedant/SweetAlert/Rotate3dAnimation;->parseValue(Landroid/util/TypedValue;)Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;

    move-result-object p2

    .line 11
    iget v0, p2, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->type:I

    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXType:I

    .line 12
    iget p2, p2, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->value:F

    iput p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXValue:F

    .line 13
    sget p2, Lcn/pedant/SweetAlert/R$styleable;->Rotate3dAnimation_customPivotY:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/pedant/SweetAlert/Rotate3dAnimation;->parseValue(Landroid/util/TypedValue;)Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;

    move-result-object p2

    .line 14
    iget v0, p2, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->type:I

    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYType:I

    .line 15
    iget p2, p2, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->value:F

    iput p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYValue:F

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-direct {p0}, Lcn/pedant/SweetAlert/Rotate3dAnimation;->initializePivotPoint()V

    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    iget v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXValue:F

    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotX:F

    :cond_0
    iget v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    iget v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYValue:F

    iput v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotY:F

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mFromDegrees:F

    iget v1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/graphics/Camera;->save()V

    iget p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mRollType:I

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2, v0}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2, v0}, Landroid/graphics/Camera;->rotateX(F)V

    :goto_0
    iget-object p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/graphics/Camera;->restore()V

    iget p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotX:F

    neg-float p2, p2

    iget v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotY:F

    neg-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget p2, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotX:F

    iget v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotY:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    iget v0, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXType:I

    iget v1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotX:F

    iget p1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYType:I

    iget p3, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotYValue:F

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/Rotate3dAnimation;->mPivotY:F

    return-void
.end method

.method public parseValue(Landroid/util/TypedValue;)Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;
    .locals 5

    new-instance v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;

    invoke-direct {v0}, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput v2, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->type:I

    iput v1, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->value:F

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    iget p1, p1, Landroid/util/TypedValue;->data:I

    and-int/lit8 v1, p1, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x2

    :cond_1
    iput v2, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->type:I

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p1

    iput p1, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->value:F

    return-object v0

    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iput v2, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->type:I

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->value:F

    return-object v0

    :cond_3
    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_4

    iput v2, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->type:I

    iget p1, p1, Landroid/util/TypedValue;->data:I

    int-to-float p1, p1

    iput p1, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->value:F

    return-object v0

    :cond_4
    :goto_0
    iput v2, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->type:I

    iput v1, v0, Lcn/pedant/SweetAlert/Rotate3dAnimation$Description;->value:F

    return-object v0
.end method
