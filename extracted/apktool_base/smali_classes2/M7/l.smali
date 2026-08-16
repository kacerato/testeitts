.class public LM7/l;
.super LM7/g;
.source "SourceFile"


# instance fields
.field public i:Ljava/lang/String;

.field public j:Landroid/widget/TextView;

.field public k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    invoke-direct {p0}, LM7/g;-><init>()V

    iput-object p1, p0, LM7/l;->i:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/l;->k:I

    return-void
.end method

.method public static synthetic q(LM7/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LM7/l;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic r(LM7/l;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LM7/l;->j:Landroid/widget/TextView;

    return-object p0
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

    const p2, 0x7f0c009c

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f090503

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LM7/l;->j:Landroid/widget/TextView;

    iget-object p3, p0, LM7/l;->i:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget p3, p0, LM7/l;->k:I

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, LM7/g;->m(Landroid/view/View;)V

    return-void
.end method

.method public s()I
    .locals 1

    iget v0, p0, LM7/l;->k:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LM7/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method public u(I)LM7/l;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, LM7/l;->k:I

    return-object p0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v0, LM7/l$a;

    invoke-direct {v0, p0, p1}, LM7/l$a;-><init>(LM7/l;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
