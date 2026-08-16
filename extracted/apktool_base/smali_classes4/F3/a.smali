.class public LF3/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final Z:Ljava/lang/String; = "CompilingPanel"


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "LF3/b;",
            "LF3/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Coding"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method private p1()V
    .locals 7

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LF3/a;->Y:Le7/a;

    invoke-virtual {v3}, Le7/a;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, LF3/a;->Y:Le7/a;

    invoke-virtual {v3, v2}, Le7/a;->m(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LF3/b;

    sget-object v4, Ld8/j;->r:Ljava/util/List;

    iget-object v5, v3, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, LF3/a;->Y:Le7/a;

    invoke-virtual {v2, v0}, Le7/a;->s(Ljava/util/List;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v2, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move v4, v1

    move v5, v4

    :goto_2
    iget-object v6, p0, LF3/a;->Y:Le7/a;

    invoke-virtual {v6}, Le7/a;->getItemCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    iget-object v6, p0, LF3/a;->Y:Le7/a;

    invoke-virtual {v6, v4}, Le7/a;->m(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LF3/b;

    iget-object v6, v6, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-ne v6, v3, :cond_3

    const/4 v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-nez v5, :cond_2

    iget-object v4, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    const-string v5, "_I"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    const-string v5, "_JContainer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    sget-boolean v4, Ld8/j;->d:Z

    if-eqz v4, :cond_2

    :cond_6
    iget-object v4, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v5, ".lua"

    invoke-static {v4, v5}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance v4, LF3/b;

    invoke-direct {v4, v3}, LF3/b;-><init>(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, LF3/a;->Y:Le7/a;

    invoke-virtual {v1, v0}, Le7/a;->i(Ljava/util/List;)V

    iget-object v0, p0, LF3/a;->Y:Le7/a;

    new-instance v1, LF3/a$e;

    invoke-direct {v1, p0}, LF3/a$e;-><init>(LF3/a;)V

    invoke-virtual {v0, v1}, Le7/a;->o(Ljava/util/Comparator;)V

    return-void
.end method

.method public static q1(Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "side"
        }
    .end annotation

    new-instance v0, LF3/a;

    invoke-direct {v0}, LF3/a;-><init>()V

    const/16 v1, 0xf0

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v1

    const/16 v2, 0x12c

    invoke-static {v2}, LN7/c;->f(I)F

    move-result v2

    invoke-static {p0, v0, p1, v1, v2}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LF3/a$a;

    invoke-direct {v1, p0}, LF3/a$a;-><init>(LF3/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LF3/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, LF3/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LF3/a$b;

    invoke-direct {v3, p0}, LF3/a$b;-><init>(LF3/a;)V

    invoke-direct {v1, v2, v3}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v1, p0, LF3/a;->Y:Le7/a;

    iget-object v2, p0, LF3/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LF3/a$c;

    invoke-direct {v2, p0}, LF3/a$c;-><init>(LF3/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LF3/a$d;

    invoke-direct {v2, p0}, LF3/a$d;-><init>(LF3/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, LF3/a;->p1()V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, LF3/a;

    invoke-direct {v0}, LF3/a;-><init>()V

    return-object v0
.end method

.method public o1()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    invoke-direct {p0}, LF3/a;->p1()V

    return-void
.end method
