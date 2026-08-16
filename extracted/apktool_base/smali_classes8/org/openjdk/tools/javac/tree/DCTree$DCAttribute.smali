.class public Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;
.super Lorg/openjdk/tools/javac/tree/DCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/AttributeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCAttribute"
.end annotation


# instance fields
.field public final name:Lorg/openjdk/javax/lang/model/element/Name;

.field public final value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation
.end field

.field public final vkind:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/source/doctree/AttributeTree$ValueKind;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Lorg/openjdk/source/doctree/AttributeTree$ValueKind;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree;-><init>()V

    sget-object v0, Lorg/openjdk/source/doctree/AttributeTree$ValueKind;->EMPTY:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;->name:Lorg/openjdk/javax/lang/model/element/Name;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;->vkind:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;->value:Ljava/util/List;

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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->ATTRIBUTE:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method

.method public getName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;->name:Lorg/openjdk/javax/lang/model/element/Name;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;->value:Ljava/util/List;

    return-object v0
.end method

.method public getValueKind()Lorg/openjdk/source/doctree/AttributeTree$ValueKind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;->vkind:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    return-object v0
.end method
