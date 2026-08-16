.class public Lorg/openjdk/tools/javac/tree/DCTree$DCInheritDoc;
.super Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/InheritDocTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCInheritDoc"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/doctree/DocTreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->INHERIT_DOC:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method
