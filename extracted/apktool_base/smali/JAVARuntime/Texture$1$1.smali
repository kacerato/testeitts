.class LJAVARuntime/Texture$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Texture$1;->getInspector(Landroid/content/Context;LP8/k;Ljava/lang/String;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Texture$1;

.field final synthetic val$constructor:LP8/k;

.field final synthetic val$finalVar:LJAVARuntime/Texture;


# direct methods
.method public constructor <init>(LJAVARuntime/Texture$1;LP8/k;LJAVARuntime/Texture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$constructor",
            "val$finalVar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Texture$1$1;->this$0:LJAVARuntime/Texture$1;

    iput-object p2, p0, LJAVARuntime/Texture$1$1;->val$constructor:LP8/k;

    iput-object p3, p0, LJAVARuntime/Texture$1$1;->val$finalVar:LJAVARuntime/Texture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Texture$1$1;->val$finalVar:LJAVARuntime/Texture;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
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
    iget-object v0, p0, LJAVARuntime/Texture$1$1;->val$constructor:LP8/k;

    invoke-interface {v0, p1}, LP8/k;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, LJAVARuntime/Texture$1$1;->val$constructor:LP8/k;

    invoke-interface {p1, v1}, LP8/k;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, LJAVARuntime/Texture$1$1;->val$constructor:LP8/k;

    invoke-interface {p1, v1}, LP8/k;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method
