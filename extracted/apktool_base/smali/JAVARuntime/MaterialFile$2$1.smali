.class LJAVARuntime/MaterialFile$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/MaterialFile$2;->getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/MaterialFile$2;

.field final synthetic val$classInstance:Ljava/lang/Object;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$getSetterListener:LP8/n;


# direct methods
.method public constructor <init>(LJAVARuntime/MaterialFile$2;Ljava/lang/reflect/Field;Ljava/lang/Object;LP8/n;)V
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

    iput-object p1, p0, LJAVARuntime/MaterialFile$2$1;->this$0:LJAVARuntime/MaterialFile$2;

    iput-object p2, p0, LJAVARuntime/MaterialFile$2$1;->val$field:Ljava/lang/reflect/Field;

    iput-object p3, p0, LJAVARuntime/MaterialFile$2$1;->val$classInstance:Ljava/lang/Object;

    iput-object p4, p0, LJAVARuntime/MaterialFile$2$1;->val$getSetterListener:LP8/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    :try_start_0
    iget-object v0, p0, LJAVARuntime/MaterialFile$2$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v1, p0, LJAVARuntime/MaterialFile$2$1;->val$classInstance:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJAVARuntime/MaterialFile;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v2, v1, v0, v3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v1, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/MaterialFile;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-direct {v0, p1}, LJAVARuntime/MaterialFile;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, LJAVARuntime/MaterialFile$2$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v1, p0, LJAVARuntime/MaterialFile$2$1;->val$classInstance:Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, LJAVARuntime/MaterialFile$2$1;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, LP8/n;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
