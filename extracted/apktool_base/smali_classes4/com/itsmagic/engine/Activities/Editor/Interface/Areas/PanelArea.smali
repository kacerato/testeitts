.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq4/c;",
            ">;"
        }
    .end annotation
.end field

.field public B:Landroid/widget/FrameLayout;

.field public C:Landroid/app/Activity;

.field public D:Landroid/content/Context;

.field public E:Landroid/view/LayoutInflater;

.field public F:Li4/a;

.field public G:Lk4/b;

.field public H:Li4/e;

.field public final I:Landroid/graphics/Rect;

.field public final J:Landroid/graphics/Rect;

.field public final K:Landroid/graphics/Rect;

.field public final L:Landroid/graphics/Rect;

.field public M:Z

.field public N:Lq4/c;

.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public height:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/FrameLayout;

.field public n:Landroid/widget/LinearLayout;

.field public o:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/LinearLayout;

.field public panelList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/LinearLayout;

.field public serializedSelectedPanelIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public t:F

.field public u:F

.field public v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;",
            ">;"
        }
    .end annotation
.end field

.field public width:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public x:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->t:F

    .line 5
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u:F

    .line 6
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    .line 8
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->I:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M:Z

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    .line 18
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->t:F

    .line 20
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u:F

    .line 21
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    .line 23
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->I:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M:Z

    .line 31
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    .line 32
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    .line 33
    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    .line 34
    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    return-void
.end method

