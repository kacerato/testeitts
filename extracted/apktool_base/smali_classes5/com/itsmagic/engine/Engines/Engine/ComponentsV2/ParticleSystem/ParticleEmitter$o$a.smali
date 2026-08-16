.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o$a;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o$a;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONSTANT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Index by speed"

    return-object p1

    :cond_1
    const-string p1, "Index over lifetime"

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o$a;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;)V

    return-void
.end method
