.class final Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata$1;
.super Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;)V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    return-void
.end method

.method public getAnnotationElements()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public getAnnotationElementsWithDefault()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public getRepeatable()Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTarget()Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMetadataForAnnotationType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Not an annotation type"

    return-object v0
.end method
