.class public Lcom/ardor3d/ui/text/BMFont;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;,
        Lcom/ardor3d/ui/text/BMFont$Char;,
        Lcom/ardor3d/ui/text/BMFont$Page;,
        Lcom/ardor3d/ui/text/BMFont$Common;,
        Lcom/ardor3d/ui/text/BMFont$Info;
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _alphaStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

.field private _blendStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

.field private final _charMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ardor3d/ui/text/BMFont$Char;",
            ">;"
        }
    .end annotation
.end field

.field private _common:Lcom/ardor3d/ui/text/BMFont$Common;

.field private _info:Lcom/ardor3d/ui/text/BMFont$Info;

.field private final _kernMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private _maxCharAdv:I

.field private _pageTexture:Lcom/ardor3d/image/Texture;

.field private final _pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ardor3d/ui/text/BMFont$Page;",
            ">;"
        }
    .end annotation
.end field

.field private _styleName:Ljava/lang/String;

.field private final _useMipMaps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/ui/text/BMFont;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/util/resource/ResourceSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_kernMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_pages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_blendStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_alphaStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iput-boolean p2, p0, Lcom/ardor3d/ui/text/BMFont;->_useMipMaps:Z

    invoke-virtual {p0, p1}, Lcom/ardor3d/ui/text/BMFont;->parseFontFile(Lcom/ardor3d/util/resource/ResourceSource;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/ui/text/BMFont;->initialize(Lcom/ardor3d/util/resource/ResourceSource;)V

    return-void
.end method

.method private generateCharsXML()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  <chars count=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/ui/text/BMFont$Char;

    const-string v3, "    <char id=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" x=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->x:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" y=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" width=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" height=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" xoffset=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->xoffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" yoffset=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->yoffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" xadvance=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->xadvance:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" page=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Char;->page:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" chnl=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/ardor3d/ui/text/BMFont$Char;->chnl:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" />\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "  </chars>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateCommonXML()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  <common lineHeight=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->lineHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" base=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->base:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" scaleW=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->scaleW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" scaleH=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->scaleH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" pages=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->pages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" packed=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget-boolean v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->packed:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" alphaChnl=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->alphaChnl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" redChnl=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->redChnl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" greenChnl=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->greenChnl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" blueChnl=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Common;->blueChnl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateInfoXML()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  <info face=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-object v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->face:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" size=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" bold=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-boolean v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->bold:Z

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" italic=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-boolean v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->italic:Z

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" charset=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-object v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" unicode=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-boolean v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->unicode:Z

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" stretchH=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->stretchH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" smooth=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-boolean v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->smooth:Z

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" aa=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-boolean v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->aa:Z

    if-eqz v1, :cond_4

    move-object v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" padding=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-object v3, v3, Lcom/ardor3d/ui/text/BMFont$Info;->padding:[I

    array-length v4, v3

    const-string v5, ","

    if-ge v2, v4, :cond_6

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-object v3, v3, Lcom/ardor3d/ui/text/BMFont$Info;->padding:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const-string v2, "\" spacing=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    iget-object v2, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-object v2, v2, Lcom/ardor3d/ui/text/BMFont$Info;->spacing:[I

    array-length v3, v2

    if-ge v1, v3, :cond_8

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-object v2, v2, Lcom/ardor3d/ui/text/BMFont$Info;->spacing:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    const-string v1, "\" outline=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->outline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateKerningsXML()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_kernMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/ardor3d/ui/text/BMFont;->_kernMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "    <kerning first=\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\" second=\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\" amount=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\" />\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  <kernings count=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  </kernings>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generatePagesXML()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  <pages>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_pages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/ui/text/BMFont$Page;

    const-string v3, "    <page id=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/ardor3d/ui/text/BMFont$Page;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" file=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/ardor3d/ui/text/BMFont$Page;->file:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" />\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "  </pages>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private procesKerningNode(Lorg/w3c/dom/Node;)V
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const-string v0, "first"

    invoke-virtual {p0, v0, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v0

    const-string v1, "second"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    const-string v2, "amount"

    invoke-virtual {p0, v2, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result p1

    iget-object v2, p0, Lcom/ardor3d/ui/text/BMFont;->_kernMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/ui/text/BMFont;->_kernMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processCharNode(Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    new-instance v0, Lcom/ardor3d/ui/text/BMFont$Char;

    invoke-direct {v0, p0}, Lcom/ardor3d/ui/text/BMFont$Char;-><init>(Lcom/ardor3d/ui/text/BMFont;)V

    const-string v1, "id"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->id:I

    const-string v1, "x"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->x:I

    const-string v1, "y"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->y:I

    const-string v1, "width"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->width:I

    const-string v1, "height"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->height:I

    const-string v1, "xoffset"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->xoffset:I

    const-string v1, "yoffset"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->yoffset:I

    const-string v1, "xadvance"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->xadvance:I

    const-string v1, "page"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->page:I

    const-string v1, "chnl"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result p1

    iput p1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->chnl:I

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    iget v1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v0, Lcom/ardor3d/ui/text/BMFont$Char;->xadvance:I

    iget v0, p0, Lcom/ardor3d/ui/text/BMFont;->_maxCharAdv:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/ardor3d/ui/text/BMFont;->_maxCharAdv:I

    :cond_0
    return-void
.end method

.method private processCommonNode(Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    new-instance v0, Lcom/ardor3d/ui/text/BMFont$Common;

    invoke-direct {v0, p0}, Lcom/ardor3d/ui/text/BMFont$Common;-><init>(Lcom/ardor3d/ui/text/BMFont;)V

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "lineHeight"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->lineHeight:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "base"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->base:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "scaleW"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->scaleW:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "scaleH"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->scaleH:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "pages"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->pages:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "packed"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getBoolAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->packed:Z

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "alphaChnl"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->alphaChnl:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "redChnl"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->redChnl:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "greenChnl"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->greenChnl:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    const-string v1, "blueChnl"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result p1

    iput p1, v0, Lcom/ardor3d/ui/text/BMFont$Common;->blueChnl:I

    return-void
.end method

.method private processInfoNode(Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    new-instance v0, Lcom/ardor3d/ui/text/BMFont$Info;

    invoke-direct {v0, p0}, Lcom/ardor3d/ui/text/BMFont$Info;-><init>(Lcom/ardor3d/ui/text/BMFont;)V

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "face"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getStringAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->face:Ljava/lang/String;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "size"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->size:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "bold"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getBoolAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->bold:Z

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "italic"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getBoolAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->italic:Z

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "charset"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getStringAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->charset:Ljava/lang/String;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "unicode"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getBoolAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->unicode:Z

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "stretchH"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->stretchH:I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "smooth"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getBoolAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->smooth:Z

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "aa"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getBoolAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->aa:Z

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "padding"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntArrayAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->padding:[I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "spacing"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntArrayAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->spacing:[I

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    const-string v1, "outline"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result p1

    iput p1, v0, Lcom/ardor3d/ui/text/BMFont$Info;->outline:I

    return-void
.end method

.method private processNode(Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/ardor3d/ui/text/BMFont;->processInfoNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    const-string v1, "common"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/ardor3d/ui/text/BMFont;->processCommonNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/ardor3d/ui/text/BMFont;->processPageNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_2
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/ardor3d/ui/text/BMFont;->processCharNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_3
    const-string v1, "kerning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/ardor3d/ui/text/BMFont;->procesKerningNode(Lorg/w3c/dom/Node;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private processPageNode(Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    new-instance v0, Lcom/ardor3d/ui/text/BMFont$Page;

    invoke-direct {v0, p0}, Lcom/ardor3d/ui/text/BMFont$Page;-><init>(Lcom/ardor3d/ui/text/BMFont;)V

    const-string v1, "id"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I

    move-result v1

    iput v1, v0, Lcom/ardor3d/ui/text/BMFont$Page;->id:I

    const-string v1, "file"

    invoke-virtual {p0, v1, p1}, Lcom/ardor3d/ui/text/BMFont;->getStringAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ardor3d/ui/text/BMFont$Page;->file:Ljava/lang/String;

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont;->_pages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont;->_pages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    sget-object p1, Lcom/ardor3d/ui/text/BMFont;->logger:Ljava/util/logging/Logger;

    const-string v0, "multiple pages defined in font description file, but only a single page is supported."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private recurse(Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ardor3d/ui/text/BMFont;->processNode(Lorg/w3c/dom/Node;)V

    invoke-direct {p0, v1}, Lcom/ardor3d/ui/text/BMFont;->recurse(Lorg/w3c/dom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public applyRenderStatesTo(Lcom/ardor3d/scenegraph/Spatial;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ardor3d/ui/text/BMFont;->_blendStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_pageTexture:Lcom/ardor3d/image/Texture;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v0, v1}, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;-><init>(Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/image/Texture;Z)V

    iput-object p2, p0, Lcom/ardor3d/ui/text/BMFont;->_blendStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    :cond_0
    iget-object p2, p0, Lcom/ardor3d/ui/text/BMFont;->_blendStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    invoke-virtual {p2, p1}, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->applyTo(Lcom/ardor3d/scenegraph/Spatial;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/ardor3d/ui/text/BMFont;->_alphaStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    if-nez p2, :cond_2

    new-instance p2, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_pageTexture:Lcom/ardor3d/image/Texture;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;-><init>(Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/image/Texture;Z)V

    iput-object p2, p0, Lcom/ardor3d/ui/text/BMFont;->_alphaStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    :cond_2
    iget-object p2, p0, Lcom/ardor3d/ui/text/BMFont;->_alphaStateSetter:Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;

    invoke-virtual {p2, p1}, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->applyTo(Lcom/ardor3d/scenegraph/Spatial;)V

    :goto_0
    return-void
.end method

.method public getBaseHeight()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v0, v0, Lcom/ardor3d/ui/text/BMFont$Common;->base:I

    return v0
.end method

.method public getBoolAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Z
    .locals 0

    invoke-interface {p2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public getChar(I)Lcom/ardor3d/ui/text/BMFont$Char;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/ui/text/BMFont$Char;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/ui/text/BMFont$Char;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/ui/text/BMFont$Char;

    :cond_0
    return-object p1
.end method

.method public getInfo()Lcom/ardor3d/ui/text/BMFont$Info;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    return-object v0
.end method

.method public getIntArrayAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)[I
    .locals 3

    invoke-interface {p2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {p2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIntAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)I
    .locals 0

    invoke-interface {p2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getKerning(II)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_kernMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getKerningMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_kernMap:Ljava/util/Map;

    return-object v0
.end method

.method public getKerningsForCharacter(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_kernMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getLineHeight()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v0, v0, Lcom/ardor3d/ui/text/BMFont$Common;->lineHeight:I

    return v0
.end method

.method public getMappedChars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/M1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCharAdvance()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/ui/text/BMFont;->_maxCharAdv:I

    return v0
.end method

.method public getOutlineWidth()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget v0, v0, Lcom/ardor3d/ui/text/BMFont$Info;->outline:I

    return v0
.end method

.method public getPageTexture()Lcom/ardor3d/image/Texture;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_pageTexture:Lcom/ardor3d/image/Texture;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget v0, v0, Lcom/ardor3d/ui/text/BMFont$Info;->size:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getStringAttrib(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;
    .locals 0

    invoke-interface {p2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureHeight()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v0, v0, Lcom/ardor3d/ui/text/BMFont$Common;->scaleH:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_common:Lcom/ardor3d/ui/text/BMFont$Common;

    iget v0, v0, Lcom/ardor3d/ui/text/BMFont$Common;->scaleW:I

    return v0
.end method

.method public initialize(Lcom/ardor3d/util/resource/ResourceSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-object v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->face:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget v1, v1, Lcom/ardor3d/ui/text/BMFont$Info;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-boolean v0, v0, Lcom/ardor3d/ui/text/BMFont$Info;->bold:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-bold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-medium"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_info:Lcom/ardor3d/ui/text/BMFont$Info;

    iget-boolean v0, v0, Lcom/ardor3d/ui/text/BMFont$Info;->italic:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-italic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-regular"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_styleName:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont;->_pages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/ui/text/BMFont$Page;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "./"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ardor3d/ui/text/BMFont$Page;->file:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/util/resource/ResourceSource;->getRelativeSource(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object p1

    sget-object v0, Lcom/ardor3d/image/Texture$MagnificationFilter;->Bilinear:Lcom/ardor3d/image/Texture$MagnificationFilter;

    sget-object v2, Lcom/ardor3d/image/Texture$MinificationFilter;->BilinearNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

    iget-boolean v3, p0, Lcom/ardor3d/ui/text/BMFont;->_useMipMaps:Z

    if-eqz v3, :cond_2

    sget-object v2, Lcom/ardor3d/image/Texture$MinificationFilter;->Trilinear:Lcom/ardor3d/image/Texture$MinificationFilter;

    :cond_2
    sget-object v3, Lcom/ardor3d/image/TextureStoreFormat;->GuessNoCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-static {p1, v1, v3, v2}, Lcom/ardor3d/util/TextureKey;->getKey(Lcom/ardor3d/util/resource/ResourceSource;ZLcom/ardor3d/image/TextureStoreFormat;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Lcom/ardor3d/util/TextureManager;->loadFromKey(Lcom/ardor3d/util/TextureKey;Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMFont;->_pageTexture:Lcom/ardor3d/image/Texture;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setMagnificationFilter(Lcom/ardor3d/image/Texture$MagnificationFilter;)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont;->_pageTexture:Lcom/ardor3d/image/Texture;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setLodBias(F)V

    iget-boolean p1, p0, Lcom/ardor3d/ui/text/BMFont;->_useMipMaps:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont;->_pageTexture:Lcom/ardor3d/image/Texture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setAnisotropicFilterPercent(F)V

    :cond_3
    return-void
.end method

.method public parseFontFile(Lcom/ardor3d/util/resource/ResourceSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/ui/text/BMFont;->_maxCharAdv:I

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_charMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMFont;->_pages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/ardor3d/util/resource/ResourceSource;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->normalize()V

    const-string v2, "font"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ardor3d/ui/text/BMFont;->recurse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading font file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public writeXML(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<font>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ardor3d/ui/text/BMFont;->generateInfoXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ardor3d/ui/text/BMFont;->generateCommonXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ardor3d/ui/text/BMFont;->generatePagesXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ardor3d/ui/text/BMFont;->generateCharsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ardor3d/ui/text/BMFont;->generateKerningsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
