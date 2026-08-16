.class LJAVARuntime/SpatialObject$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/SpatialObject$1;->getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/SpatialObject$1;

.field final synthetic val$classInstance:Ljava/lang/Object;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$getSetterListener:LP8/n;


# direct methods
.method public constructor <init>(LJAVARuntime/SpatialObject$1;Ljava/lang/reflect/Field;Ljava/lang/Object;LP8/n;)V
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
            "val$field",
            "val$classInstance",
            "val$getSetterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/SpatialObject$1$1;->this$0:LJAVARuntime/SpatialObject$1;

    iput-object p2, p0, LJAVARuntime/SpatialObject$1$1;->val$field:Ljava/lang/reflect/Field;

    iput-object p3, p0, LJAVARuntime/SpatialObject$1$1;->val$classInstance:Ljava/lang/Object;

    iput-object p4, p0, LJAVARuntime/SpatialObject$1$1;->val$getSetterListener:LP8/n;

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
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LJAVARuntime/SpatialObject$1$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v2, p0, LJAVARuntime/SpatialObject$1$1;->val$classInstance:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/SpatialObject;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_0
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

    :try_start_0
    iget-object v0, p0, LJAVARuntime/SpatialObject$1$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v1, p0, LJAVARuntime/SpatialObject$1$1;->val$classInstance:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LJAVARuntime/SpatialObject$1$1;->val$getSetterListener:LP8/n;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    invoke-interface {v0, p1}, LP8/n;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/SpatialObject$1$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v0, p0, LJAVARuntime/SpatialObject$1$1;->val$classInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LJAVARuntime/SpatialObject$1$1;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, LP8/n;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
