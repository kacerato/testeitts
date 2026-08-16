.class public LP6/b$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/b;->h(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public final synthetic b:LP6/b$z;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;LP6/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$texConfig",
            "val$listener",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP6/b$o;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iput-object p2, p0, LP6/b$o;->b:LP6/b$z;

    iput-object p3, p0, LP6/b$o;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, LP6/b$o;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-static {v1}, LP6/b;->b(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;

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

    if-eqz p1, :cond_3

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    if-nez p1, :cond_0

    iget-object p1, p0, LP6/b$o;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LP6/b$o;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Repeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, LP6/b$o;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->MirrorRepeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    :cond_2
    :goto_0
    iget-object p1, p0, LP6/b$o;->b:LP6/b$z;

    invoke-interface {p1}, LP6/b$z;->b()V

    :cond_3
    return-void
.end method
