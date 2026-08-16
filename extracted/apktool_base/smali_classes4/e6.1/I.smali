.class public Le6/I;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6/I$c;,
        Le6/I$d;
    }
.end annotation


# instance fields
.field public final X:Le6/X;

.field public final Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le6/I$c;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public a0:Landroid/widget/EditText;

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "Le6/I$c;",
            "Le6/I$d;",
            ">;"
        }
    .end annotation
.end field

.field public d0:Landroid/widget/TextView;

.field public e0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;


# direct methods
.method public constructor <init>(Le6/X;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphView"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Search"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Le6/I;->Y:Ljava/util/List;

    iput-object p1, p0, Le6/I;->X:Le6/X;

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static A1(Le6/X;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphView"
        }
    .end annotation

    new-instance v0, Le6/I;

    invoke-direct {v0, p0}, Le6/I;-><init>(Le6/X;)V

    const/16 p0, 0x208

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    const/16 v1, 0x17c

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    invoke-static {v0, p0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-direct {v0, p0}, Le6/I;->z1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O1(Z)V

    return-object p0
.end method

.method public static synthetic p1(Le6/I;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Le6/I;->v1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Le6/I;->u1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r1(Le6/I;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Le6/I;->y1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic s1(Le6/I;)Le6/X;
    .locals 0

    iget-object p0, p0, Le6/I;->X:Le6/X;

    return-object p0
.end method

.method private static synthetic u1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic v1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method private z1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanelArea"
        }
    .end annotation

    iput-object p1, p0, Le6/I;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le6/I;->e0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0153

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v1, Le6/G;

    invoke-direct {v1}, Le6/G;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f09043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Le6/I;->a0:Landroid/widget/EditText;

    const v1, 0x7f0903f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Le6/I;->b0:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Le6/I;->d0:Landroid/widget/TextView;

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090320

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    iput-object v2, p0, Le6/I;->e0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    iget-object v3, p0, Le6/I;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)V

    :cond_1
    if-eqz v1, :cond_2

    new-instance v2, Le6/H;

    invoke-direct {v2, p0}, Le6/H;-><init>(Le6/I;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Le6/I;->a0:Landroid/widget/EditText;

    const-string v2, ""

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Le6/I;->a0:Landroid/widget/EditText;

    new-instance v3, Le6/I$a;

    invoke-direct {v3, p0}, Le6/I$a;-><init>(Le6/I;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Le6/I;->a0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    iget-object v1, p0, Le6/I;->b0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Le6/I;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Le6/I;->t1()Le7/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    invoke-virtual {p0}, Le6/I;->x1()V

    iget-object v1, p0, Le6/I;->a0:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Le6/I;->a0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {p0, v2}, Le6/I;->y1(Ljava/lang/String;)V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, Le6/I;

    iget-object v1, p0, Le6/I;->X:Le6/X;

    invoke-direct {v0, v1}, Le6/I;-><init>(Le6/X;)V

    return-object v0
.end method

.method public final t1()Le7/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le7/a<",
            "Le6/I$c;",
            "Le6/I$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le6/I;->c0:Le7/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Le6/I$b;

    invoke-direct {v2, p0}, Le6/I$b;-><init>(Le6/I;)V

    invoke-direct {v0, v1, v2}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v0, p0, Le6/I;->c0:Le7/a;

    return-object v0
.end method

.method public final w1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final x1()V
    .locals 12

    iget-object v0, p0, Le6/I;->Y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Le6/I;->X:Le6/X;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lga/q;->a()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-static {}, Lga/o;->b()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-static {v2}, Lga/o;->e(I)Lga/p;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lga/p;->g()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v8}, Lga/p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Lga/p;->a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v3

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz v3, :cond_3

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_2
    move-object v5, v3

    iget-object v3, p0, Le6/I;->Y:Ljava/util/List;

    new-instance v11, Le6/I$c;

    invoke-interface {v8}, Lga/p;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Le6/I;->w1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8}, Lga/p;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Le6/I$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/p;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Le6/I$a;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-static {}, Lma/b;->c()Ljava/util/List;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/b$c;

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    iget-object v3, p0, Le6/I;->Y:Ljava/util/List;

    new-instance v11, Le6/I$c;

    iget-object v5, v2, Lma/b$c;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Actions/Component/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lma/b$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lma/b$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Le6/I;->w1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lma/b$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lma/b$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lma/b$c;->f:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lma/b$c;->a()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Le6/I$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/p;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Le6/I$a;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public final y1(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    iget-object v0, p0, Le6/I;->b0:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Le6/I;->Y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Le6/I;->Y:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le6/I$c;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Le6/I$c;->b(Le6/I$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/16 v2, 0x8

    if-eqz p1, :cond_9

    iget-object p1, p0, Le6/I;->d0:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Le6/I;->d0:Landroid/widget/TextView;

    iget-object v0, p0, Le6/I;->X:Le6/X;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "No nodes found."

    goto :goto_4

    :cond_7
    :goto_3
    const-string v0, "No graph loaded."

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {p0}, Le6/I;->t1()Le7/a;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p1, v0}, Le7/a;->t(Ljava/util/List;)V

    iget-object p1, p0, Le6/I;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_9
    iget-object p1, p0, Le6/I;->d0:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object p1, p0, Le6/I;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Le6/I;->t1()Le7/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Le7/a;->t(Ljava/util/List;)V

    return-void
.end method
