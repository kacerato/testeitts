.class public Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;
.super Lorg/openjdk/tools/javac/code/Attribute$Compound;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeCompound"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$Compound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;>;",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Attribute$Compound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    return-void
.end method
