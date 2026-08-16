.class public Lc6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final X:Ljava/lang/String; = "WarningContentPackagePanel"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    return-void
.end method

.method public static p1()V
    .locals 6

    new-instance v0, Lc6/a;

    invoke-direct {v0}, Lc6/a;-><init>()V

    const/16 v1, 0x1f4

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v2

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v4, v5, v4

    div-float v3, v1, v3

    sub-float/2addr v5, v3

    invoke-static {v0, v4, v5, v2, v1}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
