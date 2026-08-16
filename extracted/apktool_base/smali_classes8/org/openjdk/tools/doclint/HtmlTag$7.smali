.class final enum Lorg/openjdk/tools/doclint/HtmlTag$7;
.super Lorg/openjdk/tools/doclint/HtmlTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/HtmlTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/doclint/HtmlTag$BlockType;Lorg/openjdk/tools/doclint/HtmlTag$EndKind;Ljava/util/Set;[Lorg/openjdk/tools/doclint/HtmlTag$AttrMap;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/doclint/HtmlTag;-><init>(Ljava/lang/String;ILorg/openjdk/tools/doclint/HtmlTag$BlockType;Lorg/openjdk/tools/doclint/HtmlTag$EndKind;Ljava/util/Set;[Lorg/openjdk/tools/doclint/HtmlTag$AttrMap;Lorg/openjdk/tools/doclint/HtmlTag$1;)V

    return-void
.end method


# virtual methods
.method public accepts(Lorg/openjdk/tools/doclint/HtmlTag;)Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag$14;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lorg/openjdk/tools/doclint/HtmlTag;->blockType:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->INLINE:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
