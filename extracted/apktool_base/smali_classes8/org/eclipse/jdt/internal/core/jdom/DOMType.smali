.class Lorg/eclipse/jdt/internal/core/jdom/DOMType;
.super Lorg/eclipse/jdt/internal/core/jdom/DOMMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMType;


# instance fields
.field protected fCloseBodyRange:[I

.field protected fExtendsRange:[I

.field protected fImplementsRange:[I

.field protected fInterfaces:[C

.field protected fInterfacesRange:[I

.field protected fIsAnnotation:Z

.field protected fIsEnum:Z

.field protected fOpenBodyRange:[I

.field protected fSuperInterfaces:[Ljava/lang/String;

.field protected fSuperclass:Ljava/lang/String;

.field protected fSuperclassRange:[I

.field protected fTypeKeyword:Ljava/lang/String;

.field protected fTypeParameters:[Ljava/lang/String;

.field protected fTypeRange:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;-><init>()V

    .line 2
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeParameters:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fIsEnum:Z

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fIsAnnotation:Z

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[II[Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v11, p6

    move/from16 v16, p7

    const/4 v14, -0x1

    .line 24
    filled-new-array {v14, v14}, [I

    move-result-object v5

    .line 25
    filled-new-array {v14, v14}, [I

    move-result-object v7

    filled-new-array {v14, v14}, [I

    move-result-object v8

    filled-new-array {v14, v14}, [I

    move-result-object v9

    filled-new-array {v14, v14}, [I

    move-result-object v10

    .line 26
    filled-new-array {v14, v14}, [I

    move-result-object v12

    filled-new-array {v14, v14}, [I

    move-result-object v13

    filled-new-array {v14, v14}, [I

    move-result-object v14

    const/4 v15, 0x1

    aget v15, p2, v15

    filled-new-array {v15, v15}, [I

    move-result-object v15

    invoke-direct/range {v0 .. v16}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;-><init>([C[ILjava/lang/String;[I[II[I[I[I[I[Ljava/lang/String;[I[I[I[IZ)V

    const/16 v0, 0x800

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 27
    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[I[II[I[I[I[I[Ljava/lang/String;[I[I[I[IZ)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p11

    move-object/from16 v3, p15

    .line 6
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;-><init>([C[ILjava/lang/String;[I[II[I)V

    .line 7
    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    .line 8
    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeParameters:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 9
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fIsEnum:Z

    .line 10
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fIsAnnotation:Z

    move-object v5, p8

    .line 11
    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeRange:[I

    const/16 v5, 0x80

    move/from16 v6, p16

    .line 12
    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    move-object/from16 v5, p10

    .line 13
    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fExtendsRange:[I

    move-object/from16 v5, p13

    .line 14
    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fImplementsRange:[I

    .line 15
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclassRange:[I

    move-object/from16 v5, p12

    .line 16
    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfacesRange:[I

    .line 17
    iput-object v3, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    .line 18
    aget v1, v1, v4

    const/4 v5, 0x1

    if-lez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const/16 v6, 0x100

    invoke-virtual {p0, v6, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    const/16 v1, 0x200

    .line 19
    invoke-virtual {p0, v1, v4}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    .line 20
    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    move-object/from16 v1, p14

    .line 21
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    .line 22
    iput-object v3, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    const/16 v1, 0x800

    .line 23
    invoke-virtual {p0, v1, v5}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method


# virtual methods
.method public addSuperInterface(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setSuperInterfaces([Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addNullInterface:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendMemberBodyContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->appendContentsOfChildren(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    aget v2, v1, v2

    aget v1, v1, v4

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    aget v1, v1, v4

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v3, v3, v4

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    return-void
.end method

.method public appendMemberDeclarationContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeKeyword:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeRange:[I

    aget v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v4, v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p1, v0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeRange:[I

    aget v4, v3, v1

    aget v3, v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v4, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->isClass()Z

    move-result v0

    const/16 v3, 0x200

    const-string v4, " extends "

    const/16 v5, 0x20

    if-eqz v0, :cond_a

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fExtendsRange:[I

    aget v6, v0, v1

    if-gez v6, :cond_1

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v0, v0, v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v6

    invoke-virtual {p1, v4, v6, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclass:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclassRange:[I

    aget v6, v4, v1

    aget v4, v4, v2

    add-int/2addr v4, v2

    sub-int/2addr v4, v6

    invoke-virtual {p1, v0, v6, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_3
    :goto_2
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fImplementsRange:[I

    aget v3, v0, v1

    if-gez v3, :cond_4

    const-string v0, " implements "

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v0, v0, v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    invoke-virtual {p1, v4, v3, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfaces:[C

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfacesRange:[I

    aget v4, v3, v1

    aget v3, v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v4, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fImplementsRange:[I

    aget v0, v0, v1

    if-gez v0, :cond_6

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto/16 :goto_6

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfacesRange:[I

    aget v3, v3, v2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    aget v1, v5, v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclassRange:[I

    aget v3, v0, v1

    if-gez v3, :cond_8

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto/16 :goto_6

    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fImplementsRange:[I

    aget v3, v3, v1

    if-lez v3, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v0, v0, v2

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v4, v5, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfacesRange:[I

    aget v3, v3, v2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    aget v1, v5, v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v0, v0, v2

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    aget v1, v5, v1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p1, v3, v4, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fExtendsRange:[I

    aget v3, v0, v1

    if-gez v3, :cond_b

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v0, v0, v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    invoke-virtual {p1, v4, v3, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfaces:[C

    if-eqz v0, :cond_c

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfacesRange:[I

    aget v1, v3, v1

    aget v3, v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fImplementsRange:[I

    aget v0, v0, v1

    if-gez v0, :cond_e

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v3, v3, v2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    aget v1, v5, v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_6
    return-void
.end method

.method public appendSimpleContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v3, v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    aget v5, v5, v3

    sub-int/2addr v5, v1

    invoke-virtual {p1, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->appendContentsOfChildren(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    aget v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v2, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    return-void
.end method

.method public canHaveChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCloseBodyPosition()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDetailedNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFactory()Lorg/eclipse/jdt/core/jdom/IDOMFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/jdom/IDOMFactory;->createType(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMType;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getInsertionPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fInsertionPosition:I

    return v0
.end method

.method public getJavaElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_illegalParent:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public getMemberDeclarationStartPosition()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getNodeType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getOpenBodyEnd()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getSuperInterfaces()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclass:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclassRange:[I

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

.method public getTypeParameters()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeParameters:[Ljava/lang/String;

    return-object v0
.end method

.method public isAllowableChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public isAnnotation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fIsAnnotation:Z

    return v0
.end method

.method public isClass()Z
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fIsEnum:Z

    return v0
.end method

.method public newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;-><init>()V

    return-object v0
.end method

.method public normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFirstChild()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v2, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v4, v4

    invoke-virtual {v1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/16 v2, 0x3d

    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    :goto_0
    const/16 v5, 0x31

    if-eq v4, v5, :cond_1

    if-ne v4, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v4, v5, :cond_2

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v4, v3

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v5, v4

    array-length v4, v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v9, v5

    move v5, v4

    move v4, v9

    goto :goto_3

    :catch_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v5, v4

    array-length v4, v4

    goto :goto_2

    :goto_3
    const/16 v6, 0x21

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result v7

    invoke-interface {p1, v7}, Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;->getLineStart(I)I

    move-result v7

    if-le v7, v4, :cond_3

    sub-int/2addr v7, v3

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    :goto_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getNextNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-nez v4, :cond_4

    goto :goto_6

    :cond_4
    move-object v0, v4

    :goto_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getNextNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v8, v8

    invoke-virtual {v1, v4, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    :goto_7
    if-eq v4, v6, :cond_6

    if-ne v4, v2, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    goto :goto_7

    :cond_6
    :goto_8
    if-ne v4, v6, :cond_7

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v3

    goto :goto_d

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v2, v1

    array-length v1, v1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v2, v1

    array-length v1, v1

    goto :goto_d

    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getNextNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v0, v0

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    :goto_9
    if-eq v0, v6, :cond_b

    if-ne v0, v2, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    goto :goto_9

    :cond_b
    :goto_a
    if-ne v0, v6, :cond_c

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v3

    move v2, v0

    goto :goto_c

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v1, v0

    array-length v0, v0
    :try_end_2
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_b
    move v2, v1

    move v1, v0

    goto :goto_c

    :catch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length v1, v0

    array-length v0, v0

    goto :goto_b

    :goto_c
    add-int/lit8 v7, v1, -0x1

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setOpenBodyRangeEnd(I)V

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setOpenBodyRangeStart(I)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setCloseBodyRangeStart(I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setCloseBodyRangeEnd(I)V

    invoke-interface {p1, v2}, Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;->getLineStart(I)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fInsertionPosition:I

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v0

    if-ge v1, v0, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->getCloseBodyPosition()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fInsertionPosition:I

    :cond_d
    iget v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fInsertionPosition:I

    if-gt v0, v7, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->getCloseBodyPosition()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fInsertionPosition:I

    :cond_e
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    return-void
.end method

.method public normalizeEndPosition(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 1

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz p1, :cond_1

    instance-of p2, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->getCloseBodyPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalizeStartPosition(ILorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    :goto_1
    return-void
.end method

.method public offset(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->offset(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fExtendsRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fImplementsRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfacesRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclassRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    return-void
.end method

.method public setAnnotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fIsAnnotation:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setClass(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setSuperclass(Ljava/lang/String;)V

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setSuperInterfaces([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setClass(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    if-eqz p1, :cond_0

    const-string p1, "class"

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeKeyword:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "interface"

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeKeyword:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setSuperclass(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCloseBodyRangeEnd(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setCloseBodyRangeStart(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setEnum(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fIsEnum:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setClass(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setSuperclass(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getChildren()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/jdom/IDOMNode;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/jdom/IDOMMethod;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/jdom/IDOMMethod;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_nullName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOpenBodyRangeEnd(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setOpenBodyRangeStart(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setSuperInterfaces([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x200

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfaces:[C

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfaces:[C

    :goto_1
    return-void

    :cond_1
    if-lez v1, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_2
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_nullInterfaces:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSuperclass(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclass:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public setTypeKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeKeyword:Ljava/lang/String;

    return-void
.end method

.method public setTypeParameters([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeParameters:[Ljava/lang/String;

    return-void
.end method

.method public shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fCloseBodyRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fExtendsRange:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fExtendsRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fImplementsRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fImplementsRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfaces:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfaces:[C

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfacesRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fInterfacesRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fOpenBodyRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclass:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclass:Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclassRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperclassRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fSuperInterfaces:[Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeKeyword:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeKeyword:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeRange:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->fTypeRange:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TYPE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
