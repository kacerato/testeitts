.class public LE4/d;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final c0:Ljava/lang/String; = "CategoryPanel"

.field public static final d0:Ljava/lang/String; = "Uncategorized"


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Z:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "Ljava/lang/String;",
            "LE4/g;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b0:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "Le8/c;",
            "LE4/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    const-string v0, "Class Categories"

    const-string v1, "CategoryPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LE4/d;->a0:Ljava/util/Map;

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
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LE4/d;->a0:Ljava/util/Map;

    return-void
.end method

.method public static F1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3

    new-instance v0, LE4/d;

    invoke-direct {v0}, LE4/d;-><init>()V

    const/16 v1, 0x12c

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v1

    const/16 v2, 0x190

    invoke-static {v2}, LN7/c;->f(I)F

    move-result v2

    invoke-static {v0, v1, v2}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object v1, v0, LE4/d;->Y:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v1
.end method

.method public static synthetic p1(LE4/d;Ljava/lang/String;Le8/c;Le8/c;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LE4/d;->y1(Ljava/lang/String;Le8/c;Le8/c;)I

    move-result p0

    return p0
.end method

.method public static synthetic q1(LE4/d;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, LE4/d;->x1(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic r1(LE4/d;)V
    .locals 0

    invoke-virtual {p0}, LE4/d;->z1()V

    return-void
.end method

.method public static synthetic s1(LE4/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, LE4/d;->D1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t1(LE4/d;LE4/g;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE4/d;->E1(LE4/g;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u1(LE4/d;Le8/c;)V
    .locals 0

    invoke-virtual {p0, p1}, LE4/d;->B1(Le8/c;)V

    return-void
.end method

.method public static synthetic v1(LE4/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LE4/d;->a0:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic w1(LE4/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, LE4/d;->A1(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    invoke-static {p1}, LE4/k;->w1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public final B1(Le8/c;)V
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

.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LE4/d$a;

    invoke-direct {v1, p0}, LE4/d$a;-><init>(LE4/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LE4/d$b;

    invoke-direct {v2, p0}, LE4/d$b;-><init>(LE4/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LE4/d;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, LE4/d;->Y:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const v2, 0x7f0901c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)V

    invoke-virtual {p0}, LE4/d;->z1()V

    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, LE4/d$c;

    invoke-direct {v2, p0}, LE4/d$c;-><init>(LE4/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0
.end method

.method public final C1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "query"
        }
    .end annotation

    const v0, 0x7fffffff

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_3

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_3
    return v0
.end method

.method public final D1(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, LE4/c;

    invoke-direct {v1, p0, p1}, LE4/c;-><init>(LE4/d;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LE4/d$d;

    invoke-direct {v2, p0}, LE4/d$d;-><init>(LE4/d;)V

    invoke-direct {p1, v1, v2}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object p1, p0, LE4/d;->b0:Le7/a;

    invoke-virtual {p1, v0}, Le7/a;->t(Ljava/util/List;)V

    iget-object p1, p0, LE4/d;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, LE4/d;->b0:Le7/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final E1(LE4/g;Ljava/lang/String;)V
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

.method public final synthetic x1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, LE4/d;->a0:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, LE4/d;->a0:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final synthetic y1(Ljava/lang/String;Le8/c;Le8/c;)I
    .locals 1

    invoke-virtual {p2}, Le8/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Le8/c;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, LE4/d;->C1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p3, p1}, LE4/d;->C1(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eq v0, p1, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final z1()V
    .locals 12

    iget-object v0, p0, LE4/d;->a0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v3

    const-string v4, "Uncategorized"

    if-ge v2, v3, :cond_9

    invoke-static {v2}, Ld8/j;->j0(I)Le8/c;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v3}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v3

    const-class v5, LJAVARuntime/ClassCategory;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, LJAVARuntime/ClassCategory;

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v3}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_5

    :cond_1
    invoke-interface {v3}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    move v6, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_2
    if-nez v6, :cond_7

    invoke-interface {v3}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_7

    aget-object v9, v3, v8

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    iget-object v10, p0, LE4/d;->a0:Ljava/util/Map;

    invoke-interface {v10, v9, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    move v6, v5

    :cond_7
    if-eqz v6, :cond_8

    iget-object v3, p0, LE4/d;->a0:Ljava/util/Map;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, LE4/d;->a0:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, LE4/b;

    invoke-direct {v1, p0}, LE4/b;-><init>(LE4/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v1, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LE4/d$e;

    invoke-direct {v3, p0}, LE4/d$e;-><init>(LE4/d;)V

    invoke-direct {v1, v2, v3}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v1, p0, LE4/d;->Z:Le7/a;

    invoke-virtual {v1, v0}, Le7/a;->t(Ljava/util/List;)V

    iget-object v0, p0, LE4/d;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, LE4/d;->Z:Le7/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
