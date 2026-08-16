.class public final Lorg/eclipse/jdt/core/BindingKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static createArrayTypeBindingKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-gtz p1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p1, 0x5b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_0
.end method

.method public static createParameterizedTypeBindingKey(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x3c

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x3e

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static createTypeBindingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createTypeVariableBindingKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p1, 0x54

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createWilcardTypeBindingKey(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "*"

    return-object p0
.end method

.method public static createWildcardTypeBindingKey(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_MINUS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_PLUS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_STAR:[C

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x7b

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDeclaringType()Lorg/eclipse/jdt/core/BindingKey;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/KeyKind;

    iget-object v3, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/core/util/KeyKind;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    iget v2, v2, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/core/BindingKey;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/BindingKey;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getThrownExceptions()[Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v1, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->getThrownExceptions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()[Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v1, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->getTypeArguments()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isParameterizedMethod()Z
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyKind;

    iget-object v1, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/KeyKind;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isParameterizedType()Z
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyKind;

    iget-object v1, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/KeyKind;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRawType()Z
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyKind;

    iget-object v1, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/KeyKind;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toSignature()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v1, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/BindingKey;->key:Ljava/lang/String;

    return-object v0
.end method
