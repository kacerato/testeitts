.class public Lorg/openjdk/tools/javah/Mangle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javah/Mangle$Type;
    }
.end annotation


# instance fields
.field private elems:Lorg/openjdk/javax/lang/model/util/Elements;

.field private types:Lorg/openjdk/javax/lang/model/util/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/util/Elements;Lorg/openjdk/javax/lang/model/util/Types;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javah/Mangle;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    iput-object p2, p0, Lorg/openjdk/tools/javah/Mangle;->types:Lorg/openjdk/javax/lang/model/util/Types;

    return-void
.end method

.method private getInnerQualifiedName(Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javah/Mangle;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getBinaryName(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static isalnum(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_3

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isprint(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private signature(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, "("

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Mangle;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    :cond_0
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_d

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/openjdk/tools/javah/Mangle;->isalnum(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    const/16 v4, 0x2e

    const/4 v5, 0x1

    const/16 v6, 0x5f

    if-ne v3, v4, :cond_1

    if-ne p2, v5, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    const/16 v7, 0x24

    if-ne v3, v7, :cond_2

    if-ne p2, v5, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-ne v3, v6, :cond_3

    const/4 v7, 0x2

    if-ne p2, v7, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-ne v3, v6, :cond_4

    if-ne p2, v5, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    if-ne p2, v5, :cond_a

    if-ne v3, v6, :cond_5

    const-string v4, "_1"

    goto :goto_1

    :cond_5
    if-ne v3, v4, :cond_6

    const-string v4, "_"

    goto :goto_1

    :cond_6
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_7

    const-string v4, "_2"

    goto :goto_1

    :cond_7
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_8

    const-string v4, "_3"

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javah/Mangle;->mangleChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const/4 v4, 0x5

    if-ne p2, v4, :cond_c

    invoke-static {v3}, Lorg/openjdk/tools/javah/Mangle;->isprint(C)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javah/Mangle;->mangleChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javah/Mangle;->mangleChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final mangleChar(C)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v1, v0, 0x5

    const/4 v2, 0x6

    new-array v3, v2, [C

    const/16 v4, 0x5f

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/4 v4, 0x1

    move v6, v4

    :goto_0
    if-gt v6, v1, :cond_0

    const/16 v7, 0x30

    aput-char v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x6

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v5, v4

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public mangleMethod(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/TypeSignature$SignatureException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Java_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    const/16 v2, 0x5f

    const/4 v3, 0x1

    if-ne p3, v1, :cond_0

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p0, p2, v3}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_stub"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javah/Mangle;->getInnerQualifiedName(Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p0, p2, v1}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x8

    if-ne p3, p2, :cond_1

    const-string p2, "__"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javah/Mangle;->signature(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/openjdk/tools/javah/TypeSignature;

    iget-object v2, p0, Lorg/openjdk/tools/javah/Mangle;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-direct {p3, v2}, Lorg/openjdk/tools/javah/TypeSignature;-><init>(Lorg/openjdk/javax/lang/model/util/Elements;)V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lorg/openjdk/tools/javah/TypeSignature;->getTypeSignature(Ljava/lang/String;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2f

    const/16 p3, 0x2e

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
