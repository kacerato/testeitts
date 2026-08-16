.class public LG7/b;
.super LG7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LG7/b$b;
    }
.end annotation


# instance fields
.field public final a:LG7/b$b;

.field public b:I


# direct methods
.method public constructor <init>(LG7/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-direct {p0}, LG7/a;-><init>()V

    const/16 v0, 0x30

    iput v0, p0, LG7/b;->b:I

    iput-object p1, p0, LG7/b;->a:LG7/b$b;

    return-void
.end method

.method public static synthetic b(LG7/b;)LG7/b$b;
    .locals 0

    iget-object p0, p0, LG7/b;->a:LG7/b$b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutInflater",
            "context",
            "parent",
            "height"
        }
    .end annotation

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-direct {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, LG7/b;->b:I

    int-to-float v1, v1

    invoke-static {v1, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr p4, v3

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, LG7/b;->a:LG7/b$b;

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    invoke-interface {p1}, LG7/b$b;->getValue()F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, p1, p4}, LNc/b;->E(FFF)F

    move-result p1

    invoke-static {p3, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, v1, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->p(FF)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setValue(F)V

    const-string p1, "%.2f"

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setFormatStr(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusTopLeft(F)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusTopRight(F)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusBottomLeft(F)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusBottomRight(F)V

    new-instance p1, LG7/b$a;

    invoke-direct {p1, p0}, LG7/b$a;-><init>(LG7/b;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setOnValueChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;)V

    return-void
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widthDp"
        }
    .end annotation

    iput p1, p0, LG7/b;->b:I

    return-void
.end method
