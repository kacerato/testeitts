.class Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;
.super Lorg/eclipse/jdt/internal/core/jdom/DOMMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMMethod;


# instance fields
.field protected fBody:Ljava/lang/String;

.field protected fBodyRange:[I

.field protected fDefaultValue:Ljava/lang/String;

.field protected fExceptionList:[C

.field protected fExceptionRange:[I

.field protected fExceptions:[Ljava/lang/String;

.field protected fParameterList:[C

.field protected fParameterNames:[Ljava/lang/String;

.field protected fParameterRange:[I

.field protected fParameterTypes:[Ljava/lang/String;

.field protected fReturnType:Ljava/lang/String;

.field protected fReturnTypeRange:[I

.field protected fTypeParameters:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;-><init>()V

    .line 2
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fTypeParameters:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v14, p10

    const/4 v15, -0x1

    .line 18
    filled-new-array {v15, v15}, [I

    move-result-object v5

    filled-new-array {v15, v15}, [I

    move-result-object v7

    filled-new-array {v15, v15}, [I

    move-result-object v10

    filled-new-array {v15, v15}, [I

    move-result-object v13

    filled-new-array {v15, v15}, [I

    move-result-object v16

    move-object/from16 v17, v0

    move v0, v15

    move-object/from16 v15, v16

    filled-new-array {v0, v0}, [I

    move-result-object v16

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;-><init>([C[ILjava/lang/String;[I[II[IZLjava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I[I)V

    const/16 v0, 0x800

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 19
    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[I[II[IZLjava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I[I)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;-><init>([C[ILjava/lang/String;[I[II[I)V

    .line 5
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fTypeParameters:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fDefaultValue:Ljava/lang/String;

    const/16 v1, 0x40

    move v2, p8

    .line 7
    invoke-virtual {p0, v1, p8}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnType:Ljava/lang/String;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionRange:[I

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setHasBody(Z)V

    move-object/from16 v2, p16

    .line 16
    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    const/16 v2, 0x800

    .line 17
    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method


# virtual methods
.method public addException(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->setExceptions([Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_nullExceptionType:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    aput-object p2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    if-nez p2, :cond_1

    new-array p2, v2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    aput-object p1, p2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->setParameters([Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_nullNameParameter:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_nullTypeParameter:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendMemberBodyContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    return-void
.end method

.method public appendMemberDeclarationContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->getConstructorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v4, v4, v2

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    aget v6, v6, v1

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    invoke-virtual {v0, v3, v5, v6}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->getReturnTypeContents()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    aget v3, v0, v1

    if-ltz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v0, v0, v2

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v5, v5, v1

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    invoke-virtual {p1, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getNameContents()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v4, v4, v2

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    aget v6, v6, v1

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    invoke-virtual {v0, v3, v5, v6}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterList:[C

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    aget v4, v3, v1

    aget v3, v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v4, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->hasTrailingArrayQualifier()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isReturnTypeAltered()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    :goto_3
    add-int/2addr v0, v2

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    aget v0, v0, v2

    goto :goto_3

    :goto_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionRange:[I

    aget v3, v3, v1

    if-ltz v3, :cond_4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    sub-int/2addr v3, v0

    invoke-virtual {p1, v4, v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_5

    :cond_4
    const-string v0, " throws "

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionList:[C

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionRange:[I

    aget v3, v0, v1

    if-ltz v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v0, v0, v2

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    aget v1, v5, v1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p1, v3, v4, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    aget v3, v3, v2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    aget v1, v5, v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionRange:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    aget v1, v3, v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionRange:[I

    aget v4, v3, v1

    if-ltz v4, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v3, v3, v2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    aget v1, v5, v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    aget v1, v3, v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_6
    return-void
.end method

.method public appendSimpleContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v2, v3, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->getConstructorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v4, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    return-void
.end method

.method public generateFlags()[C
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x81

    invoke-static {v0}, Lorg/eclipse/jdt/core/Flags;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x20

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstructorName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getNameContents()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailedNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFactory()Lorg/eclipse/jdt/core/jdom/IDOMFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/jdom/IDOMFactory;->createMethod(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMMethod;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getExceptions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    return-object v0
.end method

.method public getJavaElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    array-length v4, v3

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->getConstructorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    check-cast p1, Lorg/eclipse/jdt/core/IType;

    invoke-interface {p1, v1, v0}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_illegalParent:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMemberDeclarationStartPosition()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v0, v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnType:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnTypeContents()[C
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isReturnTypeAltered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    add-int/2addr v1, v3

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fTypeParameters:[Ljava/lang/String;

    return-object v0
.end method

.method public hasTrailingArrayQualifier()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public isReturnTypeAltered()Z
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public isSignatureEqual(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->getNodeType()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    check-cast p1, Lorg/eclipse/jdt/core/jdom/IDOMMethod;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMMethod;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    if-eqz v0, :cond_b

    array-length v3, v0

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_a

    array-length v3, p1

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    array-length v0, v0

    array-length v3, p1

    if-eq v0, v3, :cond_7

    return v2

    :cond_7
    move v0, v2

    :goto_2
    array-length v3, p1

    if-lt v0, v3, :cond_8

    return v1

    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return v2

    :cond_b
    :goto_4
    if-eqz p1, :cond_c

    array-length p1, p1

    if-nez p1, :cond_d

    :cond_c
    return v1

    :cond_d
    return v2
.end method

.method public newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;-><init>()V

    return-object v0
.end method

.method public offset(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->offset(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBody:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setHasBody(Z)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->hasBody()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBody:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setBodyRangeEnd(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setConstructor(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    return-void
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setExceptions([Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionList:[C

    goto :goto_2

    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_2
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x20s
    .end array-data
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setName(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_nullName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParameters([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    const/16 v1, 0x29

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    array-length v3, p2

    array-length v4, p1

    if-ne v3, v4, :cond_4

    array-length v3, p2

    if-nez v3, :cond_1

    invoke-virtual {p0, v2, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->setParameters([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    new-instance v2, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    const/16 v3, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p2

    if-lt v4, v5, :cond_2

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterList:[C

    goto :goto_2

    :cond_2
    if-lez v4, :cond_3

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_3
    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v5

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_mismatchArgNamesAndTypes:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    new-array p1, v0, [C

    fill-array-data p1, :array_1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterList:[C

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_mismatchArgNamesAndTypes:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 2
        0x2cs
        0x20s
    .end array-data

    :array_1
    .array-data 2
        0x28s
        0x29s
    .end array-data
.end method

.method public setReturnType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->setReturnTypeAltered(Z)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnType:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_nullReturnType:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReturnTypeAltered(Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public setSourceRangeEnd(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setTypeParameters([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fTypeParameters:[Ljava/lang/String;

    return-void
.end method

.method public shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBody:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBody:Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fBodyRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionList:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionList:[C

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptionRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fExceptions:[Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterList:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterList:[C

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterNames:[Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fParameterTypes:[Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnType:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnType:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->fReturnTypeRange:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CONSTRUCTOR"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "METHOD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
