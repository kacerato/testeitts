.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$c$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setBackfaceLimit(F)V

    return-void
.end method
