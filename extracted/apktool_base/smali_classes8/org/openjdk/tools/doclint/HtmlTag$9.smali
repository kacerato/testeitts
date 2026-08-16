.class final enum Lorg/openjdk/tools/doclint/HtmlTag$9;
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
    .locals 1

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag;->TR:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