.method public static L(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null panel"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->S()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->P0()V

    return-void
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->i0()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->j0()V

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Li4/e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    return-object p0
.end method

.method public static w(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x(Ljava/lang/String;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    const-string v0, "panelList"

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->E(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    iget-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    iget-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_2
    iget-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    iget-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-nez p0, :cond_3

    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    :cond_3
    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public A(Landroid/widget/FrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g0()V

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->G(Landroid/widget/FrameLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public A0()V
    .locals 9

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->None:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->HorizontalBar:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    if-ne v2, v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->H(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    move-object v2, p0

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m(Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->A()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public B(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->I(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v11, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->H(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->f0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    :cond_0
    return-void
.end method

.method public B0(FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nx",
            "ny",
            "nw",
            "nh"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f:F

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g:F

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h:F

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    return-object p0
.end method

.method public C(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelsControllerListener"
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    iput-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->B:Landroid/widget/FrameLayout;

    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    move-object/from16 v12, p5

    iput-object v12, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v1, :cond_1

    invoke-interface/range {p6 .. p6}, Li4/e;->v()Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->K()Landroid/view/View;

    move-result-object v2

    invoke-interface/range {p6 .. p6}, Li4/e;->w()Landroid/graphics/Point;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/z;->c(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->B(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    :cond_1
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v1, v2, :cond_2

    instance-of v2, v1, Lk4/a;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v1, Lk4/a;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lk4/a;->k(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public C0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->U()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->V()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->T()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->N()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->B0(FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p1

    return-object p1
.end method

.method public D(Lo4/b;Li4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engineUpdateData",
            "panelsControllerListener"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->J(Lo4/b;Li4/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public D0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    if-ne v3, p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    instance-of v2, v1, Lk4/a;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Lk4/a;

    invoke-interface {v2, p1}, Lk4/a;->l(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eq p1, v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Panel is not a child of this area!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->B(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    instance-of v3, v2, Lk4/a;

    if-eqz v3, :cond_1

    check-cast v2, Lk4/a;

    invoke-interface {v2, p1}, Lk4/a;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->B(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public E0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->q(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    instance-of v2, v1, Lk4/a;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lk4/a;

    invoke-interface {v2, p1}, Lk4/a;->q(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Panel is not a child of this area!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v2, p1, :cond_0

    return-object v2

    :cond_0
    instance-of v3, v2, Lk4/a;

    if-eqz v3, :cond_1

    check-cast v2, Lk4/a;

    invoke-interface {v2, p1}, Lk4/a;->d(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v1, p1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final F0()V
    .locals 10

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->Q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->R()Lo4/d;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_8

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, v1, Lo4/d;->a:F

    const v5, -0x32209bee

    cmpl-float v6, v4, v5

    const/4 v7, -0x2

    const v8, -0x321806a4

    if-nez v6, :cond_0

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget v6, v6, Li4/a;->a:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->I()F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    cmpl-float v6, v4, v8

    if-nez v6, :cond_1

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lo4/d;->c:Lo4/d$a;

    sget-object v9, Lo4/d$a;->Global:Lo4/d$a;

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget v6, v6, Li4/a;->a:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v6, v1, Lo4/d;->b:F

    cmpl-float v5, v6, v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->X()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget v5, v5, Li4/a;->b:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N()F

    move-result v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget v5, v5, Li4/a;->b:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N()F

    move-result v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    cmpl-float v5, v6, v8

    if-nez v5, :cond_5

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_5
    iget-object v1, v1, Lo4/d;->c:Lo4/d$a;

    sget-object v5, Lo4/d$a;->Global:Lo4/d$a;

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget v1, v1, Li4/a;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v1, v3, :cond_7

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, v4, :cond_8

    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->A()V

    :cond_9
    return-void
.end method

.method public G(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    instance-of v2, v1, Lk4/a;

    if-eqz v2, :cond_0

    check-cast v1, Lk4/a;

    invoke-interface {v1, p1}, Lk4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public G0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticalMarginsInPanelSize"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u:F

    return-void
.end method

.method public H()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    return v0
.end method

.method public H0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    return-void
.end method

.method public I()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->t:F

    return v0
.end method

.method public I0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    return-void
.end method

.method public J()Lk4/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    return-object v0
.end method

.method public J0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    return-void
.end method

.method public K()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public K0()Z
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->s0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public L0()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public M()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    return-object v0
.end method

.method public M0()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g:F

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    iput v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    iput v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    return-void
.end method

.method public N()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u:F

    return v0
.end method

.method public N0(ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY",
            "scaX",
            "scaY"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    :cond_1
    if-eqz p3, :cond_2

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    :cond_2
    if-eqz p4, :cond_3

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    :cond_3
    return-void
.end method

.method public O()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    return v0
.end method

.method public O0()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 9

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "\" is not allowed to be floating"

    const-string v6, "Panel \""

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->w()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g0()V

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->S()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->w()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v1, v0}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v1, p0}, Li4/e;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object v0
.end method

.method public P()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    return v0
.end method

.method public final P0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0}, Li4/e;->h()Z

    move-result v0

    const v1, 0x7f070199

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0, p0}, Li4/e;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0}, Li4/e;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N:Lq4/c;

    if-eqz v0, :cond_2

    const v1, 0x7f070194

    invoke-virtual {v0, v1}, Lq4/c;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0, p0}, Li4/e;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N:Lq4/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lq4/c;->f(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0, p0}, Li4/e;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N:Lq4/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lq4/c;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Q()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    return v0
.end method

.method public Q0()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L0()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :goto_0
    return-void
.end method

.method public R()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public R0()V
    .locals 0

    return-void
.end method

.method public S()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public S0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Li4/e;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->v0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public final T0(Li4/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor3DScreen"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h:F

    iget v0, p1, Li4/a;->a:I

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->i:I

    iget v0, p1, Li4/a;->b:I

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->j:I

    :try_start_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    sub-float v2, v1, v0

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    add-float/2addr v2, v3

    const/high16 v4, 0x420c0000    # 35.0f

    mul-float/2addr v2, v4

    invoke-static {}, LK8/d;->d()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-static {v0, v1, v2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f:F

    sub-float v2, v1, v0

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {}, LK8/d;->d()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-static {v0, v1, v2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g:F

    sub-float v2, v1, v0

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {}, LK8/d;->d()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-static {v0, v1, v2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h:F

    sub-float v2, v1, v0

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {}, LK8/d;->d()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v0, v1, v2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    iget v2, p1, Li4/a;->a:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget p1, p1, Li4/a;->b:I

    int-to-float v3, p1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v1, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v0, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v4, v2, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v4, p1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public U(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->V(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public U0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lk4/b;Z)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelsControllerListener",
            "panelAreaToSplitArea",
            "isHierarchyVisible"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move-object/from16 v4, p6

    move-object/from16 v3, p1

    iput-object v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->B:Landroid/widget/FrameLayout;

    iput-object v7, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    move-object/from16 v2, p3

    iput-object v2, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iput-object v6, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iput-object v5, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object/from16 v1, p7

    iput-object v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    iput-object v4, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v9, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J:Landroid/graphics/Rect;

    monitor-enter v9

    :try_start_0
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iput v11, v0, Landroid/graphics/Rect;->left:I

    iget v11, v10, Landroid/graphics/Rect;->top:I

    iput v11, v0, Landroid/graphics/Rect;->top:I

    iget v11, v10, Landroid/graphics/Rect;->right:I

    iput v11, v0, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v9

    goto :goto_2

    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v9, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K:Landroid/graphics/Rect;

    monitor-enter v9

    :try_start_1
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l:Landroid/view/View;

    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iput v11, v0, Landroid/graphics/Rect;->left:I

    iget v11, v10, Landroid/graphics/Rect;->top:I

    iput v11, v0, Landroid/graphics/Rect;->top:I

    iget v11, v10, Landroid/graphics/Rect;->right:I

    iput v11, v0, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_3
    monitor-exit v9

    goto :goto_5

    :goto_4
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_3
    :goto_5
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v9, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->I:Landroid/graphics/Rect;

    monitor-enter v9

    :try_start_2
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->I:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iput v11, v0, Landroid/graphics/Rect;->left:I

    iget v11, v10, Landroid/graphics/Rect;->top:I

    iput v11, v0, Landroid/graphics/Rect;->top:I

    iget v11, v10, Landroid/graphics/Rect;->right:I

    iput v11, v0, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_4
    :goto_6
    monitor-exit v9

    goto :goto_8

    :goto_7
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_5
    :goto_8
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->U(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;

    :cond_6
    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T0(Li4/a;)V

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_b

    :goto_9
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v14, v7, v6, v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;

    :try_start_3
    invoke-interface/range {p7 .. p7}, Lk4/b;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {p7 .. p7}, Lk4/b;->f()Lj4/a;

    move-result-object v0

    sget-object v9, Lj4/a;->CloseDown:Lj4/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v0, v9, :cond_8

    :try_start_4
    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$d;

    invoke-direct {v0, v8, v14, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Li4/e;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v16, 0x0

    move-object v9, v14

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v7, v14

    move-object/from16 v14, p5

    move-object v15, v0

    :try_start_5
    invoke-virtual/range {v9 .. v16}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_7
    :goto_a
    move-object v9, v7

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v7, v14

    :goto_b
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_d

    :cond_8
    move-object v7, v14

    invoke-interface/range {p7 .. p7}, Lk4/b;->f()Lj4/a;

    move-result-object v0

    sget-object v9, Lj4/a;->CloseUp:Lj4/a;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-ne v0, v9, :cond_9

    :try_start_7
    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p:Landroid/widget/LinearLayout;

    new-instance v15, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;

    invoke-direct {v15, v8, v7, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Li4/e;)V

    const/16 v16, 0x1

    move-object v9, v7

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v16}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :cond_9
    invoke-interface/range {p7 .. p7}, Lk4/b;->f()Lj4/a;

    move-result-object v0

    sget-object v9, Lj4/a;->None:Lj4/a;

    if-ne v0, v9, :cond_7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v9, v7

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m(Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    goto :goto_c

    :cond_a
    move-object v9, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m(Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :goto_c
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    move-object/from16 v3, p1

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move-object/from16 v4, p6

    move-object/from16 v1, p7

    const/4 v15, 0x0

    goto/16 :goto_9

    :cond_b
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-nez v0, :cond_c

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->serializedSelectedPanelIndex:I

    if-ltz v0, :cond_d

    iget-object v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->serializedSelectedPanelIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v8, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_c
    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v8, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F0()V

    invoke-interface/range {p7 .. p7}, Lk4/b;->isClosed()Z

    move-result v0

    iget-object v2, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v1

    :goto_10
    iget-object v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    iget-object v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v9, :cond_10

    if-eqz v0, :cond_e

    iget-object v3, v9, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_12

    :cond_e
    iget-object v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v9, v3, :cond_f

    if-eqz p8, :cond_f

    const/4 v15, 0x1

    goto :goto_11

    :cond_f
    move v15, v1

    :goto_11
    iget-object v3, v9, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_12
    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    move/from16 v16, v3

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    move/from16 v17, v3

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    move/from16 v18, v3

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    move/from16 v19, v3

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    move/from16 v20, v3

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    move/from16 v21, v3

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    move/from16 v22, v3

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    move/from16 v23, v3

    iget-object v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    move-object/from16 v24, v3

    iget-object v3, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    move-object/from16 v25, v3

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v26, p6

    invoke-virtual/range {v9 .. v26}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;Li4/e;)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_11
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v0, :cond_15

    invoke-interface/range {p7 .. p7}, Lk4/b;->isClosed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_14

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->Q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v2, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    iget-object v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_13
    iget-object v9, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v10, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    move/from16 v16, v1

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    move/from16 v17, v1

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    move/from16 v18, v1

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    move/from16 v19, v1

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a:F

    move/from16 v20, v1

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b:F

    move/from16 v21, v1

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    move/from16 v22, v1

    iget v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    move/from16 v23, v1

    iget-object v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    move-object/from16 v24, v1

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v25, v0

    invoke-virtual/range {v9 .. v25}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->y0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;)V

    goto :goto_13

    :cond_14
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->Q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v2, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v1, :cond_15

    iget-object v1, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    :goto_13
    return-void
.end method

.method public V(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;IZ)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "layout",
            "inflateDefaultOption"
        }
    .end annotation

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p6, p2, :cond_0

    const p2, 0x7f0c007f

    invoke-virtual {p4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    :goto_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    invoke-virtual {p2, p6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T0(Li4/a;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    const p2, 0x7f09055d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l:Landroid/view/View;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    const p2, 0x7f090159

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    const p2, 0x7f09054e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    const p2, 0x7f0902b5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    const p2, 0x7f090400

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    const p2, 0x7f090303

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->q:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    const p2, 0x7f090402

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->r:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    const p2, 0x7f090373

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s:Landroid/widget/LinearLayout;

    if-eqz p7, :cond_2

    new-instance p1, Lq4/c;

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$h;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    const p5, 0x7f070194

    invoke-direct {p1, p5, p2}, Lq4/c;-><init>(ILq4/d;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N:Lq4/c;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x0

    move p2, p1

    :goto_1
    iget-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p2, p5, :cond_3

    iget-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lq4/c;

    iget-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->W(Landroid/content/Context;Landroid/view/LayoutInflater;Lq4/c;Landroid/widget/LinearLayout;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    const/16 p2, 0x8

    if-eqz p7, :cond_4

    iget-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->q:Landroid/widget/ImageView;

    if-eqz p4, :cond_5

    new-instance p5, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    invoke-direct {p5, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->q:Landroid/widget/ImageView;

    if-eqz p4, :cond_5

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l:Landroid/view/View;

    if-eqz p4, :cond_7

    new-instance p5, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$j;

    invoke-direct {p5, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M:Z

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    invoke-static {p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    return-object p1
.end method

.method public final W(Landroid/content/Context;Landroid/view/LayoutInflater;Lq4/c;Landroid/widget/LinearLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layoutInflater",
            "rightOption",
            "contentView"
        }
    .end annotation

    const v0, 0x7f0c0087

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p3, Lq4/c;->f:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    iget-object p2, p3, Lq4/c;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p4, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p3, Lq4/c;->f:Landroid/view/View;

    const p4, 0x7f09025a

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$l;

    invoke-direct {p4, p0, p3, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lq4/c;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$a;

    invoke-direct {p4, p0, p3, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lq4/c;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$b;

    invoke-direct {p4, p0, p3, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lq4/c;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p3}, Lq4/c;->c()Lq4/c$a;

    move-result-object p4

    sget-object v0, Lq4/c$a;->Resource:Lq4/c$a;

    if-ne p4, v0, :cond_0

    invoke-virtual {p3}, Lq4/c;->b()I

    move-result p4

    invoke-static {p2, p4, p1}, LVc/e;->Y(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object p4, p3, Lq4/c;->f:Landroid/view/View;

    invoke-static {p4, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;

    invoke-direct {p4, p0, p2, p3, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Landroid/widget/ImageView;Lq4/c;Landroid/content/Context;)V

    iput-object p4, p3, Lq4/c;->g:Lq4/b;

    :cond_0
    invoke-virtual {p3}, Lq4/c;->e()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p3, Lq4/c;->f:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M:Z

    return v0
.end method

.method public Y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->I:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->I:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Z(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    int-to-float p1, p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    int-to-float p1, p2

    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b0(Ltc/h;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c0(Ltc/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e0(Ltc/h;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a0()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b0(Ltc/h;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    return-object v0
.end method

.method public varargs d0([Ltc/h;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchs"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K:Landroid/graphics/Rect;

    monitor-enter v0

    move v2, v1

    :goto_0
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_1

    iget v7, v6, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_1

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v5, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J:Landroid/graphics/Rect;

    monitor-enter v2

    move v0, v1

    :goto_1
    :try_start_1
    array-length v3, p1

    if-ge v0, v3, :cond_5

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_4

    iget v7, v6, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_4

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v5, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_4

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    monitor-exit v2

    return v4

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v2

    return v1

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public e0(Ltc/h;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->I(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v11, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->H(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    :cond_0
    return-void
.end method

.method public g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->Y()V

    return v4

    :cond_0
    instance-of v3, v2, Lk4/a;

    if-eqz v3, :cond_1

    check-cast v2, Lk4/a;

    invoke-interface {v2, p1}, Lk4/a;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public h0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->Z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public i(Ljava/util/List;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;",
            ">;)",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final i0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0}, Li4/e;->h()Z

    move-result v0

    const v1, 0x7f070199

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0, p0}, Li4/e;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0, p0}, Li4/e;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N:Lq4/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lq4/c;->f(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0, p0}, Li4/e;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N:Lq4/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lq4/c;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Lq4/c;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rightOption",
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->W(Landroid/content/Context;Landroid/view/LayoutInflater;Lq4/c;Landroid/widget/LinearLayout;)V

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0}, Li4/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0, p0}, Li4/e;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v0}, Li4/e;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N:Lq4/c;

    if-eqz v0, :cond_0

    const v1, 0x7f070194

    invoke-virtual {v0, v1}, Lq4/c;->f(I)V

    :cond_0
    return-void
.end method

.method public k(Lo4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->v(Lo4/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k0(Lo4/b;Li4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engineUpdateData",
            "panelsControllerListener"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Li4/e;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->a0(Lo4/b;Li4/e;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelsControllerListener"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iput-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->B:Landroid/widget/FrameLayout;

    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    move-object/from16 v14, p3

    iput-object v14, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    move-object/from16 v13, p4

    iput-object v13, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    move-object/from16 v12, p5

    iput-object v12, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-nez v1, :cond_5

    new-instance v1, Lp4/b;

    invoke-direct {v1}, Lp4/b;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v1}, Lk4/b;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v1}, Lk4/b;->f()Lj4/a;

    move-result-object v1

    sget-object v2, Lj4/a;->None:Lj4/a;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->y(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;)Landroid/view/View;

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v1}, Lk4/b;->f()Lj4/a;

    move-result-object v1

    sget-object v2, Lj4/a;->CloseUp:Lj4/a;

    if-ne v1, v2, :cond_1

    iget-object v9, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object v15, v1

    invoke-virtual/range {v9 .. v16}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v1}, Lk4/b;->f()Lj4/a;

    move-result-object v1

    sget-object v2, Lj4/a;->CloseDown:Lj4/a;

    if-ne v1, v2, :cond_5

    iget-object v9, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v16}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v1}, Lk4/b;->a()Lj4/a;

    move-result-object v1

    sget-object v2, Lj4/a;->None:Lj4/a;

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->y(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;)Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v1}, Lk4/b;->a()Lj4/a;

    move-result-object v1

    sget-object v2, Lj4/a;->CloseUp:Lj4/a;

    if-ne v1, v2, :cond_4

    iget-object v9, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v16}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v1}, Lk4/b;->a()Lj4/a;

    move-result-object v1

    sget-object v2, Lj4/a;->CloseDown:Lj4/a;

    if-ne v1, v2, :cond_5

    iget-object v9, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v16}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;

    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_7

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v1, v2, :cond_6

    instance-of v2, v1, Lk4/a;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast v1, Lk4/a;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lk4/a;->p(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public l0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Li4/e;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelsControllerListener",
            "panel"
        }
    .end annotation

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$k;

    invoke-direct {v6, p0, p6, p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Li4/e;)V

    move-object v0, p6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->y(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;)Landroid/view/View;

    return-void
.end method

.method public m0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public n(Lo4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->z(Lo4/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->serializedSelectedPanelIndex:I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->j0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public o()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public o0()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    if-ne v2, p1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public p0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->l0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public q(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v2, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v2, p1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public q0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public r()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 8

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "\" is not allowed to be floating"

    const-string v5, "Panel \""

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->w()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->C()Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->w()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->C()Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H:Li4/e;

    invoke-interface {v1, v0}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v0
.end method

.method public r0(Lk4/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lk4/c;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v1, v2, :cond_1

    instance-of v2, v1, Lk4/a;

    if-eqz v2, :cond_1

    check-cast v1, Lk4/a;

    invoke-interface {v1, p1}, Lk4/a;->a(Lk4/c;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public s(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return v3

    :cond_0
    instance-of v4, v2, Lk4/a;

    if-eqz v4, :cond_1

    check-cast v2, Lk4/a;

    invoke-interface {v2, p1}, Lk4/a;->e(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    if-ne v2, p1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public s0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    return v4

    :cond_0
    instance-of v3, v2, Lk4/a;

    if-eqz v3, :cond_1

    check-cast v2, Lk4/a;

    invoke-interface {v2, p1}, Lk4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public t(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v2, p1, :cond_0

    return v3

    :cond_0
    instance-of v4, v2, Lk4/a;

    if-eqz v4, :cond_1

    check-cast v2, Lk4/a;

    invoke-interface {v2, p1}, Lk4/a;->i(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-ne v2, p1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public t0(Lq4/c;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rightOption",
            "context"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->r:Landroid/widget/LinearLayout;

    iget-object v0, p1, Lq4/c;->f:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p2, 0x0

    iput-object p2, p1, Lq4/c;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->P()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public u0()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    return-void
.end method

.method public v(Landroid/widget/FrameLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->D(Landroid/widget/FrameLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k:Landroid/view/View;

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq4/c;

    iget-object v1, p1, Lq4/c;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y(Lq4/c;Landroid/content/Context;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v6, :cond_0

    if-ne v6, p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v0}, Lk4/b;->toggle()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->A()V

    goto/16 :goto_0

    :cond_0
    const/4 v7, -0x1

    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->w0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->Q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v7, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)V

    :cond_2
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz p1, :cond_6

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v11, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v12, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v13, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->Q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v7, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F0()V

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->s0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->d0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->A()V

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G:Lk4/b;

    invoke-interface {v0}, Lk4/b;->d()V

    :goto_0
    const/4 v0, 0x0

    if-eq v6, p1, :cond_8

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eq v7, v6, :cond_7

    if-eq v7, p1, :cond_7

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v11, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    invoke-virtual/range {v7 .. v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->w0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->W()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq4/c;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->W(Landroid/content/Context;Landroid/view/LayoutInflater;Lq4/c;Landroid/widget/LinearLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method public w0(Ln4/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->q0(Ln4/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public x0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    return-void
.end method

.method public y(Lq4/c;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rightOption",
            "context"
        }
    .end annotation

    iget-object p2, p1, Lq4/c;->f:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p2, 0x0

    iput-object p2, p1, Lq4/c;->f:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y0(Lj4/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeDirection"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->None:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->TopBar:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->I(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    sget-object v2, Lj4/a;->CloseDown:Lj4/a;

    if-ne p1, v2, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$f;

    invoke-direct {v8, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C:Landroid/app/Activity;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D:Landroid/content/Context;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F:Li4/a;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$g;

    invoke-direct {v8, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    const/4 v9, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public z()V
    .locals 1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->P()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public z0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "horizontalMarginsInPanelSize"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->t:F

    return-void
.end method
