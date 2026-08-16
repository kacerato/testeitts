.class final Lorg/openjdk/tools/javac/code/Type$4;
.super Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$4;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$4;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->typeNoMetadata()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$4;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$4;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->typeNoMetadata()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$4;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->typeNoMetadata()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$4;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$4;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->typeNoMetadata()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
