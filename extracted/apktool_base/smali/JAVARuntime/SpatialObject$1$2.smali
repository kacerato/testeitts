.class LJAVARuntime/SpatialObject$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/SpatialObject$1;->getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/SpatialObject$1;

.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$getSetterListener:LP8/n;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(LJAVARuntime/SpatialObject$1;[Ljava/lang/Object;ILP8/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$array",
            "val$position",
            "val$getSetterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/SpatialObject$1$2;->this$0:LJAVARuntime/SpatialObject$1;

    iput-object p2, p0, LJAVARuntime/SpatialObject$1$2;->val$array:[Ljava/lang/Object;

    iput p3, p0, LJAVARuntime/SpatialObject$1$2;->val$position:I

    iput-object p4, p0, LJAVARuntime/SpatialObject$1$2;->val$getSetterListener:LP8/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSelect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2

    iget-object v0, p0, LJAVARuntime/SpatialObject$1$2;->val$array:[Ljava/lang/Object;

    iget v1, p0, LJAVARuntime/SpatialObject$1$2;->val$position:I

    aget-object v0, v0, v1

    check-cast v0, LJAVARuntime/SpatialObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraTittle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/SpatialObject$1$2;->val$array:[Ljava/lang/Object;

    iget v1, p0, LJAVARuntime/SpatialObject$1$2;->val$position:I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, LJAVARuntime/SpatialObject$1$2;->val$getSetterListener:LP8/n;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    invoke-interface {v0, p1}, LP8/n;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/SpatialObject$1$2;->val$array:[Ljava/lang/Object;

    iget v0, p0, LJAVARuntime/SpatialObject$1$2;->val$position:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget-object p1, p0, LJAVARuntime/SpatialObject$1$2;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, LP8/n;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
