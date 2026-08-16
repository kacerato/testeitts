.class public Lorg/openjdk/tools/javac/tree/DCTree$DCValue;
.super Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/ValueTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCValue"
.end annotation


# instance fields
.field public final ref:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/DCTree$DCReference;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCValue;->ref:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->VALUE:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method

.method public getReference()Lorg/openjdk/source/doctree/ReferenceTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCValue;->ref:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    return-object v0
.end method
