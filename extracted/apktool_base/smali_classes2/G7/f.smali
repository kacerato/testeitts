.class public LG7/f;
.super LG7/a;
.source "SourceFile"


# instance fields
.field public a:LG7/g;


# direct methods
.method public constructor <init>(LG7/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toggleListener"
        }
    .end annotation

    invoke-direct {p0}, LG7/a;-><init>()V

    iput-object p1, p0, LG7/f;->a:LG7/g;

    return-void
.end method

.method public static synthetic b(LG7/f;)LG7/g;
    .locals 0

    iget-object p0, p0, LG7/f;->a:LG7/g;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .locals 1
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

    const p2, 0x7f0c00a6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iput p4, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p4, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const p3, 0x7f090552

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    iget-object p4, p0, LG7/f;->a:LG7/g;

    invoke-interface {p4}, LG7/g;->isChecked()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setChecked(Z)V

    new-instance p4, LG7/f$a;

    invoke-direct {p4, p0}, LG7/f$a;-><init>(LG7/f;)V

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
