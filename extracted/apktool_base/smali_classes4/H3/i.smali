.class public LH3/i;
.super Le7/b;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewBinding"
        }
    .end annotation

    invoke-direct {p0, p1}, Le7/b;-><init>(Landroid/view/View;)V

    const v0, 0x7f090269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LH3/i;->b:Landroid/widget/ImageView;

    const v0, 0x7f0900dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LH3/i;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    return-void
.end method
