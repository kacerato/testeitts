.class final enum Lcom/jme3/material/plugins/J3MLoader$TextureOption$5;
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
.method public applyToTextureKey(Ljava/lang/String;Lcom/jme3/asset/TextureKey;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/jme3/asset/TextureKey;->setFlipY(Z)V

    return-void
.end method
