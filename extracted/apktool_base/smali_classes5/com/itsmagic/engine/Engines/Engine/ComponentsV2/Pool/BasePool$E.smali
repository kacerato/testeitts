.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->registerMaterialListenerLocked(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$material"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentMaterial"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    return-void
.end method
