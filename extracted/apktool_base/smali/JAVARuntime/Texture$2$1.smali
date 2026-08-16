.class LJAVARuntime/Texture$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Texture$2;->getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Texture$2;

.field final synthetic val$classInstance:Ljava/lang/Object;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$finalVar:LJAVARuntime/Texture;

.field final synthetic val$getSetterListener:LP8/n;


# direct methods
.method public constructor <init>(LJAVARuntime/Texture$2;Ljava/lang/reflect/Field;Ljava/lang/Object;LP8/n;LJAVARuntime/Texture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$field",
            "val$classInstance",
            "val$getSetterListener",
            "val$finalVar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Texture$2$1;->this$0:LJAVARuntime/Texture$2;

    iput-object p2, p0, LJAVARuntime/Texture$2$1;->val$field:Ljava/lang/reflect/Field;

    iput-object p3, p0, LJAVARuntime/Texture$2$1;->val$classInstance:Ljava/lang/Object;

    iput-object p4, p0, LJAVARuntime/Texture$2$1;->val$getSetterListener:LP8/n;

    iput-object p5, p0, LJAVARuntime/Texture$2$1;->val$finalVar:LJAVARuntime/Texture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Texture$2$1;->val$finalVar:LJAVARuntime/Texture;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, LJAVARuntime/Texture;->instance:Lub/p;

    instance-of v2, v0, Lub/g;

    if-eqz v2, :cond_0

    check-cast v0, Lub/g;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {p1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v0, p0, LJAVARuntime/Texture$2$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v2, p0, LJAVARuntime/Texture$2$1;->val$classInstance:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LJAVARuntime/Texture$2$1;->val$getSetterListener:LP8/n;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, LP8/n;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, LJAVARuntime/Texture$2$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v0, p0, LJAVARuntime/Texture$2$1;->val$classInstance:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LJAVARuntime/Texture$2$1;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, LP8/n;->a(Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, LJAVARuntime/Texture$2$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v0, p0, LJAVARuntime/Texture$2$1;->val$classInstance:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LJAVARuntime/Texture$2$1;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, LP8/n;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method
