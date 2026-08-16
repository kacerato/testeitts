.class public Lorg/eclipse/jdt/internal/core/util/KeyKind;
.super Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
.source "SourceFile"


# static fields
.field public static final F_CAPTURE:I = 0x800

.field public static final F_CONSTRUCTOR:I = 0x1000

.field public static final F_FIELD:I = 0x4

.field public static final F_LOCAL:I = 0x40

.field public static final F_LOCAL_VAR:I = 0x10

.field public static final F_MEMBER:I = 0x20

.field public static final F_METHOD:I = 0x2

.field public static final F_PARAMETERIZED_METHOD:I = 0x400

.field public static final F_PARAMETERIZED_TYPE:I = 0x80

.field public static final F_RAW_TYPE:I = 0x100

.field public static final F_TYPE:I = 0x1

.field public static final F_TYPE_PARAMETER:I = 0x8

.field public static final F_WILDCARD_TYPE:I = 0x200


# instance fields
.field public flags:I

.field private innerKeyKind:Lorg/eclipse/jdt/internal/core/util/KeyKind;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method


# virtual methods
.method public consumeBaseType([C)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeCapture(I)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeField([C)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeLocalType([C)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeLocalVar([CII)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeMemberType([C)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeMethod([C[C)V
    .locals 1

    iget p2, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit8 v0, p2, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    array-length p1, p1

    if-nez p1, :cond_0

    or-int/lit16 p1, p2, 0x1002

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    :cond_0
    return-void
.end method

.method public consumeParameterizedGenericMethod()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeParameterizedType([CZ)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    if-eqz p2, :cond_0

    const/16 p2, 0x100

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/KeyKind;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->innerKeyKind:Lorg/eclipse/jdt/internal/core/util/KeyKind;

    return-void
.end method

.method public consumeRawType()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeTopLevelType()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeTypeParameter([C)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeTypeWithCapture()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->innerKeyKind:Lorg/eclipse/jdt/internal/core/util/KeyKind;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public consumeWildCard(I)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/KeyKind;->flags:I

    return-void
.end method

.method public newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyKind;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/util/KeyKind;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    return-object v0
.end method
