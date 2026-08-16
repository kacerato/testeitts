.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->e(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final c:I = 0x1a


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;IILcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "layoutInflater",
            "layout",
            "i",
            "fillSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-interface {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$e;->a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    const/4 p3, 0x0

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090503

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->k()LAc/b;

    move-result-object p2

    invoke-virtual {p2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(IILandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "parent"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final e(Landroid/widget/TableLayout;Landroid/view/LayoutInflater;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "table",
            "layoutInflater",
            "heightPixels"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    new-instance v2, Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-lt v3, v0, :cond_0

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    const v5, 0x7f0c0166

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput p3, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f090552

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->p(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setChecked(Z)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;

    invoke-direct {v6, p0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;IZLcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$e;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "layoutInflater",
            "layout",
            "invertOrder",
            "fillSize"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->c(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;IILcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$e;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object p4, p4, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_1
    if-ltz p4, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->c(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;IILcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$e;)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final g(Landroid/view/LayoutInflater;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutInflater"
        }
    .end annotation

    const v0, 0x7f0c0168

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090503

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->k()LAc/b;

    move-result-object v3

    invoke-virtual {v3}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v3, v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v2, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "entry"
        }
    .end annotation

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f090562

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090564

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    const v1, 0x7f0902c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0904e0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1a

    int-to-float v2, v2

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->g(Landroid/view/LayoutInflater;)I

    move-result v3

    invoke-virtual {p0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->d(IILandroid/view/View;)V

    invoke-virtual {p0, v2, v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->d(IILandroid/view/View;)V

    invoke-virtual {p0, v3, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->d(IILandroid/view/View;)V

    invoke-virtual {p0, v2, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->d(IILandroid/view/View;)V

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p2

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$a;

    invoke-direct {v5, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;I)V

    const v3, 0x7f0c0168

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->f(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;IZLcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$e;)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$b;

    invoke-direct {v5, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;I)V

    const v3, 0x7f0c0169

    const/4 v4, 0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->f(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;IZLcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$e;)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;->e(Landroid/widget/TableLayout;Landroid/view/LayoutInflater;I)V

    return-void
.end method
