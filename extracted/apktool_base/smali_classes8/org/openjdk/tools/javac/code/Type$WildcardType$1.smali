.class Lorg/openjdk/tools/javac/code/Type$WildcardType$1;
.super Lorg/openjdk/tools/javac/code/Type$WildcardType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Type$WildcardType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$WildcardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$WildcardType;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 6

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType$1;->this$0:Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method


# virtual methods
.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType$1;->this$0:Lorg/openjdk/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExtendsBound()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->getExtendsBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSuperBound()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->getSuperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
