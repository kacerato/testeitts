.class public LA5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final d0:Ljava/lang/String; = "Inspector"

.field public static final e0:Ljava/lang/Class;

.field public static final f0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LA5/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:LB5/a;

.field public Z:Landroid/widget/LinearLayout;

.field public a0:Landroid/widget/LinearLayout;

.field public b0:Landroid/view/View;

.field public final c0:LA5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LA5/a;

    sput-object v0, LA5/a;->e0:Ljava/lang/Class;

    new-instance v0, LA5/a$a;

    invoke-direct {v0}, LA5/a$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LA5/a;->f0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROPERTIES:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inspector"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, LA5/a$c;

    invoke-direct {v0, p0}, LA5/a$c;-><init>(LA5/a;)V

    iput-object v0, p0, LA5/a;->c0:LA5/c;

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
    new-instance p1, LA5/a$c;

    invoke-direct {p1, p0}, LA5/a$c;-><init>(LA5/a;)V

    iput-object p1, p0, LA5/a;->c0:LA5/c;

    return-void
.end method

.method public static B1()V
    .locals 1

    new-instance v0, LA5/a$b;

    invoke-direct {v0}, LA5/a$b;-><init>()V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p1()Ljava/util/List;
    .locals 1

    sget-object v0, LA5/a;->f0:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic q1(LA5/a;)LB5/a;
    .locals 0

    iget-object p0, p0, LA5/a;->Y:LB5/a;

    return-object p0
.end method

.method public static s1()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-eqz v3, :cond_0

    invoke-interface {v3}, LA5/c;->d()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    :goto_3
    sget-object v2, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static t1()LA5/a;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA5/c;

    if-eqz v2, :cond_0

    invoke-interface {v2}, LA5/c;->getInstance()LA5/a;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    :goto_2
    sget-object v2, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static v1(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, LA5/c;->refresh(I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object v1, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA5/c;

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static w1()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-eqz v3, :cond_0

    invoke-interface {v3}, LA5/c;->g()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    :goto_3
    sget-object v2, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static x1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, LA5/c;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object v1, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA5/c;

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static y1()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-eqz v3, :cond_0

    invoke-interface {v3}, LA5/c;->b()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    :goto_3
    sget-object v2, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static z1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/c;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, LA5/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object v1, LA5/a;->f0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA5/c;

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public A1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {}, LJ3/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LJ3/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {}, LJ3/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {p0, p1}, LA5/a;->u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void

    :cond_0
    iget-object v0, p0, LA5/a;->Y:LB5/a;

    if-eqz v0, :cond_1

    instance-of v1, v0, LB5/c;

    if-eqz v1, :cond_1

    check-cast v0, LB5/c;

    invoke-virtual {v0, p1}, LB5/c;->t(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LA5/a;->r1()V

    new-instance v0, LB5/c;

    iget-object v3, p0, LA5/a;->b0:Landroid/view/View;

    iget-object v4, p0, LA5/a;->a0:Landroid/widget/LinearLayout;

    iget-object v5, p0, LA5/a;->Z:Landroid/widget/LinearLayout;

    iget-object v6, p0, LA5/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, LB5/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, LA5/a;->Y:LB5/a;

    invoke-virtual {v0}, LB5/a;->d()V

    :goto_0
    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    const v1, 0x7f0902d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LA5/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09055a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LA5/a;->Z:Landroid/widget/LinearLayout;

    const v1, 0x7f090429

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LA5/a;->b0:Landroid/view/View;

    const v1, 0x7f090426

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LA5/a;->a0:Landroid/widget/LinearLayout;

    iget-object v1, p0, LA5/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    sget-object v1, LA5/a;->f0:Ljava/util/List;

    iget-object v2, p0, LA5/a;->c0:LA5/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, LW7/b;->i:La8/a;

    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, LA5/a;->A1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-object v0
.end method

.method public G0()V
    .locals 2

    iget-object v0, p0, LA5/a;->Y:LB5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LB5/a;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LA5/a;->Y:LB5/a;

    sget-object v0, LA5/a;->f0:Ljava/util/List;

    iget-object v1, p0, LA5/a;->c0:LA5/c;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public M0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M0()V

    invoke-virtual {p0}, LA5/a;->r1()V

    const/4 v0, 0x0

    iput-object v0, p0, LA5/a;->Y:LB5/a;

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v0}, LA5/a;->A1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, LA5/a$d;

    invoke-direct {v0, p0}, LA5/a$d;-><init>(LA5/a;)V

    return-object v0
.end method

.method public O0(Ln4/f;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    instance-of p1, p1, Ln4/c;

    const/4 p1, 0x0

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, LA5/a;

    invoke-direct {v0}, LA5/a;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LA5/a;->Y:LB5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LB5/a;->h()V

    :cond_0
    return-void
.end method

.method public r1()V
    .locals 1

    iget-object v0, p0, LA5/a;->Y:LB5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LB5/a;->a()V

    :cond_0
    return-void
.end method

.method public final u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, LA5/a;->Y:LB5/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, LB5/d;

    if-eqz v1, :cond_0

    check-cast v0, LB5/d;

    invoke-virtual {v0, p1}, LB5/d;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LA5/a;->r1()V

    new-instance v0, LB5/d;

    iget-object v3, p0, LA5/a;->b0:Landroid/view/View;

    iget-object v4, p0, LA5/a;->a0:Landroid/widget/LinearLayout;

    iget-object v5, p0, LA5/a;->Z:Landroid/widget/LinearLayout;

    iget-object v6, p0, LA5/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, LB5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, LA5/a;->Y:LB5/a;

    invoke-virtual {v0}, LB5/a;->d()V

    :goto_0
    return-void
.end method
