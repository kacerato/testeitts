.class public Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;
.super Lorg/openjdk/tools/javac/tree/DCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/EndElementTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCEndElement"
.end annotation


# instance fields
.field public final name:Lorg/openjdk/javax/lang/model/element/Name;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/element/Name;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;->name:Lorg/openjdk/javax/lang/model/element/Name;

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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->END_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method

.method public getName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;->name:Lorg/openjdk/javax/lang/model/element/Name;

    return-object v0
.end method
