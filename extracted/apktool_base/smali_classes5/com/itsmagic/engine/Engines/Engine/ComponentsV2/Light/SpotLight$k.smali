.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    return-void
.end method
