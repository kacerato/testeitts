.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;
.source "SourceFile"


# static fields
.field public static final u:Ljava/lang/String; = "SplitArea"

.field public static final v:Ljava/lang/Class;


# instance fields
.field public b:Lj4/a;

.field public c:F

.field public d:Ll4/a;

.field public divisionPercentage:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public e:Ll4/c;

.field public f:Li4/a;

.field public g:Landroid/widget/FrameLayout;

.field public h:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public i:Landroid/content/Context;

.field public j:Landroid/app/Activity;

.field public final k:Lp4/a;

.field public l:Lk4/d;

.field public final m:Lk4/d;

.field public final n:Lk4/d;

.field public final o:Lk4/b;

.field public p:Li4/e;

.field public panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public serializedCloseDirection:Lj4/a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public splitDirection:Lj4/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public w:F
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->v:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area$b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "SplitArea"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lj4/b;->None:Lj4/b;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    .line 3
    sget-object v0, Lj4/a;->None:Lj4/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->k:Lp4/a;

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->m:Lk4/d;

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n:Lk4/d;

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->o:Lk4/b;

    return-void
.end method

.method public constructor <init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "divisionPercentage",
            "splitDirection",
            "splitArea1",
            "splitArea2"
        }
    .end annotation

    .line 18
    const-string v0, "SplitArea"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object v0, Lj4/b;->None:Lj4/b;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    .line 20
    sget-object v0, Lj4/a;->None:Lj4/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 21
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->k:Lp4/a;

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->m:Lk4/d;

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n:Lk4/d;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->o:Lk4/b;

    .line 26
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    .line 27
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    .line 28
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    .line 29
    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    .line 9
    const-string v0, "SplitArea"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;-><init>(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lj4/b;->None:Lj4/b;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    .line 11
    sget-object v0, Lj4/a;->None:Lj4/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->k:Lp4/a;

    .line 14
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->m:Lk4/d;

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n:Lk4/d;

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->o:Lk4/b;

    .line 17
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method

.method public static synthetic M(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Li4/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    return-object p0
.end method

.method public static synthetic N(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Li4/e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->p:Li4/e;

    return-object p0
.end method

.method public static synthetic O(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;FLandroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->a0(FLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic P(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic Q(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Lk4/d;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->l:Lk4/d;

    return-object p0
.end method

.method public static synthetic R(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Landroid/widget/FrameLayout;Lk4/d;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->Z(Landroid/widget/FrameLayout;Lk4/d;)Z

    move-result p0

    return p0
.end method

.method public static synthetic S(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->Y()V

    return-void
.end method

.method public static b0(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const-string v0, "panelArea"

    const-string v1, "splitArea2"

    const-string v2, "splitArea1"

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v3

    :try_start_0
    const-class v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-virtual {v3, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    sget-object v4, Lj4/a;->None:Lj4/a;

    iput-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b0(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    move-result-object p0

    iput-object p0, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b0(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    move-result-object p0

    iput-object p0, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p0

    iput-object p0, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v3

    :catch_1
    move-exception p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public A()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ll4/a;->a(Landroid/widget/FrameLayout;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ll4/c;->a(Landroid/widget/FrameLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->A()V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->A()V

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_8
    return-void
.end method

.method public B(Ln4/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w0(Ln4/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->B(Ln4/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->B(Ln4/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public C(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->C(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public D(Lj4/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeDirection"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y0(Lj4/a;)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A0()V

    :cond_0
    return-void
.end method

.method public F(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    return-void
.end method

.method public G(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->G(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->G(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_2
    return-void
.end method

.method public H(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->H(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->H(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_2
    return-void
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->I()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->I()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ll4/a;->g()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ll4/c;->g()V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K0()Z

    :cond_4
    return-void
.end method

.method public J()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->J()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->J()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ll4/a;->h()V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ll4/c;->h()V

    :cond_4
    return-void
.end method

.method public K()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->K()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->K()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S0()V

    :cond_2
    return-void
.end method

.method public L(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;Lk4/d;IZ)V
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "sx",
            "sy",
            "sw",
            "sh",
            "editor3DScreen",
            "panelsControllerListener",
            "parentSplitAreaConnector",
            "depth",
            "stepLerp"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move-object/from16 v9, p3

    move/from16 v8, p5

    move/from16 v7, p6

    move/from16 v6, p7

    move/from16 v5, p8

    move-object/from16 v4, p9

    move-object/from16 v0, p11

    iput v8, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->x:F

    iput v7, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->y:F

    iput v6, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    iput v5, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    move-object/from16 v3, p2

    iput-object v3, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->j:Landroid/app/Activity;

    iput-object v9, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i:Landroid/content/Context;

    move-object/from16 v2, p10

    iput-object v2, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->p:Li4/e;

    iput-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->l:Lk4/d;

    iput-object v10, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    iput-object v4, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    iget v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    invoke-virtual {v11, v1, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->a0(FLandroid/content/Context;)V

    invoke-virtual {v11, v9, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->T(Landroid/content/Context;Li4/a;)V

    invoke-virtual {v11, v10, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->Z(Landroid/widget/FrameLayout;Lk4/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v12, Lj4/b;->Horizontal:Lj4/b;

    const/4 v15, 0x0

    const/high16 v26, 0x40000000    # 2.0f

    if-ne v1, v12, :cond_2

    iput-object v15, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    iget v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v0, v6

    invoke-virtual {v11, v4, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v1

    div-float v1, v1, v26

    sub-float v27, v0, v1

    iget-object v12, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {v11, v4, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v0

    div-float v0, v0, v26

    sub-float v19, v27, v0

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->m:Lk4/d;

    add-int/lit8 v1, p12, 0x1

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    move-object/from16 v23, v0

    move/from16 v24, v1

    move/from16 v25, p13

    invoke-virtual/range {v12 .. v25}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->L(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;Lk4/d;IZ)V

    add-float v0, v8, v27

    invoke-virtual {v11, v4, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v12

    div-float v12, v12, v26

    add-float v17, v0, v12

    sub-float v0, v6, v27

    iget-object v12, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {v11, v4, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v6

    div-float v6, v6, v26

    sub-float v19, v0, v6

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n:Lk4/d;

    move-object/from16 v23, v0

    invoke-virtual/range {v12 .. v25}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->L(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;Lk4/d;IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v15, v4

    move-object/from16 v4, p4

    move v14, v5

    move/from16 v5, p5

    move/from16 v6, p6

    move v13, v7

    move/from16 v7, p8

    move v12, v8

    move-object/from16 v8, p9

    move-object v13, v9

    move/from16 v9, v27

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->l0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->m0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Split area cant be HORIZONTAL spliced without 2 children split areas"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v15, v4

    move v14, v5

    move v12, v8

    move-object v13, v9

    sget-object v2, Lj4/b;->Vertical:Lj4/b;

    if-ne v1, v2, :cond_4

    const/4 v10, 0x0

    iput-object v10, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_3

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_3

    iget v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v0, v14

    invoke-virtual {v11, v15, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v1

    div-float v1, v1, v26

    sub-float v27, v0, v1

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {v11, v15, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v1

    div-float v1, v1, v26

    sub-float v20, v27, v1

    iget-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->m:Lk4/d;

    add-int/lit8 v2, p12, 0x1

    move v9, v12

    move-object v12, v0

    move/from16 v7, p6

    move-object v8, v13

    move-object/from16 v13, p1

    move v3, v14

    move-object/from16 v14, p2

    move-object v5, v15

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    move-object/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, p13

    invoke-virtual/range {v12 .. v25}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->L(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;Lk4/d;IZ)V

    add-float v0, v7, v27

    invoke-virtual {v11, v5, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v1

    div-float v1, v1, v26

    add-float v18, v0, v1

    sub-float v0, v3, v27

    iget-object v12, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {v11, v5, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v1

    div-float v1, v1, v26

    sub-float v20, v0, v1

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n:Lk4/d;

    move-object/from16 v23, v0

    invoke-virtual/range {v12 .. v25}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->L(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;Lk4/d;IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move v12, v6

    move/from16 v6, p6

    move v13, v7

    move/from16 v7, p7

    move-object/from16 v8, p9

    move v14, v9

    move/from16 v9, v27

    move-object v15, v10

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->o0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Split area cant be VERTICAL spliced without 2 children split areas"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move/from16 v13, p6

    move v3, v14

    const/4 v15, 0x0

    move v14, v12

    move v12, v6

    sget-object v2, Lj4/b;->None:Lj4/b;

    if-ne v1, v2, :cond_7

    iput-object v15, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    iput-object v15, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    iget-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v1, :cond_6

    iput v14, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iput v13, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iput v12, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iput v3, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    if-eqz p13, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    :cond_5
    iget-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v7, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->o:Lk4/b;

    invoke-interface/range {p11 .. p11}, Lk4/d;->isClosed()Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-virtual/range {v0 .. v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->U0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lk4/b;Z)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Split area cant be NONE spliced without a panel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_8

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V

    :cond_8
    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V

    :cond_9
    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_a

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V

    :cond_a
    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_b

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V

    :cond_b
    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->serializedCloseDirection:Lj4/a;

    if-eqz v0, :cond_c

    iput-object v15, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->serializedCloseDirection:Lj4/a;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$f;

    invoke-direct {v1, v11, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lj4/a;)V

    invoke-static {v1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public final T(Landroid/content/Context;Li4/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "editor3DScreen"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    sget-object v1, Lj4/a;->CloseUp:Lj4/a;

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v1, Lj4/b;->Horizontal:Lj4/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i0(Landroid/content/Context;Li4/a;)F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    :goto_0
    div-float p2, v2, p2

    mul-float/2addr p1, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e0(Landroid/content/Context;Li4/a;)F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    goto :goto_0

    :goto_1
    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    sub-float/2addr v2, p1

    invoke-static {p1, p2, v2}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    goto :goto_4

    :cond_1
    sget-object v1, Lj4/a;->CloseDown:Lj4/a;

    if-ne v0, v1, :cond_3

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v1, Lj4/b;->Horizontal:Lj4/b;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i0(Landroid/content/Context;Li4/a;)F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    :goto_2
    div-float p2, v2, p2

    mul-float/2addr p1, p2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e0(Landroid/content/Context;Li4/a;)F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    goto :goto_2

    :goto_3
    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    sub-float/2addr v2, p1

    invoke-static {p1, p2, v2}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    goto :goto_4

    :cond_3
    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    :goto_4
    return-void
.end method

.method public final U(Li4/a;Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editor3DScreen",
            "context"
        }
    .end annotation

    const/16 v0, 0xc

    int-to-float v0, v0

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    float-to-int v0, p2

    invoke-static {v0}, LNc/b;->J0(I)Z

    move-result v1

    if-nez v1, :cond_0

    int-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v1, Lj4/b;->Horizontal:Lj4/b;

    if-ne v0, v1, :cond_1

    iget p1, p1, Li4/a;->a:I

    :goto_0
    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2

    :cond_1
    iget p1, p1, Li4/a;->b:I

    goto :goto_0
.end method

.method public final V(Li4/a;Landroid/content/Context;I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editor3DScreen",
            "context",
            "pixels"
        }
    .end annotation

    iget p1, p1, Li4/a;->a:I

    div-int/2addr p3, p1

    int-to-float p1, p3

    return p1
.end method

.method public final W(Li4/a;Landroid/content/Context;I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editor3DScreen",
            "context",
            "pixels"
        }
    .end annotation

    int-to-float p3, p3

    invoke-static {p3, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    float-to-int p3, p2

    invoke-static {p3}, LNc/b;->J0(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    :cond_0
    iget p1, p1, Li4/a;->a:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method public final X(Li4/a;Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editor3DScreen",
            "context"
        }
    .end annotation

    const/4 v0, 0x2

    int-to-float v0, v0

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    float-to-int v0, p2

    invoke-static {v0}, LNc/b;->J0(I)Z

    move-result v1

    if-nez v1, :cond_0

    int-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v1, Lj4/b;->Horizontal:Lj4/b;

    if-ne v0, v1, :cond_1

    iget p1, p1, Li4/a;->a:I

    :goto_0
    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2

    :cond_1
    iget p1, p1, Li4/a;->b:I

    goto :goto_0
.end method

.method public final Y()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v1, Lj4/b;->Horizontal:Lj4/b;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    sget-object v1, Lj4/a;->CloseDown:Lj4/a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->E()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->D(Lj4/a;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lj4/a;->CloseUp:Lj4/a;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->D(Lj4/a;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->E()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->E()V

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->E()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final Z(Landroid/widget/FrameLayout;Lk4/d;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "splitAreaToParentSplitArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v1, Lj4/b;->None:Lj4/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->l()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->l()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->h(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ll4/a;->b(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ll4/c;->b(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->E()V

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-interface {p2, p1}, Lk4/d;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    return v3

    :cond_6
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->h(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ll4/a;->b(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    :cond_8
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ll4/c;->b(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    :cond_9
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->E()V

    :cond_a
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-interface {p2, p1}, Lk4/d;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    return v3

    :cond_b
    if-nez v0, :cond_11

    if-nez v1, :cond_11

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->h(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_c
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->h(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_d
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Ll4/a;->b(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    :cond_e
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ll4/c;->b(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    :cond_f
    invoke-interface {p2, v4}, Lk4/d;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    return v3

    :cond_10
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    return v2

    :cond_12
    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :cond_13
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Ll4/a;->b(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    :cond_14
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Ll4/c;->b(Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    :cond_15
    invoke-interface {p2, v4}, Lk4/d;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    return v3
.end method

.method public final a0(FLandroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v1, Lj4/b;->Horizontal:Lj4/b;

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    invoke-virtual {p0, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i0(Landroid/content/Context;Li4/a;)F

    move-result p2

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    :goto_0
    div-float v0, v2, v0

    mul-float/2addr p2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    invoke-virtual {p0, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e0(Landroid/content/Context;Li4/a;)F

    move-result p2

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    goto :goto_0

    :goto_1
    sub-float/2addr v2, p2

    invoke-static {p2, p1, v2}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_2
    return-void
.end method

.method public c(Lo4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->c(Lo4/e;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->c(Lo4/e;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->c(Lo4/e;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k(Lo4/e;)V

    :cond_2
    return-void
.end method

.method public final c0()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e0(Landroid/content/Context;Li4/a;)F

    move-result v0

    return v0
.end method

.method public d(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "sx",
            "sy",
            "sw",
            "sh",
            "editor3DScreen",
            "panelsControllerListener"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v11, p8

    move-object/from16 v10, p9

    move-object/from16 v9, p10

    iput v13, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->x:F

    iput v14, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->y:F

    iput v15, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    iput v11, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    move-object/from16 v8, p2

    iput-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->j:Landroid/app/Activity;

    iput-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v2, Lj4/b;->Horizontal:Lj4/b;

    const/high16 v16, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v1, v15

    invoke-virtual {v0, v10, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v17, v1, v2

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v17

    move/from16 v9, p8

    move-object v14, v10

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->d(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    add-float v1, v13, v17

    invoke-virtual {v0, v14, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    add-float v6, v1, v2

    sub-float v8, v15, v17

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->d(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Split area cant be HORIZONTAL spliced without 2 children split areas"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v14, v10

    sget-object v2, Lj4/b;->Vertical:Lj4/b;

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    move/from16 v11, p8

    mul-float/2addr v1, v11

    invoke-virtual {v0, v14, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v17, v1, v2

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, v17

    move-object/from16 v10, p9

    move v14, v11

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->d(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    move/from16 v8, p6

    add-float v1, v8, v17

    invoke-virtual {v0, v10, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    add-float v7, v1, v2

    sub-float v9, v14, v17

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-object/from16 v2, p1

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->d(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Split area cant be VERTICAL spliced without 2 children split areas"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move/from16 v8, p6

    move-object v10, v14

    move/from16 v14, p8

    sget-object v2, Lj4/b;->None:Lj4/b;

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v1, :cond_a

    iput v13, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iput v8, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iput v15, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iput v14, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->l:Lk4/d;

    invoke-interface {v1}, Lk4/d;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c0()F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    cmpl-float v1, v14, v1

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/high16 v5, 0x40800000    # 4.0f

    if-lez v1, :cond_7

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/high16 v6, 0x40400000    # 3.0f

    if-nez v1, :cond_4

    new-instance v1, Lm4/b;

    div-float v7, v15, v5

    add-float/2addr v7, v13

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d0(I)F

    move-result v9

    add-float/2addr v9, v8

    div-float v10, v15, v16

    div-float v11, v14, v6

    invoke-direct {v1, v7, v9, v10, v11}, Lm4/b;-><init>(FFFF)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-object/from16 v7, p10

    invoke-interface {v7, v1}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    goto :goto_0

    :cond_4
    move-object/from16 v7, p10

    :goto_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-nez v1, :cond_5

    new-instance v1, Lm4/b;

    div-float v9, v15, v5

    add-float/2addr v9, v13

    add-float v10, v8, v14

    div-float v6, v14, v6

    sub-float/2addr v10, v6

    div-float v11, v15, v16

    invoke-direct {v1, v9, v10, v11, v6}, Lm4/b;-><init>(FFFF)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-interface {v7, v1}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g0()F

    move-result v1

    mul-float/2addr v1, v2

    cmpl-float v1, v15, v1

    if-lez v1, :cond_b

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-nez v1, :cond_6

    new-instance v1, Lm4/b;

    div-float v2, v14, v5

    add-float/2addr v2, v8

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d0(I)F

    move-result v6

    div-float v6, v6, v16

    add-float/2addr v2, v6

    div-float v6, v15, v5

    div-float v9, v14, v16

    invoke-direct {v1, v13, v2, v6, v9}, Lm4/b;-><init>(FFFF)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-interface {v7, v1}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_6
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-nez v1, :cond_b

    new-instance v1, Lm4/b;

    add-float v2, v13, v15

    div-float v6, v15, v5

    sub-float/2addr v2, v6

    div-float v5, v14, v5

    add-float/2addr v5, v8

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d0(I)F

    move-result v4

    div-float v4, v4, v16

    add-float/2addr v5, v4

    div-float v4, v14, v16

    invoke-direct {v1, v2, v5, v6, v4}, Lm4/b;-><init>(FFFF)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-interface {v7, v1}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v7, p10

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g0()F

    move-result v1

    mul-float/2addr v1, v2

    cmpl-float v1, v15, v1

    if-lez v1, :cond_9

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-nez v1, :cond_8

    new-instance v1, Lm4/b;

    div-float v2, v14, v5

    add-float/2addr v2, v8

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d0(I)F

    move-result v6

    div-float v6, v6, v16

    add-float/2addr v2, v6

    div-float v6, v15, v5

    div-float v9, v14, v16

    invoke-direct {v1, v13, v2, v6, v9}, Lm4/b;-><init>(FFFF)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-interface {v7, v1}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_8
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-nez v1, :cond_b

    new-instance v1, Lm4/b;

    add-float v2, v13, v15

    div-float v6, v15, v5

    sub-float/2addr v2, v6

    div-float v5, v14, v5

    add-float/2addr v5, v8

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d0(I)F

    move-result v4

    div-float v4, v4, v16

    add-float/2addr v5, v4

    div-float v4, v14, v16

    invoke-direct {v1, v2, v5, v6, v4}, Lm4/b;-><init>(FFFF)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-interface {v7, v1}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-nez v1, :cond_b

    new-instance v1, Lm4/b;

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d0(I)F

    move-result v2

    add-float/2addr v2, v8

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d0(I)F

    move-result v4

    sub-float v4, v14, v4

    invoke-direct {v1, v13, v2, v15, v4}, Lm4/b;-><init>(FFFF)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-interface {v7, v1}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    goto :goto_1

    :cond_a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Split area cant be NONE spliced without a panel"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_1
    return-void
.end method

.method public final d0(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "incrementDP"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f0(Landroid/content/Context;Li4/a;I)F

    move-result p1

    return p1
.end method

.method public e(Lo4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->e(Lo4/e;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->e(Lo4/e;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->e(Lo4/e;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n(Lo4/e;)V

    :cond_2
    return-void
.end method

.method public final e0(Landroid/content/Context;Li4/a;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "editor3DScreen"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f0(Landroid/content/Context;Li4/a;I)F

    move-result p1

    return p1
.end method

.method public f(Landroid/widget/FrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll4/a;->a(Landroid/widget/FrameLayout;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ll4/c;->a(Landroid/widget/FrameLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->f(Landroid/widget/FrameLayout;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->f(Landroid/widget/FrameLayout;)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v(Landroid/widget/FrameLayout;)V

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_7
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_8
    return-void
.end method

.method public final f0(Landroid/content/Context;Li4/a;I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "editor3DScreen",
            "incrementDP"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    int-to-float p3, p3

    invoke-static {p3, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p2, Li4/a;->b:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public final g0()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i0(Landroid/content/Context;Li4/a;)F

    move-result v0

    return v0
.end method

.method public h(Landroid/widget/FrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll4/a;->b(Landroid/widget/FrameLayout;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ll4/c;->b(Landroid/widget/FrameLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->h(Landroid/widget/FrameLayout;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->h(Landroid/widget/FrameLayout;)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A(Landroid/widget/FrameLayout;)V

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_7
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_8
    return-void
.end method

.method public final h0(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "incrementDP"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->j0(Landroid/content/Context;Li4/a;I)F

    move-result p1

    return p1
.end method

.method public i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "sx",
            "sy",
            "sw",
            "sh",
            "editor3DScreen",
            "panelsControllerListener"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p3

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v11, p8

    move-object/from16 v10, p9

    move-object/from16 v9, p10

    :try_start_0
    iput v13, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->x:F

    iput v14, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->y:F

    iput v15, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    iput v11, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    iput-object v10, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v8, Lj4/b;->Horizontal:Lj4/b;

    const/4 v7, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    if-ne v1, v8, :cond_1

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_0

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_0

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v1, v15

    invoke-virtual {v12, v10, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v17, v1, v2

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v8, v7

    move/from16 v7, p6

    move/from16 v8, v17

    move/from16 v9, p8

    move-object v14, v10

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    add-float v1, v13, v17

    invoke-virtual {v12, v14, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    add-float v6, v1, v2

    sub-float v8, v15, v17

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Split area cant be HORIZONTAL spliced without 2 children split areas"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v14, v10

    sget-object v11, Lj4/b;->Vertical:Lj4/b;

    if-ne v1, v11, :cond_3

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_2

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_2

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    move/from16 v11, p8

    mul-float/2addr v1, v11

    invoke-virtual {v12, v14, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v17, v1, v2

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, v17

    move-object/from16 v10, p9

    move v14, v11

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    move/from16 v10, p6

    move-object/from16 v11, p9

    add-float v1, v10, v17

    invoke-virtual {v12, v11, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    add-float v7, v1, v2

    sub-float v9, v14, v17

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    goto/16 :goto_4

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Split area cant be VERTICAL spliced without 2 children split areas"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move/from16 v10, p6

    move-object v9, v14

    move/from16 v14, p8

    sget-object v2, Lj4/b;->None:Lj4/b;

    if-ne v1, v2, :cond_10

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v1, :cond_f

    iput v13, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iput v10, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iput v15, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iput v14, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V

    invoke-interface/range {p10 .. p10}, Li4/e;->v()Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v7

    invoke-interface/range {p10 .. p10}, Li4/e;->w()Landroid/graphics/Point;

    move-result-object v6

    if-eqz v7, :cond_10

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/z;->c(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    iput-object v11, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    invoke-virtual {v2, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v2, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    const/4 v4, 0x0

    iput-object v4, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput v5, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v1, v14

    invoke-virtual {v12, v9, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v17, v1, v2

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v19, v6

    move/from16 v6, p5

    move-object/from16 v20, v7

    move/from16 v7, p6

    move-object/from16 v21, v8

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, v17

    move-object v13, v11

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v1, v15

    move-object/from16 v11, p9

    invoke-virtual {v12, v11, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v10, v1, v2

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object v15, v11

    move/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->o0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ll4/a;->h()V

    :cond_4
    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ll4/c;->h()V

    goto :goto_0

    :cond_5
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object v15, v9

    move-object v13, v11

    :cond_6
    :goto_0
    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v1

    move-object/from16 v11, v19

    invoke-static {v1, v11}, Lcom/itsmagic/engine/Activities/Editor/Utils/z;->c(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {v20 .. v20}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    iput-object v13, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v2, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    move-object/from16 v13, v20

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    const/4 v10, 0x0

    iput-object v10, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/high16 v9, 0x3f000000    # 0.5f

    iput v9, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v1, v14

    invoke-virtual {v12, v15, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v17, v1, v2

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object v14, v10

    move/from16 v10, v17

    move-object v14, v11

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float v1, v1, p7

    invoke-virtual {v12, v15, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->o0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ll4/a;->h()V

    :cond_7
    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ll4/c;->h()V

    goto :goto_2

    :cond_8
    move-object v14, v11

    :goto_1
    move-object/from16 v13, v20

    goto :goto_2

    :cond_9
    move-object/from16 v14, v19

    goto :goto_1

    :cond_a
    :goto_2
    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/itsmagic/engine/Activities/Editor/Utils/z;->c(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    move-object/from16 v11, v21

    iput-object v11, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v2, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    const/4 v1, 0x0

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float v1, v1, p7

    invoke-virtual {v12, v15, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v17, v1, v2

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, v17

    move-object/from16 v22, v11

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->l0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float v1, v1, p7

    invoke-virtual {v12, v15, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->m0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ll4/a;->h()V

    :cond_b
    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ll4/c;->h()V

    goto :goto_3

    :cond_c
    move-object/from16 v22, v21

    :cond_d
    :goto_3
    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/itsmagic/engine/Activities/Editor/Utils/z;->c(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    move-object/from16 v1, v22

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v2, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    const/4 v1, 0x0

    iput-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float v1, v1, p7

    invoke-virtual {v12, v15, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->l0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget v1, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float v1, v1, p7

    invoke-virtual {v12, v15, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    div-float v2, v2, v16

    sub-float v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->m0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ll4/a;->h()V

    :cond_e
    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ll4/c;->h()V

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Split area cant be NONE spliced without a panel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_4
    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-object/from16 v1, p10

    if-eqz v0, :cond_12

    if-eqz v1, :cond_11

    invoke-interface {v1, v0}, Li4/e;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->q:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_12
    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_14

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Li4/e;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    :cond_13
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->s:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_14
    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_16

    if-eqz v1, :cond_15

    invoke-interface {v1, v0}, Li4/e;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    :cond_15
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_16
    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_18

    if-eqz v1, :cond_17

    invoke-interface {v1, v0}, Li4/e;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->r:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    :goto_6
    return-void
.end method

.method public final i0(Landroid/content/Context;Li4/a;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "editor3DScreen"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->j0(Landroid/content/Context;Li4/a;I)F

    move-result p1

    return p1
.end method

.method public j(Lo4/b;Li4/e;)V
    .locals 1
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->j(Lo4/b;Li4/e;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->j(Lo4/b;Li4/e;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D(Lo4/b;Li4/e;)V

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ll4/a;->c()V

    :cond_3
    return-void
.end method

.method public final j0(Landroid/content/Context;Li4/a;I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "editor3DScreen",
            "incrementDP"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    int-to-float p3, p3

    invoke-static {p3, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p2, Li4/a;->a:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public k(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->B(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->B(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->k(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->k(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public k0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPanel"
        }
    .end annotation

    move-object/from16 v11, p0

    iget v12, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->x:F

    iget v13, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->y:F

    iget v14, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    iget v15, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v16

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    sget-object v1, Lj4/b;->Vertical:Lj4/b;

    iput-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v2, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->C0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    const/4 v0, 0x0

    iput-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    iget-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    iget-object v2, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->j:Landroid/app/Activity;

    iget-object v3, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i:Landroid/content/Context;

    iget-object v8, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    iget v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v0, v15

    invoke-virtual {v11, v8, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v4

    const/high16 v17, 0x40000000    # 2.0f

    div-float v4, v4, v17

    sub-float v9, v0, v4

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move v5, v12

    move v6, v13

    move v7, v15

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->n0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget-object v1, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    iget-object v2, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->j:Landroid/app/Activity;

    iget-object v3, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->i:Landroid/content/Context;

    iget-object v8, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->f:Li4/a;

    iget v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->c:F

    mul-float/2addr v14, v0

    invoke-virtual {v11, v8, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v0

    div-float v0, v0, v17

    sub-float v9, v14, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->o0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V

    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll4/a;->h()V

    :cond_0
    iget-object v0, v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ll4/c;->h()V

    :cond_1
    return-void
.end method

.method public l()Z
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    sget-object v1, Lj4/b;->None:Lj4/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->l()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public final l0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "sx",
            "sy",
            "sh",
            "editor3DScreen",
            "w1",
            "stepLerp"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p8

    add-float v1, p5, p9

    invoke-virtual {p0, v11, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v6, v1, v2

    invoke-virtual {p0, v11, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v8

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-nez v1, :cond_0

    new-instance v1, Ll4/a;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->k:Lp4/a;

    invoke-direct {v1, v2}, Ll4/a;-><init>(Lp4/a;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    sget-object v10, Ll4/a$a;->Horizontal:Ll4/a$a;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Ll4/a;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLl4/a$a;Li4/a;Z)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->m()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->m()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ll4/a;->d()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ll4/c;->c()V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Z

    :cond_4
    return-void
.end method

.method public final m0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "sx",
            "sy",
            "sh",
            "editor3DScreen",
            "w1",
            "stepLerp"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p8

    add-float v1, p5, p9

    invoke-virtual {p0, v11, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v6, v1, v2

    invoke-virtual {p0, v11, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v8

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-nez v1, :cond_0

    new-instance v1, Ll4/c;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->k:Lp4/a;

    invoke-direct {v1, v2}, Ll4/c;-><init>(Lp4/a;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    sget-object v10, Ll4/c$a;->Horizontal:Ll4/c$a;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Ll4/c;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLl4/c$a;Li4/a;Z)V

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final n0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "sx",
            "sy",
            "sw",
            "editor3DScreen",
            "h1",
            "stepLerp"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p8

    add-float v1, p6, p9

    invoke-virtual {p0, v11, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v7, v1, v2

    invoke-virtual {p0, v11, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->U(Li4/a;Landroid/content/Context;)F

    move-result v9

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-nez v1, :cond_0

    new-instance v1, Ll4/a;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->k:Lp4/a;

    invoke-direct {v1, v2}, Ll4/a;-><init>(Lp4/a;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    sget-object v10, Ll4/a$a;->Vertical:Ll4/a$a;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v11, p8

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Ll4/a;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLl4/a$a;Li4/a;Z)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->o()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->o()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h0()V

    :cond_2
    return-void
.end method

.method public final o0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFLi4/a;FZ)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "sx",
            "sy",
            "sw",
            "editor3DScreen",
            "h1",
            "stepLerp"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p8

    add-float v1, p6, p9

    invoke-virtual {p0, v11, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v7, v1, v2

    invoke-virtual {p0, v11, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->X(Li4/a;Landroid/content/Context;)F

    move-result v9

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-nez v1, :cond_0

    new-instance v1, Ll4/c;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->k:Lp4/a;

    invoke-direct {v1, v2}, Ll4/c;-><init>(Lp4/a;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    sget-object v10, Ll4/c$a;->Vertical:Ll4/c$a;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v11, p8

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Ll4/c;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLl4/c$a;Li4/a;Z)V

    return-void
.end method

.method public p(Lo4/b;Li4/e;)V
    .locals 1
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->p(Lo4/b;Li4/e;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->p(Lo4/b;Li4/e;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k0(Lo4/b;Li4/e;)V

    :cond_2
    return-void
.end method

.method public p0(Lj4/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeDirection"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->serializedCloseDirection:Lj4/a;

    return-object p0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->q()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->q()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->l0()V

    :cond_2
    return-void
.end method

.method public r(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "jsonObj"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->r(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public s()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->s()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m0()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->s()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->s()V

    :cond_2
    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->serializedCloseDirection:Lj4/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->t()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->t()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n0()V

    :cond_2
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->u()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->u()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o0()V

    :cond_2
    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p0()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->v()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->v()V

    :cond_2
    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll4/c;->e()V

    :cond_0
    return-void
.end method

.method public x(Lk4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->x(Lk4/c;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->x(Lk4/c;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ll4/a;->f(Lk4/c;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ll4/c;->f(Lk4/c;)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->r0(Lk4/c;)V

    :cond_4
    return-void
.end method

.method public y(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v(Landroid/widget/FrameLayout;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->y(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Ll4/a;->b(Landroid/widget/FrameLayout;)V

    :cond_1
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Ll4/c;->b(Landroid/widget/FrameLayout;)V

    :cond_2
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->f(Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->l:Lk4/d;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-interface {p1, v0}, Lk4/d;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->y(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Ll4/a;->b(Landroid/widget/FrameLayout;)V

    :cond_4
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->d:Ll4/a;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Ll4/c;->b(Landroid/widget/FrameLayout;)V

    :cond_5
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->e:Ll4/c;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->f(Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->l:Lk4/d;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-interface {p1, v0}, Lk4/d;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    :cond_6
    return v1
.end method

.method public z(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->z(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->z(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
