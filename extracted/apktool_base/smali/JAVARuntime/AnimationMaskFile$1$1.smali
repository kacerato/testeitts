.class LJAVARuntime/AnimationMaskFile$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AnimationMaskFile$1;->getInspector(Landroid/content/Context;LP8/k;Ljava/lang/String;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AnimationMaskFile$1;

.field final synthetic val$constructor:LP8/k;


# direct methods
.method public constructor <init>(LJAVARuntime/AnimationMaskFile$1;LP8/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AnimationMaskFile$1$1;->this$0:LJAVARuntime/AnimationMaskFile$1;

    iput-object p2, p0, LJAVARuntime/AnimationMaskFile$1$1;->val$constructor:LP8/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, LJAVARuntime/AnimationMaskFile$1$1;->val$constructor:LP8/k;

    invoke-interface {v0}, LP8/k;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJAVARuntime/AnimationMaskFile;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v2, v1, v0, v3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v1, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
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

    new-instance v0, LJAVARuntime/AnimationMaskFile;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-direct {v0, p1}, LJAVARuntime/AnimationMaskFile;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, LJAVARuntime/AnimationMaskFile$1$1;->val$constructor:LP8/k;

    invoke-interface {p1, v0}, LP8/k;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
