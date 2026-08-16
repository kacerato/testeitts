.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$h;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$j;
    }
.end annotation


# static fields
.field public static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field private editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Lp4/c;

.field public i:Li4/e;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Z

.field public m:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

.field public p:F

.field public serializedComponentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->q:Ljava/util/List;

    const-class v0, Lt4/b;

    const-class v1, Lp4/b;

    const-class v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->l:Z

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->None:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p:F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->l:Z

    .line 11
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m:Z

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->None:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p:F

    .line 15
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz p1, :cond_0

    .line 16
    iput-object p0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->B:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedComponentType"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k:I

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->l:Z

    .line 20
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m:Z

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->None:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p:F

    .line 24
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->serializedComponentType:Ljava/lang/String;

    return-void
.end method

.method public static E(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "serializedComponentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "serializedComponentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->q:Ljava/util/List;

    monitor-enter v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    :goto_0
    :try_start_2
    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;

    invoke-interface {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e0(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v5, v0

    :cond_0
    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->F(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static F(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const-string v0, "editorPanel"

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    :try_start_0
    const-class v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e0(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_1

    move-object v1, v2

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    iget-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->r0()Z

    move-result p0

    if-nez p0, :cond_2

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    :cond_2
    iget-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez p0, :cond_3

    return-object v2

    :cond_3
    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic r(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-object p0
.end method

.method public static synthetic s(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic t(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->a:Landroid/view/View;

    return-object p0
.end method

.method public static u(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentInterface"
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;->b()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    const-class v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eq v0, v1, :cond_4

    const-class v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->q:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;

    invoke-interface {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Serialized name already used by other type!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Type serialized name can\'t be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Component class type needs to extends Panel.class"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Component class type can\'t be == Panel.class"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Component class type can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "component interface can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j()V

    :cond_0
    return-void
.end method

.method public B(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C()Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    return-object v0
.end method

.method public D(Landroid/widget/FrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    :cond_1
    return-void
.end method

.method public G(Landroid/widget/FrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public H(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
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
            "leftBar",
            "rightBar",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_2

    const/4 p4, -0x1

    :try_start_0
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    if-eq p3, p4, :cond_0

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eq p1, p4, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->f:Landroid/widget/ImageView;

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->None:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    :cond_2
    return-void
.end method

.method public I(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
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
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->f:Landroid/widget/ImageView;

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->None:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    :cond_1
    return-void
.end method

.method public J(Lo4/b;Li4/e;)V
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    iput-object p2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->z(Lo4/b;)V

    :cond_0
    return-void
.end method

.method public K()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public L()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp4/c;->c()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-object v0
.end method

.method public N()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lp4/c;->b()F

    move-result v0

    return v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->a:Landroid/view/View;

    return-object v0
.end method

.method public R()Lo4/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q:Lo4/d;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lp4/c;->getW()F

    move-result v0

    return v0
.end method

.method public U()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lp4/c;->getX()F

    move-result v0

    return v0
.end method

.method public V()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lp4/c;->getY()F

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m:Z

    return v0
.end method

.method public X()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p0()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public Y()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp4/c;->e()V

    :cond_0
    return-void
.end method

.method public Z()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x0()V

    :cond_0
    return-void
.end method

.method public a0(Lo4/b;Li4/e;)V
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    iput-object p2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A0(Lo4/b;)V

    :cond_0
    return-void
.end method

.method public b0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->B0()V

    return-void
.end method

.method public c0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iput-object p2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    iput-object p3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->C0()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->a:Landroid/view/View;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iput-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D0(Landroid/view/View;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->a:Landroid/view/View;

    return-object p1
.end method

.method public d0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iput-object p2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    iput-object p3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E0()V

    return-void
.end method

.method public e0(Ljava/lang/String;Lorg/json/JSONObject;)Z
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

    const/4 p1, 0x1

    return p1
.end method

.method public f0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen",
            "parent"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;

    invoke-direct {p1, p0, p4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Landroid/widget/FrameLayout;)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iput-object p2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    iput-object p3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->H0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U()Lo4/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U()Lo4/c;

    move-result-object p1

    invoke-interface {p1}, Lo4/c;->a()V

    :cond_0
    return-void
.end method

.method public g0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->H0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U()Lo4/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U()Lo4/c;

    move-result-object v0

    invoke-interface {v0}, Lo4/c;->a()V

    :cond_0
    return-void
.end method

.method public h0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen",
            "parent"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->a:Landroid/view/View;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->a:Landroid/view/View;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iput-object p2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    iput-object p3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    return-void
.end method

.method public i0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->I0()V

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J0()V

    :cond_0
    return-void
.end method

.method public k0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K0()V

    :cond_0
    return-void
.end method

.method public l0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L0()V

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M0()V

    :cond_0
    return-void
.end method

.method public n0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iput-object p2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    iput-object p3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N0()V

    return-void
.end method

.method public o0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp4/c;->close()V

    :cond_0
    return-void
.end method

.method public p0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
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
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const p2, 0x7f070200

    invoke-static {p3, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->l:Z

    return-void
.end method

.method public q0(Ln4/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O0(Ln4/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowCloseX"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public s0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen",
            "parent"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k0()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {p4, p1, p2}, LVc/e;->r(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-static {p4, p1}, LVc/e;->l(Landroid/view/View;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public t0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    return-void
.end method

.method public u0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiInstancing"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c1(Z)V

    :cond_0
    return-void
.end method

.method public v(Lo4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e(Lo4/e;)V

    :cond_0
    return-void
.end method

.method public v0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l1()V

    return-void
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f()Z

    move-result v0

    return v0
.end method

.method public w0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
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
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->l:Z

    return-void
.end method

.method public x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;
    .locals 0
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
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelToPanelArea",
            "rightLeft"
        }
    .end annotation

    if-eqz p7, :cond_0

    const p2, 0x7f0c0085

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0086

    :goto_0
    const/4 p5, 0x0

    invoke-virtual {p4, p2, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    invoke-static {p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    if-eqz p6, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$d;

    invoke-direct {p2, p0, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Lp4/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$e;

    invoke-direct {p2, p0, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Lp4/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    const p2, 0x7f09025a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->HorizontalBar:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public x0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;Li4/e;)V
    .locals 5
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "x",
            "y",
            "w",
            "h",
            "ax",
            "ay",
            "aw",
            "ah",
            "panelContentLayout",
            "fullPanelArea",
            "panelsControllerListener"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p17

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move v4, p7

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->b:F

    move v4, p8

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c:F

    move v4, p9

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d:F

    move v4, p10

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e:F

    move/from16 v4, p11

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f:F

    move/from16 v4, p12

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->g:F

    move/from16 v4, p13

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->h:F

    move/from16 v4, p14

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i:F

    move-object v4, p5

    iput-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    move-object v4, p6

    iput-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    iget-object v4, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i1(Z)V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-object v4, p2

    iput-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->r:Landroid/widget/FrameLayout;

    move-object/from16 v4, p15

    iput-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s:Landroid/widget/FrameLayout;

    move-object/from16 v4, p16

    iput-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->t:Landroid/view/View;

    iget-object v4, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    iput-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A:Lp4/c;

    iput-object v0, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->B:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iput-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    iput-object v2, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    iget-object v2, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i0()V

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    :cond_0
    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    const/16 v4, 0x19

    invoke-static {v2, v4}, LTc/b;->Y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    const-string v3, "Unnamed panel"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->d:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k:I

    if-eq v2, v3, :cond_4

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->d:Landroid/view/View;

    const v4, 0x7f070143

    invoke-static {p4, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->d:Landroid/view/View;

    invoke-static {v3, p4, v2}, LVc/e;->u(Landroid/view/View;Landroid/content/Context;I)V

    iput v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k:I

    goto :goto_1

    :cond_3
    iget v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k:I

    if-eq v2, v3, :cond_4

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->d:Landroid/view/View;

    const v4, 0x7f070115

    invoke-static {p4, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->d:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, p4, v4}, LVc/e;->u(Landroid/view/View;Landroid/content/Context;I)V

    iput v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k:I

    :cond_4
    :goto_1
    return-void
.end method

.method public y(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;)Landroid/view/View;
    .locals 3
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
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelToPanelArea"
        }
    .end annotation

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    const v0, 0x7f0c0081

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->d:Landroid/view/View;

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$a;

    invoke-direct {v1, p0, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Lp4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$b;

    invoke-direct {v1, p0, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Lp4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, LTc/b;->Y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->j:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g:Landroid/widget/ImageView;

    if-eqz p6, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;

    invoke-direct {v1, p0, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Lp4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->w0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->TopBar:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    return-object p1
.end method

.method public y0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 3
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "x",
            "y",
            "w",
            "h",
            "ax",
            "ay",
            "aw",
            "ah",
            "panelContentLayout",
            "fullPanelArea"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move v2, p7

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->b:F

    move v2, p8

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c:F

    move v2, p9

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d:F

    move v2, p10

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e:F

    move v2, p11

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f:F

    move v2, p12

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->g:F

    move/from16 v2, p13

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->h:F

    move/from16 v2, p14

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i:F

    move-object v2, p5

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    move-object v2, p6

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    move-object v2, p2

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->r:Landroid/widget/FrameLayout;

    move-object/from16 v2, p15

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s:Landroid/widget/FrameLayout;

    move-object/from16 v2, p16

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->t:Landroid/view/View;

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i1(Z)V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    :cond_0
    iget v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p:F

    invoke-static {}, LK8/d;->e()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p:F

    :cond_1
    return-void
.end method

.method public z(Lo4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->editorPanel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->h(Lo4/e;)V

    :cond_0
    return-void
.end method
