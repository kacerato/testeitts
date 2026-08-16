.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$k$a;->b:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setRoughnessIndex(I)V

    return-void
.end method
