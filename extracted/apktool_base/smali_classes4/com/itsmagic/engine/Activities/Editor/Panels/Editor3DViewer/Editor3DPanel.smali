.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;
.super LN4/d;
.source "SourceFile"


# static fields
.field public static final T0:Ljava/lang/String; = "Editor3DPanel"

.field public static final U0:Ljava/lang/Class;


# instance fields
.field public final A0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf5/d;",
            ">;"
        }
    .end annotation
.end field

.field public final B0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf5/d;",
            ">;"
        }
    .end annotation
.end field

.field public C0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public D0:Landroid/view/View;

.field public E0:LM7/e;

.field public F0:LM7/h;

.field public G0:LM7/h;

.field public H0:LM7/h;

.field public I0:LM7/h;

.field public J0:Lf5/d;

.field public final K0:Lf5/d;

.field public L0:Landroid/view/View;

.field public M0:Landroid/widget/TextView;

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:I

.field public final R0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            ">;"
        }
    .end annotation
.end field

.field public final S0:Lc8/b$f;

.field public drawStatistic:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y0:Landroid/view/View;

.field public z0:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->U0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$b;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    const-string v0, "Editor3DPanel"

    invoke-direct {p0, v0}, LN4/d;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->y0:Landroid/view/View;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->drawStatistic:Z

    .line 16
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    .line 17
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->B0:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->C0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 19
    new-instance v0, Lf5/b;

    invoke-direct {v0}, Lf5/b;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->K0:Lf5/d;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    .line 21
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    .line 22
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->P0:I

    .line 23
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->R0:Ljava/util/Set;

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->S0:Lc8/b$f;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->h1(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$m;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LN4/d;-><init>(LK8/a;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->y0:Landroid/view/View;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->drawStatistic:Z

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->B0:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->C0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 7
    new-instance p1, Lf5/b;

    invoke-direct {p1}, Lf5/b;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->K0:Lf5/d;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    .line 9
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    .line 10
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->P0:I

    .line 11
    new-instance p1, Ljava/util/HashSet;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->R0:Ljava/util/Set;

    .line 12
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$d;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->S0:Lc8/b$f;

    return-void
.end method

.method public static synthetic e2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Lf5/d;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    return-object p0
.end method

.method public static synthetic f2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    return-object p0
.end method

.method public static synthetic g2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->x2(Lf5/d;)V

    return-void
.end method

.method public static synthetic h2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->L0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic j2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/h;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->F0:LM7/h;

    return-object p0
.end method

.method public static synthetic k2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/h;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->G0:LM7/h;

    return-object p0
.end method

.method public static synthetic l2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/h;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->H0:LM7/h;

    return-object p0
.end method

.method public static synthetic m2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/h;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->I0:LM7/h;

    return-object p0
.end method

.method public static synthetic n2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic o2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->v2(Lf5/d;)V

    return-void
.end method

.method public static synthetic p2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->w2(Lf5/d;)V

    return-void
.end method


# virtual methods
.method public final A2(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf5/d;

    instance-of v3, v2, Lf5/a;

    if-eqz v3, :cond_0

    check-cast v2, Lf5/a;

    invoke-virtual {v2}, Lf5/a;->H()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v5, Ldd/b;

    invoke-virtual {v2}, Lf5/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v4}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf5/a$b;

    new-instance v5, Ldd/b;

    invoke-virtual {v3}, Lf5/a$b;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$i;

    invoke-direct {v7, p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/a$b;)V

    invoke-direct {v5, v6, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v3, Ldd/b;

    invoke-virtual {v2}, Lf5/d;->i()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$j;

    invoke-direct {v5, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V

    invoke-direct {v3, v4, v5}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 8

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->C0()Landroid/view/View;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0165

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->y0:Landroid/view/View;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->S0:Lc8/b$f;

    invoke-static {v1}, Lc8/b;->g(Lc8/b$f;)V

    const v1, 0x7f0904c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->M0:Landroid/widget/TextView;

    const v1, 0x7f090316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->D0:Landroid/view/View;

    new-instance v1, LM7/h;

    const v2, 0x7f090559

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->F0:LM7/h;

    new-instance v1, LM7/h;

    const v2, 0x7f0902b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->G0:LM7/h;

    new-instance v1, LM7/h;

    const v2, 0x7f0900df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->H0:LM7/h;

    new-instance v1, LM7/h;

    const v2, 0x7f090400

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->I0:LM7/h;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->D0:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    new-instance v2, LM7/h;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v3, LM7/e;

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$g;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0701e3

    const-string v7, ""

    invoke-direct {v3, v6, v7, v4, v5}, LM7/e;-><init>(ILjava/lang/String;LM7/f;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LM7/e;->W(Z)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, LM7/h;->g(Ljava/util/List;)V

    :cond_0
    const v1, 0x7f0903ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->L0:Landroid/view/View;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$h;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->y2()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->M0:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public C1(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->s2(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    return-void
.end method

.method public E1(LN4/a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axis3DType"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    invoke-virtual {v0, p1}, Lf5/d;->f(LN4/a;)Z

    move-result p1

    return p1
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->G0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->S0:Lc8/b$f;

    invoke-static {v0}, Lc8/b;->r(Lc8/b$f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->y0:Landroid/view/View;

    return-void
.end method

.method public J0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object v0, v0, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/_EDITOR/thumb.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object v1, v1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->takeScreenShot(Ljava/io/File;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf5/d;->t()V

    :cond_1
    return-void
.end method

.method public J1()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->g()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public M0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->v()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LM7/e;->k()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->q2(Lf5/d;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->F0:LM7/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LM7/h;->n()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->G0:LM7/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LM7/h;->n()V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->H0:LM7/h;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LM7/h;->n()V

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->I0:LM7/h;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LM7/h;->n()V

    :cond_5
    return-void
.end method

.method public M1(Ltc/h;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->F0:LM7/h;

    invoke-virtual {v0, p1}, LM7/h;->l(Ltc/h;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->G0:LM7/h;

    invoke-virtual {v0, p1}, LM7/h;->l(Ltc/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->H0:LM7/h;

    invoke-virtual {v0, p1}, LM7/h;->l(Ltc/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->I0:LM7/h;

    invoke-virtual {v0, p1}, LM7/h;->l(Ltc/h;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public N()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->N()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    new-instance v1, Ldd/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->drawStatistic:Z

    if-eqz v3, :cond_1

    const-string v3, "X"

    goto :goto_0

    :cond_1
    const-string v3, " "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Show statistics"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    invoke-direct {v1, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public R1()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->B()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public d2()Lf5/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->G()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->G0:LM7/h;

    if-eqz v0, :cond_1

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v1, v0, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->C0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->z2()V

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->C0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_1
    return-void
.end method

.method public o1()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->drawStatistic:Z

    if-eqz v0, :cond_5

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v1, v0, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->M0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->R0:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->P0:I

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->Q0:I

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->r2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    const-string v1, " "

    const-string v2, ""

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Vers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    invoke-static {v2}, LTc/b;->W(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Tris:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    invoke-static {v2}, LTc/b;->W(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->R0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Mats:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->R0:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, LTc/b;->W(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->P0:I

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Particles:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->P0:I

    invoke-static {v2}, LTc/b;->W(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->Q0:I

    const/4 v3, 0x5

    if-le v0, v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Objs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->Q0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->M0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->M0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final q2(Lf5/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lf5/d;->m()I

    move-result v0

    invoke-virtual {p1}, Lf5/d;->l()I

    move-result v1

    invoke-virtual {p1}, Lf5/d;->j()I

    move-result v2

    invoke-virtual {p1}, Lf5/d;->k()I

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {v3, v4}, LM7/e;->U(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {v0, v3}, LM7/e;->b0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {v0, v1}, LM7/e;->g0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {v0, v1}, LM7/e;->Q(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;

    :cond_1
    :goto_0
    return-void
.end method

.method public final r2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->Q0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->Q0:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->R0:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->R0:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->R0:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->u2(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->t2(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getMaxParticles()I

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->P0:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->P0:I

    :cond_4
    :goto_1
    const/4 v3, 0x0

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->N0:I

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->O0:I

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->r2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final s2(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    const-string v1, "3DCursor"

    invoke-direct {p3, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;

    iget-object p2, p2, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-direct {v0, p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->z0:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final t2(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunksCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunkAt(I)Lv9/d;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2, p1}, Lv9/d;->L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layersCount()I

    move-result p1

    mul-int/2addr v1, p1

    return v1
.end method

.method public final u2(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunksCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunkAt(I)Lv9/d;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2, p1}, Lv9/d;->M(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layersCount()I

    move-result p1

    mul-int/2addr v1, p1

    return v1
.end method

.method public final v2(Lf5/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewMode"
        }
    .end annotation

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, Lf5/d;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lf5/d;->s(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    :cond_2
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LM7/g;->o(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LM7/g;->o(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    invoke-virtual {p1}, Lf5/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LM7/e;->h0(Ljava/lang/String;)V

    :cond_4
    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;

    invoke-direct {v1, p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;ILf5/d;)V

    iput-object v1, p1, Lf5/d;->a:Lf5/d$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lf5/d;->u(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-virtual {p1}, Lf5/d;->v()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->L0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->q2(Lf5/d;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->w2(Lf5/d;)V

    return-void
.end method

.method public final w2(Lf5/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewMode"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0}, Lf5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->F0:LM7/h;

    invoke-virtual {v1, v0}, LM7/h;->g(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->x2(Lf5/d;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0}, Lf5/d;->n(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->H0:LM7/h;

    invoke-virtual {v1, v0}, LM7/h;->g(Ljava/util/List;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0}, Lf5/d;->p(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->I0:LM7/h;

    invoke-virtual {p1, v0}, LM7/h;->g(Ljava/util/List;)V

    return-void
.end method

.method public final x2(Lf5/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewMode"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0}, Lf5/d;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->G0:LM7/h;

    invoke-virtual {p1, v0}, LM7/h;->g(Ljava/util/List;)V

    return-void
.end method

.method public final y2()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->K0:Lf5/d;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->v2(Lf5/d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->E0:LM7/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LM7/g;->o(Z)V

    :cond_0
    return-void
.end method

.method public z(Lo4/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->z(Lo4/b;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->y0:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->z0:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object v0, v0, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iput-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->enable3DCursor:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lf5/d;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;->I:Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->enable3DCursor:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;->I:Z

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lf5/d;->e()V

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p1, p1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    iput-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->R8:Lf5/d;

    :cond_4
    return-void
.end method

.method public final z2()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v1, v0, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->B0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->propagateEditorViewModes(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf5/d;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/d;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->v2(Lf5/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->A0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/d;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->v2(Lf5/d;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->J0:Lf5/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lf5/d;->c()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->y2()V

    :cond_4
    :goto_0
    return-void
.end method
