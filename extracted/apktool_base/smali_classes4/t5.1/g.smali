.class public Lt5/g;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final Y:Ljava/lang/String; = "CurveEditor"

.field public static Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static a0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static c0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static d0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# instance fields
.field public X:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const-string v1, "#10b178"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt5/g;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt5/g;->a0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, Lt5/g;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, Lt5/g;->c0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, Lt5/g;->d0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, "Curve Editor"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    const-string v1, "Curve Editor"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    .line 5
    iput-object p1, p0, Lt5/g;->X:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void
.end method

.method public static synthetic p1(Lt5/g;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 0

    iget-object p0, p0, Lt5/g;->X:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LJ9/d;

    iget-object v2, p0, Lt5/g;->X:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const v3, 0x7f090186

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-direct {v1, v2, v3}, LJ9/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;)V

    const v2, 0x7f09019b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lt5/g$a;

    invoke-direct {v3, p0, v1}, Lt5/g$a;-><init>(Lt5/g;LJ9/d;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090196

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    new-instance v4, LJ9/e;

    invoke-direct {v4, v3, v2}, LJ9/e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;)V

    invoke-virtual {p0, v2, v3, v1}, Lt5/g;->q1(Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;LJ9/d;)V

    const v2, 0x7f090197

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    const/high16 v6, 0x3e800000    # 0.25f

    const v7, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    invoke-virtual {v3, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    new-instance v4, LJ9/e;

    invoke-direct {v4, v3, v2}, LJ9/e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;)V

    invoke-virtual {p0, v2, v3, v1}, Lt5/g;->q1(Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;LJ9/d;)V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, Lt5/g;

    iget-object v1, p0, Lt5/g;->X:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-direct {v0, v1}, Lt5/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V

    return-object v0
.end method

.method public final q1(Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;LJ9/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curveView",
            "curve",
            "display"
        }
    .end annotation

    new-instance v0, Lt5/g$b;

    invoke-direct {v0, p0, p2, p3, p1}, Lt5/g$b;-><init>(Lt5/g;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;LJ9/d;Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setListener(LK9/d;)V

    return-void
.end method
