.class Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType$2;
.super Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType$2;->this$0:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iput-object p5, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType$2;->val$value:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;Lorg/openjdk/tools/javac/code/Type$1;)V

    return-void
.end method


# virtual methods
.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public constValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType$2;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
