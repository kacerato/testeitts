.class public Lcom/jme3/material/plugins/ShaderNodeDefinitionLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    instance-of v1, v0, Lcom/jme3/asset/ShaderNodeDefinitionKey;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/jme3/asset/ShaderNodeDefinitionKey;

    new-instance v1, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    invoke-direct {v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/blockparser/BlockLanguageParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/jme3/asset/AssetLoadException;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "In multi-root shader node definition, expected first statement to be \'Exception\'"

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readNodesDefinitions(Ljava/util/List;Lcom/jme3/asset/ShaderNodeDefinitionKey;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/blockparser/Statement;

    const-string v1, "Too many roots in J3SN file"

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ShaderNodeDefinition file must be loaded via ShaderNodeDefinitionKey"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
