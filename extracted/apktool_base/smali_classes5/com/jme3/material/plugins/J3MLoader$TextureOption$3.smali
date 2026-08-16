.class final enum Lcom/jme3/material/plugins/J3MLoader$TextureOption$3;
.super Lcom/jme3/material/plugins/J3MLoader$TextureOption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/plugins/J3MLoader$TextureOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/material/plugins/J3MLoader$TextureOption;-><init>(Ljava/lang/String;ILcom/jme3/material/plugins/J3MLoader$1;)V

    return-void
.end method


# virtual methods
.method public applyToTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V
    .locals 3

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/jme3/texture/Texture$WrapAxis;->valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$WrapAxis;

    move-result-object v0

    invoke-static {p1}, Lcom/jme3/texture/Texture$WrapMode;->valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/jme3/texture/Texture$WrapMode;->valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    :goto_0
    return-void
.end method
