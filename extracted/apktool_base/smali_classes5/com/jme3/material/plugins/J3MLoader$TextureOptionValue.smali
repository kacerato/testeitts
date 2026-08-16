.class Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/plugins/J3MLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureOptionValue"
.end annotation


# instance fields
.field private final textureOption:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jme3/material/plugins/J3MLoader$TextureOption;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->textureOption:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    iput-object p2, p0, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;
    .locals 0

    iget-object p0, p0, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->textureOption:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    return-object p0
.end method


# virtual methods
.method public applyToTexture(Lcom/jme3/texture/Texture;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->textureOption:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->applyToTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-void
.end method

.method public applyToTextureKey(Lcom/jme3/asset/TextureKey;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->textureOption:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->applyToTextureKey(Ljava/lang/String;Lcom/jme3/asset/TextureKey;)V

    return-void
.end method
