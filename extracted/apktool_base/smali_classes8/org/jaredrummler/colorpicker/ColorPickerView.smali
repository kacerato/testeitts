.class public Lorg/jaredrummler/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaredrummler/colorpicker/ColorPickerView$b;,
        Lorg/jaredrummler/colorpicker/ColorPickerView$c;
    }
.end annotation


# static fields
.field public static final I:I = -0x919192

.field public static final J:I = -0x424243

.field public static final K:I = 0x10

.field public static final L:I = 0x10

.field public static final M:I = 0x6

.field public static final N:I = 0x5

.field public static final O:I = 0x4

.field public static final P:I = 0x2

.field public static final Q:I


# instance fields
.field public A:I

.field public B:Landroid/graphics/Rect;

.field public C:Landroid/graphics/Rect;

.field public D:Landroid/graphics/Rect;

.field public E:Landroid/graphics/Rect;

.field public F:Landroid/graphics/Point;

.field public G:Lcn/a;

.field public H:Lorg/jaredrummler/colorpicker/ColorPickerView$c;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Paint;

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/Shader;

.field public o:Landroid/graphics/Shader;

.field public p:Landroid/graphics/Shader;

.field public q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

.field public r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

.field public s:I

.field public t:F

.field public u:F

.field public v:F

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jaredrummler/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/jaredrummler/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xff

    .line 4
    iput p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->s:I

    const/high16 p3, 0x43b40000    # 360.0f

    .line 5
    iput p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    .line 7
    iput p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    const/4 p3, 0x0

    .line 8
    iput-boolean p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    const/4 p3, 0x0

    .line 9
    iput-object p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    const v0, -0x424243

    .line 10
    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->y:I

    const v0, -0x919192

    .line 11
    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->z:I

    .line 12
    iput-object p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->F:Landroid/graphics/Point;

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/jaredrummler/colorpicker/ColorPickerView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getPreferredHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v0, v1}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result v0

    iget-boolean v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->d:I

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->c:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v0, v1}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->d:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Point;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget v0, v0, Landroid/util/TypedValue;->data:I

    const v1, 0x1010038

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->z:I

    const/4 v1, 0x0

    const v2, -0x919192

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->z:I

    :cond_0
    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->y:I

    const v2, -0x424243

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->y:I

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-boolean v4, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    iget-object v5, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->G:Lcn/a;

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v5, v1}, Lcn/a;->draw(Landroid/graphics/Canvas;)V

    iget v5, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    iget v6, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    iget v7, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    const/4 v8, 0x3

    new-array v8, v8, [F

    aput v5, v8, v2

    const/4 v5, 0x1

    aput v6, v8, v5

    aput v7, v8, v3

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v14

    invoke-static {v2, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v15

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v10, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v11, v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v12, v6

    int-to-float v13, v5

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->p:Landroid/graphics/Shader;

    iget-object v5, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->j:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v7, v8}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->s:I

    invoke-virtual {v0, v2}, Lorg/jaredrummler/colorpicker/ColorPickerView;->a(I)Landroid/graphics/Point;

    move-result-object v2

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v6, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->g:I

    div-int/lit8 v7, v6, 0x2

    sub-int v7, v2, v7

    int-to-float v7, v7

    iput v7, v5, Landroid/graphics/RectF;->left:F

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    int-to-float v2, v2

    iput v2, v5, Landroid/graphics/RectF;->right:F

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v5, Landroid/graphics/RectF;->top:F

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v5, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->D:Landroid/graphics/Rect;

    iget-object v7, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    const/4 v8, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-gtz v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gtz v7, :cond_1

    return-void

    :cond_1
    new-instance v7, Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    invoke-direct {v7, v0, v8}, Lorg/jaredrummler/colorpicker/ColorPickerView$b;-><init>(Lorg/jaredrummler/colorpicker/ColorPickerView;Lorg/jaredrummler/colorpicker/ColorPickerView$a;)V

    iput-object v7, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    new-instance v9, Landroid/graphics/Canvas;

    iget-object v10, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v10, v10, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v9, v7, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    float-to-int v7, v7

    new-array v9, v7, [I

    const/high16 v10, 0x43b40000    # 360.0f

    move v11, v3

    move v12, v10

    :goto_0
    if-ge v11, v7, :cond_2

    const/4 v13, 0x3

    new-array v13, v13, [F

    aput v12, v13, v3

    aput v2, v13, v5

    aput v2, v13, v4

    invoke-static {v13}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v13

    aput v13, v9, v11

    int-to-float v13, v7

    div-float v13, v10, v13

    sub-float/2addr v12, v13

    add-int/2addr v11, v5

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_1
    if-ge v3, v7, :cond_3

    aget v10, v9, v3

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v13, v10, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->a:Landroid/graphics/Canvas;

    int-to-float v11, v3

    iget-object v10, v10, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/4 v14, 0x0

    move v15, v11

    move/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v18, v2

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v3, v5

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v2, v2, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v8, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    invoke-virtual {v0, v2}, Lorg/jaredrummler/colorpicker/ColorPickerView;->f(F)Landroid/graphics/Point;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget v7, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->f:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iput v5, v3, Landroid/graphics/RectF;->left:F

    iget v5, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    iput v5, v3, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v5, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->g:I

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v2, v6

    int-to-float v6, v6

    iput v6, v3, Landroid/graphics/RectF;->top:F

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lorg/jaredrummler/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->C:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->n:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    const/high16 v8, -0x1000000

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, -0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->n:Landroid/graphics/Shader;

    :cond_0
    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v4, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->c:F

    iget v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    invoke-direct {v1, p0, v3}, Lorg/jaredrummler/colorpicker/ColorPickerView$b;-><init>(Lorg/jaredrummler/colorpicker/ColorPickerView;Lorg/jaredrummler/colorpicker/ColorPickerView$a;)V

    iput-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    :cond_2
    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v1, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v4, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->a:Landroid/graphics/Canvas;

    if-nez v4, :cond_6

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v5, v5, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->a:Landroid/graphics/Canvas;

    :cond_6
    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    const/4 v1, 0x2

    aput v2, v4, v1

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    int-to-float v9, v4

    const/4 v10, -0x1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/ComposeShader;

    iget-object v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->n:Landroid/graphics/Shader;

    iget-object v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5, v6}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->h:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v4, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->a:Landroid/graphics/Canvas;

    iget-object v1, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v1, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->h:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    iput v4, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->c:F

    :cond_7
    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iget-object v1, v1, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    invoke-virtual {p0, v0, v1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->m(FF)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    iget-object v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    const v2, -0x222223

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->e:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final f(F)Landroid/graphics/Point;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hue"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->D:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    mul-float/2addr p1, v1

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v2, Landroid/graphics/Point;->y:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, v2, Landroid/graphics/Point;->x:I

    return-object v2
.end method

.method public final g(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lt3/b$s;->E8:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    const/4 v1, 0x3

    const v2, -0x424243

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->y:I

    const/4 v1, 0x2

    const v2, -0x919192

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->z:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p1, p2}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->A:I

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->h()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->z:I

    return v0
.end method

.method public getColor()I
    .locals 6

    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->s:I

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    iget v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    const/4 v1, 0x2

    aput v3, v4, v1

    invoke-static {v0, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 2

    invoke-super {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->A:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->A:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 2

    invoke-super {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->A:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getPaddingTop()I
    .locals 2

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->A:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->y:I

    return v0
.end method

.method public final h()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    iget v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->y:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v1, v3}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method public final i(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->F:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->D:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->k(F)F

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->C:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->l(FF)[F

    move-result-object p1

    aget v0, p1, v1

    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    aget p1, p1, v4

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->j(I)I

    move-result p1

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->s:I

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final j(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v2

    :goto_0
    mul-int/lit16 p1, p1, 0xff

    div-int/2addr p1, v1

    rsub-int p1, p1, 0xff

    return p1
.end method

.method public final k(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->D:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    int-to-float v0, v2

    sub-float/2addr p1, v0

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method public final l(FF)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->C:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    cmpg-float v4, p1, v4

    const/4 v5, 0x0

    if-gez v4, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    int-to-float v3, v3

    sub-float/2addr p1, v3

    :goto_0
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    int-to-float v0, v3

    sub-float v5, p2, v0

    :goto_1
    const/high16 p2, 0x3f800000    # 1.0f

    div-float v0, p2, v1

    mul-float/2addr v0, p1

    div-float p1, p2, v2

    mul-float/2addr p1, v5

    sub-float/2addr p2, p1

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    aput p2, p1, v0

    return-object p1
.end method

.method public final m(FF)Landroid/graphics/Point;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sat",
            "val"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->C:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    mul-float/2addr p1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v3, Landroid/graphics/Point;->x:I

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v1

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v3, Landroid/graphics/Point;->y:I

    return-object v3
.end method

.method public n(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "callback"
        }
    .end annotation

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    const/4 v3, 0x3

    new-array v4, v3, [F

    invoke-static {v1, p1, v2, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->s:I

    const/4 p1, 0x0

    aget v1, v4, p1

    iput v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    const/4 v2, 0x1

    aget v5, v4, v2

    iput v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    const/4 v6, 0x2

    aget v4, v4, v6

    iput v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->H:Lorg/jaredrummler/colorpicker/ColorPickerView$c;

    if-eqz p2, :cond_0

    new-array v3, v3, [F

    aput v1, v3, p1

    aput v5, v3, v2

    aput v4, v3, v6

    invoke-static {v0, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-interface {p2, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView$c;->a(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final o()V
    .locals 5

    iget-boolean v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->c:I

    sub-int v3, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    new-instance v0, Lcn/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcn/c;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1}, Lcn/a;-><init>(I)V

    iput-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->G:Lcn/a;

    iget-object v1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->E:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->e(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->c(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_7

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->d:I

    add-int v1, p2, v0

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->b:I

    add-int/2addr v1, v2

    sub-int v3, p1, v0

    sub-int/2addr v3, v2

    iget-boolean v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->c:I

    add-int v4, v0, v2

    sub-int/2addr v1, v4

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-gt v1, p1, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-gt v3, p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    if-eqz v4, :cond_6

    :cond_5
    move p1, v1

    goto :goto_4

    :cond_6
    if-nez v4, :cond_c

    if-eqz v0, :cond_c

    :goto_2
    move p2, v3

    goto :goto_4

    :cond_7
    :goto_3
    if-ne v0, v2, :cond_a

    if-eq v1, v2, :cond_a

    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->d:I

    sub-int v1, p1, v0

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->b:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->c:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_8
    if-le v1, p2, :cond_9

    goto :goto_4

    :cond_9
    move p2, v1

    goto :goto_4

    :cond_a
    if-ne v1, v2, :cond_c

    if-eq v0, v2, :cond_c

    iget v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->d:I

    add-int v1, p2, v0

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->b:I

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-eqz v2, :cond_b

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->c:I

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    :cond_b
    if-le v1, p1, :cond_5

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->s:I

    const-string v0, "hue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    const-string v0, "sat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    const-string v0, "val"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    const-string v0, "show_alpha"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    const-string v0, "alpha_text"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "alpha"

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hue"

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "sat"

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "val"

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "show_alpha"

    iget-boolean v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "alpha_text"

    iget-object v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->n:Landroid/graphics/Shader;

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->p:Landroid/graphics/Shader;

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->q()V

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->p()V

    invoke-virtual {p0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->o()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->i(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->F:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->i(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->F:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->i(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_4

    iget-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->H:Lorg/jaredrummler/colorpicker/ColorPickerView$c;

    if-eqz p1, :cond_3

    iget v3, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->s:I

    iget v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->t:F

    iget v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->u:F

    iget v6, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->v:F

    const/4 v7, 0x3

    new-array v7, v7, [F

    aput v4, v7, v0

    aput v5, v7, v2

    aput v6, v7, v1

    invoke-static {v3, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/jaredrummler/colorpicker/ColorPickerView$c;->a(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->b:I

    sub-int v2, v1, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->d:I

    iget v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->c:I

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sub-int/2addr v0, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->D:Landroid/graphics/Rect;

    return-void
.end method

.method public final q()V
    .locals 6

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->B:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->d:I

    sub-int/2addr v0, v4

    iget v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->b:I

    sub-int/2addr v0, v5

    iget-boolean v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->c:I

    add-int/2addr v5, v4

    sub-int/2addr v3, v5

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->C:Landroid/graphics/Rect;

    return-void
.end method

.method public setAlphaSliderText(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->w:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->n:Landroid/graphics/Shader;

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->p:Landroid/graphics/Shader;

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->r:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->q:Lorg/jaredrummler/colorpicker/ColorPickerView$b;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->z:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jaredrummler/colorpicker/ColorPickerView;->n(IZ)V

    return-void
.end method

.method public setOnColorChangedListener(Lorg/jaredrummler/colorpicker/ColorPickerView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->H:Lorg/jaredrummler/colorpicker/ColorPickerView$c;

    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->y:I

    iget-object v0, p0, Lorg/jaredrummler/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
