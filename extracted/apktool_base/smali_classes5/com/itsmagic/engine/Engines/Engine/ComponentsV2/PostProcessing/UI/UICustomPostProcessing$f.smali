.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LVb/b;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;LVb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing$f;->a:LVb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing$f;->a:LVb/b;

    iget-object v1, v0, LVb/b;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, v0, LVb/b;->f:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, LVb/b;->f:Ljava/lang/Object;

    check-cast v0, [F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing$f;->a:LVb/b;

    iget-object v1, v0, LVb/b;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, v0, LVb/b;->f:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, LVb/b;->f:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p1

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method
