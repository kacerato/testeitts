.class public Lorg/eclipse/jdt/internal/core/util/KeyToSignature;
.super Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
.source "SourceFile"


# static fields
.field public static final DECLARING_TYPE:I = 0x2

.field public static final SIGNATURE:I = 0x0

.field public static final THROWN_EXCEPTIONS:I = 0x3

.field public static final TYPE_ARGUMENTS:I = 0x1


# instance fields
.field private arguments:Ljava/util/ArrayList;

.field private asBinarySignature:Z

.field private kind:I

.field private mainTypeEnd:I

.field private mainTypeStart:I

.field public signature:Ljava/lang/StringBuffer;

.field private thrownExceptions:Ljava/util/ArrayList;

.field private typeArguments:Ljava/util/ArrayList;

.field private typeParameters:Ljava/util/ArrayList;

.field private typeSigStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeParameters:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeStart:I

    .line 21
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeSigStart:I

    .line 22
    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->kind:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeParameters:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeStart:I

    .line 31
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeSigStart:I

    .line 32
    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->kind:I

    .line 33
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeParameters:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeStart:I

    .line 9
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeSigStart:I

    .line 10
    check-cast p1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    .line 11
    iget v0, p1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->kind:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->kind:I

    .line 12
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    return-void
.end method

.method private substitute([C[[CI)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_5

    const/16 v1, 0x3c

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-static {p1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getTypeArguments([C)[[C

    move-result-object v2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v1, v2

    :goto_1
    if-lt v0, v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_0
    aget-object p1, v2, v0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->substitute([C[[CI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v2, p1

    :goto_2
    if-lt v0, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-char v1, p1, v0

    const/16 v3, 0x21

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_4

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_4

    :goto_3
    if-lez v0, :cond_3

    invoke-static {p1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->substitute([C[[CI)V

    goto :goto_4

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_4
    return-void

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public consumeArrayDimension([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeBaseType([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeSigStart:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeCapture(I)V
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeCapture18ID(II)V
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const-string p2, "!*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeException()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public consumeField([C)V
    .locals 1

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->kind:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public consumeFullyQualifiedName([C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeSigStart:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeLocalType([C)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeMemberType([C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeMethod([C[C)V
    .locals 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    if-nez p1, :cond_0

    const/16 p1, 0x2f

    const/16 v0, 0x2e

    invoke-static {p2, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->kind:I

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x5e

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result p1

    if-lez p1, :cond_4

    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->getThrownExceptionTypes([C)[[C

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    return-void
.end method

.method public consumePackage([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeParameterizedGenericMethod()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v2, v1, [C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getTypeParameters([C)[[C

    move-result-object v1

    array-length v3, v1

    if-eq v3, v0, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    move v3, v4

    :goto_0
    if-lt v3, v0, :cond_3

    const/16 v3, 0x28

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v5

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_1
    if-lt v3, v6, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v3

    invoke-direct {p0, v3, v1, v0}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->substitute([C[[CI)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getThrownExceptionTypes([C)[[C

    move-result-object v7

    array-length v8, v7

    :goto_2
    if-lt v4, v8, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v2, v7, v4

    invoke-direct {p0, v2, v1, v0}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->substitute([C[[CI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    aget-object v7, v5, v3

    invoke-direct {p0, v7, v1, v0}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->substitute([C[[CI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    aget-object v5, v1, v3

    invoke-static {v5}, Lorg/eclipse/jdt/core/Signature;->getTypeVariable([C)[C

    move-result-object v5

    const/16 v6, 0x3b

    const/16 v7, 0x54

    invoke-static {v7, v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat(C[CC)[C

    move-result-object v5

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public consumeParameterizedType([CZ)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x24

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1
    if-nez p2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-lt p2, p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public consumeSecondaryType([C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->asBinarySignature:Z

    if-eqz v1, :cond_0

    const-string v1, "/"

    goto :goto_0

    :cond_0
    const-string v1, "."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeStart:I

    if-nez v0, :cond_2

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeStart:I

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeStart:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeStart:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeType()V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->mainTypeEnd:I

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeSigStart:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeParameters:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeParameters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ObjectSignature:[C

    filled-new-array {v4}, [[C

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/Signature;->createTypeParameterSignature([C[[C)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeTypeParameter([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public consumeTypeVariable([C[C)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 v0, 0x54

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public consumeTypeWithCapture()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    return-void
.end method

.method public consumeWildCard(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x2d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/16 p1, 0x2b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const/16 p1, 0x2a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public getThrownExceptions()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->thrownExceptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getTypeArguments()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->typeArguments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
