.class public LL4/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL4/a;->B1()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LL4/a;


# direct methods
.method public constructor <init>(LL4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LL4/a$g;->a:LL4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, LL4/a$g;->a:LL4/a;

    invoke-static {v1}, LL4/a;->w1(LL4/a;)Ljava/lang/String;

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

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    if-nez p1, :cond_0

    iget-object p1, p0, LL4/a$g;->a:LL4/a;

    invoke-static {p1}, LL4/a;->r1(LL4/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LL4/a$g;->a:LL4/a;

    invoke-static {p1}, LL4/a;->r1(LL4/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_1
    :goto_0
    return-void
.end method
