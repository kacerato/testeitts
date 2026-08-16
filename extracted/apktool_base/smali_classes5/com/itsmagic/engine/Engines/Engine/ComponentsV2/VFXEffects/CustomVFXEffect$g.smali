.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LVb/b;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;->a:LVb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;->a:LVb/b;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;I)[F

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v0, v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;->a:LVb/b;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;I)[F

    move-result-object v0

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

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p1

    const/4 v1, 0x3

    aput p1, v0, v1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;->a:LVb/b;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    return-void
.end method
