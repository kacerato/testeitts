.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    move-result-object p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
