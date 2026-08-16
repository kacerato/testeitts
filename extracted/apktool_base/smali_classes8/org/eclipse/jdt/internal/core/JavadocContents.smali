.class public Lorg/eclipse/jdt/internal/core/JavadocContents;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNKNOWN_FORMAT:[I


# instance fields
.field private childrenStart:I

.field private content:[C

.field private fieldAnchorIndexes:[I

.field private fieldAnchorIndexesCount:I

.field private fieldDocRanges:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

.field private fieldLastAnchorFoundIndex:I

.field private hasComputedChildrenSections:Z

.field private indexOfAllMethodsBottom:I

.field private indexOfAllMethodsTop:I

.field private indexOfConstructorDetails:I

.field private indexOfEndOfClassData:I

.field private indexOfFieldDetails:I

.field private indexOfFieldsBottom:I

.field private indexOfMethodDetails:I

.field private methodAnchorIndexes:[I

.field private methodAnchorIndexesCount:I

.field private methodDocRanges:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

.field private methodLastAnchorFoundIndex:I

.field private tempAnchorIndexes:[I

.field private tempAnchorIndexesCount:I

.field private tempLastAnchorFoundIndex:I

.field private type:Lorg/eclipse/jdt/internal/core/BinaryType;

.field private typeDocRange:[I

.field private unknownFormatAnchorIndexes:[I

.field private unknownFormatAnchorIndexesCount:I

.field private unknownFormatLastAnchorFoundIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->hasComputedChildrenSections:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/BinaryType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/JavadocContents;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    return-void
.end method

.method private computeChildRange(I[CI)[I
    .locals 3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 18
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_SUFFIX:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    array-length p2, p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {v1, v2, p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 19
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getAnchorIndex(I)[I

    move-result-object v1

    aget v1, v1, p2

    .line 20
    sget v2, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_SUFFIX_LENGTH:I

    add-int/2addr p1, v2

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [I

    aput p1, v0, p2

    const/4 p1, 0x1

    aput p3, v0, p1

    goto :goto_1

    .line 23
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    goto :goto_1

    .line 24
    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    :goto_1
    return-object v0
.end method

.method private computeChildRange([CI)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    move v0, v2

    .line 2
    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    if-lt v0, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    aget v3, v3, v0

    if-eq v3, v1, :cond_1

    .line 4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {p1, v4, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    aput v1, v2, v0

    .line 6
    invoke-direct {p0, v3, p1, p2}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildRange(I[CI)[I

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    .line 8
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getAnchorIndex(I)[I

    move-result-object v0

    .line 9
    :goto_2
    aget v3, v0, v2

    if-eq v3, v1, :cond_6

    if-lt v3, p2, :cond_3

    if-eq p2, v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    .line 10
    aget v0, v0, v5

    add-int/2addr v3, v0

    .line 11
    iput v3, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {p1, v0, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-direct {p0, v3, p1, p2}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildRange(I[CI)[I

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    array-length v5, v0

    iget v6, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v6, 0x14

    .line 15
    new-array v5, v5, [I

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    invoke-static {v0, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    aput v3, v0, v5

    .line 17
    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getAnchorIndex(I)[I

    move-result-object v0

    goto :goto_2

    :cond_6
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private computeChildrenSections()V
    .locals 5

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->SEPARATOR_START:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->childrenStart:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->childrenStart:I

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavadocConstants;->FIELD_DETAIL:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v2, v4, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfFieldDetails:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavadocConstants;->CONSTRUCTOR_DETAIL:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v2, v4, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfConstructorDetails:I

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavadocConstants;->METHOD_DETAIL:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v2, v4, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfMethodDetails:I

    if-ne v2, v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavadocConstants;->END_OF_CLASS_DATA:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v2, v4, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfEndOfClassData:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfConstructorDetails:I

    if-eq v2, v1, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    iget v3, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfMethodDetails:I

    if-eq v3, v1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    iput v3, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfFieldsBottom:I

    if-eq v2, v1, :cond_6

    goto :goto_4

    :cond_6
    iget v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfMethodDetails:I

    :goto_4
    iput v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfAllMethodsTop:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfAllMethodsBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->hasComputedChildrenSections:Z

    return-void
.end method

.method private computeFieldRange(Lorg/eclipse/jdt/core/IField;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->hasComputedChildrenSections:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildrenSections()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfFieldDetails:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfFieldsBottom:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldAnchorIndexes:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getFields()[Lorg/eclipse/jdt/core/IField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldAnchorIndexes:[I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldAnchorIndexesCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfFieldDetails:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldLastAnchorFoundIndex:I

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldAnchorIndexes:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldAnchorIndexesCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldLastAnchorFoundIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfFieldsBottom:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildRange([CI)[I

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldLastAnchorFoundIndex:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldAnchorIndexesCount:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldAnchorIndexes:[I

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexes:[I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexes:[I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexesCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->childrenStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatLastAnchorFoundIndex:I

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexes:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexesCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatLastAnchorFoundIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfFieldsBottom:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildRange([CI)[I

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatLastAnchorFoundIndex:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexesCount:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexes:[I

    :goto_1
    return-object p1
.end method

.method private computeMethodAnchorPrefixEnd(Lorg/eclipse/jdt/internal/core/BinaryMethod;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->isMember()Z

    move-result v0

    const/16 v1, 0x2e

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v0

    const/16 v3, 0x2f

    if-eqz v0, :cond_5

    invoke-static {v0, v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getFlags()I

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/Flags;->isVarargs(I)Z

    move-result v1

    invoke-static {v2, v0, v6, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->toAnchor(I[CLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getFlags()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Flags;->isVarargs(I)Z

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->isMember()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x28

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    add-int/lit8 v3, p1, 0x1

    const/16 v4, 0x2c

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v1, :cond_7

    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    :cond_7
    const/16 v1, 0x29

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private computeMethodRange(Lorg/eclipse/jdt/core/IMethod;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->hasComputedChildrenSections:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildrenSections()V

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeMethodAnchorPrefixEnd(Lorg/eclipse/jdt/internal/core/BinaryMethod;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfAllMethodsTop:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfAllMethodsBottom:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodAnchorIndexes:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getFields()[Lorg/eclipse/jdt/core/IField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodAnchorIndexes:[I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodAnchorIndexesCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfAllMethodsTop:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodLastAnchorFoundIndex:I

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodAnchorIndexes:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodAnchorIndexesCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodLastAnchorFoundIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfAllMethodsBottom:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildRange([CI)[I

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getJavadoc8Anchor([C)[C

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfAllMethodsBottom:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildRange([CI)[I

    move-result-object v0

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodLastAnchorFoundIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodAnchorIndexesCount:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodAnchorIndexes:[I

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexes:[I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexes:[I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexesCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->childrenStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatLastAnchorFoundIndex:I

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexes:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexesCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatLastAnchorFoundIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfFieldsBottom:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildRange([CI)[I

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getJavadoc8Anchor([C)[C

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->indexOfAllMethodsBottom:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeChildRange([CI)[I

    move-result-object p1

    move-object v0, p1

    :cond_6
    iget p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempLastAnchorFoundIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatLastAnchorFoundIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexesCount:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexesCount:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->tempAnchorIndexes:[I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->unknownFormatAnchorIndexes:[I

    :goto_1
    return-object v0
.end method

.method private computeTypeRange()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->START_OF_CLASS_DATA:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->typeDocRange:[I

    return-void

    :cond_0
    sget-object v3, Lorg/eclipse/jdt/internal/core/JavadocConstants;->SEPARATOR_START:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v3, v4, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v3

    if-ne v3, v1, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->typeDocRange:[I

    return-void

    :cond_1
    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->NESTED_CLASS_SUMMARY:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/BinaryType;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ENUM_CONSTANT_SUMMARY:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    :cond_2
    if-ne v4, v1, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/BinaryType;->isAnnotation()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANNOTATION_TYPE_REQUIRED_MEMBER_SUMMARY:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    if-ne v4, v1, :cond_3

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANNOTATION_TYPE_OPTIONAL_MEMBER_SUMMARY:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    :cond_3
    if-ne v4, v1, :cond_4

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->FIELD_SUMMARY:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    :cond_4
    if-ne v4, v1, :cond_5

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->CONSTRUCTOR_SUMMARY:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    :cond_5
    if-ne v4, v1, :cond_6

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->METHOD_SUMMARY:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    :cond_6
    if-ne v4, v1, :cond_7

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->END_OF_CLASS_DATA:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->childrenStart:I

    :goto_0
    if-ne v4, v1, :cond_8

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->typeDocRange:[I

    return-void

    :cond_8
    sget v3, Lorg/eclipse/jdt/internal/core/JavadocConstants;->START_OF_CLASS_DATA_LENGTH:I

    add-int/2addr v0, v3

    const-string v3, "<P>"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v3, v5, v2, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZII)I

    move-result v3

    const-string v5, "<DIV CLASS=\"BLOCK\">"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v5, v6, v2, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZII)I

    move-result v2

    if-eq v3, v1, :cond_9

    if-ge v3, v4, :cond_9

    goto :goto_1

    :cond_9
    move v3, v4

    :goto_1
    if-eq v2, v1, :cond_a

    if-ge v2, v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v3

    :goto_2
    if-eq v2, v4, :cond_b

    move v0, v2

    :cond_b
    filled-new-array {v0, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->typeDocRange:[I

    return-void
.end method

.method private getAnchorIndex(I)[I
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_PREFIX_START:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget p1, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_PREFIX_START_LENGTH:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1

    :cond_0
    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_PREFIX_START_2:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v0, v3, v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    :cond_1
    if-ne v0, v1, :cond_2

    filled-new-array {v1, v1}, [I

    move-result-object p1

    return-object p1

    :cond_2
    sget p1, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_PREFIX_START2_LENGTH:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method private static getJavadoc8Anchor([C)[C
    .locals 6

    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_1

    array-length p0, p0

    if-eq v3, p0, :cond_0

    invoke-static {v0, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    aget-char v4, p0, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_3

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_4

    const/16 v5, 0x28

    if-eq v4, v5, :cond_3

    const/16 v5, 0x29

    if-eq v4, v5, :cond_3

    add-int/lit8 v5, v3, 0x1

    aput-char v4, v0, v3

    move v3, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x3a

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x2

    const/16 v5, 0x41

    aput-char v5, v0, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2d

    aput-char v5, v0, v3

    move v3, v4

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFieldDoc(Lorg/eclipse/jdt/core/IField;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldDocRanges:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldDocRanges:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->get(Ljava/lang/Object;)[I

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeFieldRange(Lorg/eclipse/jdt/core/IField;)[I

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->fieldDocRanges:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    invoke-virtual {v2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    if-eq v0, v1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_4
    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getMethodDoc(Lorg/eclipse/jdt/core/IMethod;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodDocRanges:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodDocRanges:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->get(Ljava/lang/Object;)[I

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeMethodRange(Lorg/eclipse/jdt/core/IMethod;)[I

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->methodDocRanges:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    invoke-virtual {v2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    if-eq v0, v1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_4
    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getModuleDoc()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavadocConstants;->MODULE_DESCRIPTION_START:[C

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavadocConstants;->BOTTOM_NAVBAR:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v1, v4, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageDoc()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavadocConstants;->PACKAGE_DESCRIPTION_START2:[C

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->PACKAGE_DESCRIPTION_START:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v0, v4, v3, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    :cond_1
    if-eq v0, v2, :cond_3

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_SUFFIX:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_2
    sget-object v4, Lorg/eclipse/jdt/internal/core/JavadocConstants;->H2_PREFIX:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v4, v5, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    if-eq v4, v2, :cond_4

    sget-object v5, Lorg/eclipse/jdt/internal/core/JavadocConstants;->H2_SUFFIX:[C

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v5, v6, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v4

    if-eq v4, v2, :cond_4

    sget v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->H2_SUFFIX_LENGTH:I

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->PACKAGE_DESCRIPTION_START3:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v0, v4, v3, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v0

    :cond_4
    :goto_0
    if-eq v0, v2, :cond_6

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavadocConstants;->BOTTOM_NAVBAR:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    invoke-static {v1, v4, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    array-length v1, v1

    sub-int/2addr v1, v4

    :cond_5
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v1
.end method

.method public getTypeDoc()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->typeDocRange:[I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavadocContents;->computeTypeRange()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->typeDocRange:[I

    if-eqz v0, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavadocContents;->UNKNOWN_FORMAT:[I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->content:[C

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3f1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavadocContents;->type:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_3
    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
