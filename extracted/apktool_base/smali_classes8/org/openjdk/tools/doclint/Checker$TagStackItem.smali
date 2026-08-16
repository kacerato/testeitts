.class Lorg/openjdk/tools/doclint/Checker$TagStackItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/Checker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagStackItem"
.end annotation


# instance fields
.field final attrs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/doclint/HtmlTag$Attr;",
            ">;"
        }
    .end annotation
.end field

.field final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/doclint/Checker$Flag;",
            ">;"
        }
    .end annotation
.end field

.field final tag:Lorg/openjdk/tools/doclint/HtmlTag;

.field final tree:Lorg/openjdk/source/doctree/DocTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/doctree/DocTree;Lorg/openjdk/tools/doclint/HtmlTag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    iput-object p2, p0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    const-class p1, Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->attrs:Ljava/util/Set;

    const-class p1, Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
