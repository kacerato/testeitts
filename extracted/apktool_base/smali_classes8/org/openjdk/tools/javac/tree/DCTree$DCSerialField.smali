.class public Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;
.super Lorg/openjdk/tools/javac/tree/DCTree$DCBlockTag;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/SerialFieldTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCSerialField"
.end annotation


# instance fields
.field public final description:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

.field public final type:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCReference;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCBlockTag;-><init>()V

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;->description:Ljava/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;->name:Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;->type:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;->description:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->SERIAL_FIELD:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method

.method public getName()Lorg/openjdk/source/doctree/IdentifierTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;->name:Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    return-object v0
.end method

.method public getType()Lorg/openjdk/source/doctree/ReferenceTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;->type:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    return-object v0
.end method
