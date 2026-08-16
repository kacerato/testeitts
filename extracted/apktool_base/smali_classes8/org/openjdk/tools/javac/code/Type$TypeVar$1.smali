.class Lorg/openjdk/tools/javac/code/Type$TypeVar$1;
.super Lorg/openjdk/tools/javac/code/Type$TypeVar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Type$TypeVar;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$TypeVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$TypeVar;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$TypeVar$1;->this$0:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/openjdk/tools/javac/code/Type$TypeVar;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asElement()Lorg/openjdk/javax/lang/model/element/Element;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type;->asElement()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    return-object v0
.end method

.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$TypeVar$1;->this$0:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$TypeVar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerBound()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->getLowerBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpperBound()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
