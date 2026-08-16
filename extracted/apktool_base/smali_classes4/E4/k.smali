.class public LE4/k;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final c0:Ljava/lang/String; = "ClassesPanel"


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Y:Landroidx/recyclerview/widget/RecyclerView;

.field public Z:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "Le8/c;",
            "LE4/g;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Ljava/lang/String;

.field public b0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    const-string v0, "Classes in Category"

    const-string v1, "ClassesPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LE4/k;->b0:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(LK8/a;)V

    .line 2
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LE4/k;->b0:Ljava/util/List;

    return-void
.end method

.method public static synthetic p1(Le8/c;Le8/c;)I
    .locals 0

    invoke-static {p0, p1}, LE4/k;->s1(Le8/c;Le8/c;)I

    move-result p0

    return p0
.end method

.method public static synthetic q1(LE4/k;LE4/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LE4/k;->v1(LE4/g;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r1(LE4/k;Le8/c;)V
    .locals 0

    invoke-direct {p0, p1}, LE4/k;->u1(Le8/c;)V

    return-void
.end method

.method public static synthetic s1(Le8/c;Le8/c;)I
    .locals 0

    invoke-virtual {p0}, Le8/c;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Le8/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private u1(Le8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "officialClass"
        }
    .end annotation

    invoke-static {p1}, LE4/a;->a(Le8/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method private v1(LE4/g;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "category"
        }
    .end annotation

    invoke-static {p2}, LF4/a;->b(Ljava/lang/String;)C

    move-result p2

    iget-object v0, p1, LE4/g;->e:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LF4/a;->c(C)I

    move-result p2

    invoke-static {p2}, LF4/a;->a(I)I

    move-result v0

    iget-object v1, p1, LE4/g;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, LE4/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, LE4/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object p1, p1, LE4/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, LE4/g;->f:Landroid/widget/LinearLayout;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public static w1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    new-instance v0, LE4/k;

    invoke-direct {v0}, LE4/k;-><init>()V

    iput-object p0, v0, LE4/k;->a0:Ljava/lang/String;

    const/16 p0, 0x15e

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    const/16 v1, 0x190

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    invoke-static {v0, p0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object p0, v0, LE4/k;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LE4/k$a;

    invoke-direct {v1, p0}, LE4/k$a;-><init>(LE4/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LE4/k$b;

    invoke-direct {v2, p0}, LE4/k$b;-><init>(LE4/k;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, LE4/k;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const v2, 0x7f0901c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, LE4/k;->a0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LE4/k;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, LE4/k;->t1()V

    return-object v0
.end method

.method public final t1()V
    .locals 9

    iget-object v0, p0, LE4/k;->b0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LE4/k;->a0:Ljava/lang/String;

    const-string v1, "Uncategorized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v1, LJAVARuntime/ClassCategory;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-static {v0}, Ld8/j;->j0(I)Le8/c;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, LJAVARuntime/ClassCategory;

    if-eqz v4, :cond_2

    invoke-interface {v4}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v4}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v4, p0, LE4/k;->b0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {}, Ld8/j;->k0()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-static {v0}, Ld8/j;->j0(I)Le8/c;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, LJAVARuntime/ClassCategory;

    if-eqz v4, :cond_6

    invoke-interface {v4}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_5
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    iget-object v8, p0, LE4/k;->a0:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v4, p0, LE4/k;->b0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, LE4/k;->b0:Ljava/util/List;

    new-instance v1, LE4/j;

    invoke-direct {v1}, LE4/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance v0, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LE4/k$c;

    invoke-direct {v2, p0}, LE4/k$c;-><init>(LE4/k;)V

    invoke-direct {v0, v1, v2}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v0, p0, LE4/k;->Z:Le7/a;

    iget-object v1, p0, LE4/k;->b0:Ljava/util/List;

    invoke-virtual {v0, v1}, Le7/a;->t(Ljava/util/List;)V

    iget-object v0, p0, LE4/k;->Y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, LE4/k;->Z:Le7/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
