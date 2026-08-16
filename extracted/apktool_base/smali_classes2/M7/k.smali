.class public LM7/k;
.super LM7/g;
.source "SourceFile"


# instance fields
.field public i:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "space"
        }
    .end annotation

    invoke-direct {p0}, LM7/g;-><init>()V

    iput p1, p0, LM7/k;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "context",
            "layoutInflater"
        }
    .end annotation

    const p2, 0x7f0c0094

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p3, p0, LM7/k;->i:I

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, LM7/g;->m(Landroid/view/View;)V

    return-void
.end method
