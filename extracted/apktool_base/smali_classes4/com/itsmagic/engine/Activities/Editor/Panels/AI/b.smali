.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/b;
.super Le7/b;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/Button;


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

    const v0, 0x7f09053c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/b;->b:Landroid/widget/TextView;

    const v0, 0x7f09027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/b;->c:Landroid/widget/ImageView;

    const v0, 0x7f0901c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/b;->d:Landroid/view/View;

    const v0, 0x7f090169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/b;->e:Landroid/widget/Button;

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
