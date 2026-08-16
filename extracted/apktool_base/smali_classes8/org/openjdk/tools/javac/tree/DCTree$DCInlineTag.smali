.class public abstract Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;
.super Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/InlineTagTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DCInlineTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree<",
        "Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;",
        ">;",
        "Lorg/openjdk/source/doctree/InlineTagTree;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/source/doctree/DocTree$Kind;->tagName:Ljava/lang/String;

    return-object v0
.end method
