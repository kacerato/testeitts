.class public Lorg/eclipse/jdt/internal/compiler/classfmt/BinaryTypeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static annotationToString(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x40

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 4
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 v1, 0x28

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/16 p0, 0x29

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    .line 9
    const-string v3, ",\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static annotationToString(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Ljava/lang/String;
    .locals 5

    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    const-string v1, "target_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 16
    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getSupertypeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 17
    const-string v1, ", info2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getBoundIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 18
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object p0

    if-eqz p0, :cond_6

    .line 19
    array-length v1, p0

    if-eqz v1, :cond_6

    .line 20
    const-string v1, ", location=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/16 p0, 0x5d

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    if-lez v2, :cond_1

    .line 23
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    :cond_1
    aget v3, p0, v2

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    const-string v3, "TYPE_ARGUMENT("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0x1

    aget v3, p0, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 26
    :cond_3
    const-string v3, "WILDCARD"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 27
    :cond_4
    const-string v3, "INNER_TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 28
    :cond_5
    const-string v3, "ARRAY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 29
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static methodToString(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/BinaryTypeFormatter;->methodToStringContent(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static methodToStringContent(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)V
    .locals 9

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v1

    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    const-string v4, "deprecated "

    goto :goto_0

    :cond_1
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, "public "

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const-string v4, "private "

    goto :goto_2

    :cond_3
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    const-string v4, "protected "

    goto :goto_3

    :cond_4
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v0, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    const-string v4, "static "

    goto :goto_4

    :cond_5
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v0, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    const-string v4, "final "

    goto :goto_5

    :cond_6
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v0, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    const-string v4, "bridge "

    goto :goto_6

    :cond_7
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_8

    const-string v0, "varargs "

    goto :goto_7

    :cond_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v1, :cond_c

    const-string v5, " default "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v5, v1, [Ljava/lang/Object;

    if-eqz v5, :cond_b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    array-length v5, v2

    move v1, v4

    :goto_8
    if-lt v1, v5, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_9
    if-lez v1, :cond_a

    const-string v6, ", "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    aget-object v6, v2, v1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_9
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    if-nez v0, :cond_d

    move v1, v4

    goto :goto_a

    :cond_d
    array-length v1, v0

    :goto_a
    move v2, v4

    :goto_b
    if-lt v2, v1, :cond_11

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotatedParametersCount()I

    move-result v5

    move v6, v4

    :goto_c
    if-lt v6, v5, :cond_e

    return-void

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "param"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-array v0, v4, [C

    invoke-interface {p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v7

    if-nez v7, :cond_f

    move v8, v4

    goto :goto_d

    :cond_f
    array-length v0, v7

    move v8, v0

    :goto_d
    move v0, v4

    :goto_e
    if-lt v0, v8, :cond_10

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_10
    aget-object v1, v7, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_11
    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method
