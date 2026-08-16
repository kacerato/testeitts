.class Lorg/openjdk/tools/javac/code/Type$ErrorType$1;
.super Lorg/openjdk/tools/javac/code/Type$ErrorType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Type$ErrorType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$ErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$ErrorType;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$ErrorType;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$ErrorType$1;->this$0:Lorg/openjdk/tools/javac/code/Type$ErrorType;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Lorg/openjdk/tools/javac/code/Type$ErrorType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;Lorg/openjdk/tools/javac/code/Type$1;)V

    return-void
.end method


# virtual methods
.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ErrorType$1;->this$0:Lorg/openjdk/tools/javac/code/Type$ErrorType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$ClassType;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Type$ErrorType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$ErrorType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Type$ErrorType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$ErrorType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getEnclosingType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type$ErrorType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type$ErrorType;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
