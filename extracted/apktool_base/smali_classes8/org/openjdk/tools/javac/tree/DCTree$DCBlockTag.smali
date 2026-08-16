.class public abstract Lorg/openjdk/tools/javac/tree/DCTree$DCBlockTag;
.super Lorg/openjdk/tools/javac/tree/DCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/BlockTagTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DCBlockTag"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree;-><init>()V

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
