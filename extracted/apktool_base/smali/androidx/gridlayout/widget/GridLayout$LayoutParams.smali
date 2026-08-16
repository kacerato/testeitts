.class public Landroidx/gridlayout/widget/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/gridlayout/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final BOTTOM_MARGIN:I

.field private static final COLUMN:I

.field private static final COLUMN_SPAN:I

.field private static final COLUMN_WEIGHT:I

.field private static final DEFAULT_COLUMN:I = -0x80000000

.field private static final DEFAULT_HEIGHT:I = -0x2

.field private static final DEFAULT_MARGIN:I = -0x80000000

.field private static final DEFAULT_ROW:I = -0x80000000

.field private static final DEFAULT_SPAN:Landroidx/gridlayout/widget/GridLayout$Interval;

.field private static final DEFAULT_SPAN_SIZE:I

.field private static final DEFAULT_WIDTH:I = -0x2

.field private static final GRAVITY:I

.field private static final LEFT_MARGIN:I

.field private static final MARGIN:I

.field private static final RIGHT_MARGIN:I

.field private static final ROW:I

.field private static final ROW_SPAN:I

.field private static final ROW_WEIGHT:I

.field private static final TOP_MARGIN:I


# instance fields
.field public columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

.field public rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Interval;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Interval;->size()I

    move-result v0

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_margin:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->MARGIN:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginLeft:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->LEFT_MARGIN:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginTop:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->TOP_MARGIN:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginRight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->RIGHT_MARGIN:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginBottom:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->BOTTOM_MARGIN:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_column:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->COLUMN:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_columnSpan:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->COLUMN_SPAN:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_columnWeight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->COLUMN_WEIGHT:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_row:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->ROW:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_rowSpan:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->ROW_SPAN:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_rowWeight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->ROW_WEIGHT:I

    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_gravity:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->GRAVITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    sget-object v0, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-direct {p0, v0, v0}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(Landroidx/gridlayout/widget/GridLayout$Spec;Landroidx/gridlayout/widget/GridLayout$Spec;)V

    return-void
.end method

.method private constructor <init>(IIIIIILandroidx/gridlayout/widget/GridLayout$Spec;Landroidx/gridlayout/widget/GridLayout$Spec;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2
    sget-object p1, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 3
    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 4
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 5
    iput-object p7, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 6
    iput-object p8, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v0, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 22
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    sget-object p1, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 11
    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 13
    sget-object p1, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 14
    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout$LayoutParams;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 16
    sget-object v0, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 17
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 18
    iget-object v0, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 19
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout$Spec;Landroidx/gridlayout/widget/GridLayout$Spec;)V
    .locals 9

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/high16 v3, -0x80000000

    const/high16 v4, -0x80000000

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    .line 7
    invoke-direct/range {v0 .. v8}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(IIIIIILandroidx/gridlayout/widget/GridLayout$Spec;Landroidx/gridlayout/widget/GridLayout$Spec;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    sget-object v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->GRAVITY:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->COLUMN:I

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->COLUMN_SPAN:I

    sget v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v5, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->COLUMN_WEIGHT:I

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/4 v7, 0x1

    invoke-static {p2, v7}, Landroidx/gridlayout/widget/GridLayout;->getAlignment(IZ)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v7

    invoke-static {v1, v3, v7, v5}, Landroidx/gridlayout/widget/GridLayout;->spec(IILandroidx/gridlayout/widget/GridLayout$Alignment;F)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    sget v1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->ROW:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->ROW_SPAN:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->ROW_WEIGHT:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p2, v0}, Landroidx/gridlayout/widget/GridLayout;->getAlignment(IZ)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object p2

    invoke-static {v1, v2, p2, v3}, Landroidx/gridlayout/widget/GridLayout;->spec(IILandroidx/gridlayout/widget/GridLayout$Alignment;F)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object p2

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->MARGIN:I

    const/high16 v0, -0x80000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sget v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->LEFT_MARGIN:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->TOP_MARGIN:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->RIGHT_MARGIN:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->BOTTOM_MARGIN:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-object v3, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-virtual {v2, v3}, Landroidx/gridlayout/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-virtual {v2, p1}, Landroidx/gridlayout/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Spec;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Spec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-void
.end method

.method public final setColumnSpecSpan(Landroidx/gridlayout/widget/GridLayout$Interval;)V
    .locals 1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$Spec;->copyWriteSpan(Landroidx/gridlayout/widget/GridLayout$Interval;)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object p1

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/gridlayout/widget/GridLayout;->getAlignment(IZ)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/gridlayout/widget/GridLayout$Spec;->copyWriteAlignment(Landroidx/gridlayout/widget/GridLayout$Alignment;)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroidx/gridlayout/widget/GridLayout;->getAlignment(IZ)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$Spec;->copyWriteAlignment(Landroidx/gridlayout/widget/GridLayout$Alignment;)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object p1

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method public final setRowSpecSpan(Landroidx/gridlayout/widget/GridLayout$Interval;)V
    .locals 1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$Spec;->copyWriteSpan(Landroidx/gridlayout/widget/GridLayout$Interval;)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object p1

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method
