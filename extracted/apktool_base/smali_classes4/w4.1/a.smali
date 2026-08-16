.class public Lw4/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final Y:I = 0x7f050188

.field public static final Z:I = 0x7f05008f

.field public static final a0:I = 0x2


# instance fields
.field public X:Lx7/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Animation Graph editor"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p1(Lw4/a;)Lx7/f;
    .locals 0

    iget-object p0, p0, Lw4/a;->X:Lx7/f;

    return-object p0
.end method

.method public static r1(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const-string v0, ".angr"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Lx7/f;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lx7/f;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lw4/a;->X:Lx7/f;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lx7/c;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v4, 0x43480000    # 200.0f

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    const-string v3, "Entry"

    invoke-direct {v1, v3, v2}, Lx7/c;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    new-instance v2, Lx7/c;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, 0x43200000    # 160.0f

    invoke-direct {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    const-string v4, "New State"

    invoke-direct {v2, v4, v3}, Lx7/c;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v3, p0, Lw4/a;->X:Lx7/f;

    invoke-virtual {v3, v1}, Lx7/f;->k(Lx7/c;)V

    iget-object v1, p0, Lw4/a;->X:Lx7/f;

    invoke-virtual {v1, v2}, Lx7/f;->k(Lx7/c;)V

    const v1, 0x7f090557

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, LM7/h;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, LM7/c;

    new-instance v5, Lw4/a$a;

    invoke-direct {v5, p0}, Lw4/a$a;-><init>(Lw4/a;)V

    sget-object v6, LM7/c$b;->Disconnected:LM7/c$b;

    const v7, 0x7f0701b5

    invoke-direct {v4, v7, v5, v6, v3}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    const v5, 0x7f050188

    invoke-virtual {v4, v5}, LM7/c;->T(I)LM7/c;

    move-result-object v4

    const v5, 0x7f05008f

    invoke-virtual {v4, v5}, LM7/c;->L(I)LM7/c;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, LM7/c;->c0(IZ)LM7/c;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060232

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, LM7/c;->m0(I)LM7/c;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, LM7/h;->g(Ljava/util/List;)V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lw4/a;

    invoke-direct {v0}, Lw4/a;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Lw4/a;->X:Lx7/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lx7/f;->z(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    return-void
.end method

.method public q1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
