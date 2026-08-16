.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->setShadowResolutionIDV2(I)V

    :cond_0
    return-void
.end method
