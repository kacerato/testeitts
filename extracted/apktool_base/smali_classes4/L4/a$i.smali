.class public LL4/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL4/a;->D1()Ljava/util/List;
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

    iput-object p1, p0, LL4/a$i;->a:LL4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LL4/a$i;->a:LL4/a;

    invoke-static {v2}, LL4/a;->r1(LL4/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    iget-object v0, p0, LL4/a$i;->a:LL4/a;

    invoke-static {v0}, LL4/a;->r1(LL4/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->w0(I)V

    :cond_0
    return-void
.end method
