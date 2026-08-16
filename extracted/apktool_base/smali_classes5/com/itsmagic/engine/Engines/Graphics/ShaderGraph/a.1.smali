.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "variable_worldPos"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p0, v0, :cond_0

    const-string p0, "v.worldPosition.xyz"

    return-object p0

    :cond_0
    const-string p0, "variable_worldPos.xyz"

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "inverse(getUserWorldFromWorldMatrix())"

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mulMat4x4Float3(getUserWorldFromWorldMatrix(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ").xyz"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p0, v0, :cond_0

    const-string p0, "v.worldPosition.xyz"

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "variable_worldPos.xyz"

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
