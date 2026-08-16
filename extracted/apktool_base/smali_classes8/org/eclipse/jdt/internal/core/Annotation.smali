.class public Lorg/eclipse/jdt/internal/core/Annotation;
.super Lorg/eclipse/jdt/internal/core/SourceRefElement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IAnnotation;


# static fields
.field public static final NO_ANNOTATIONS:[Lorg/eclipse/jdt/core/IAnnotation;

.field public static final NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;


# instance fields
.field protected memberValuePairName:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/IAnnotation;

    sput-object v1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/core/IAnnotation;

    new-array v0, v0, [Lorg/eclipse/jdt/core/IMemberValuePair;

    sput-object v0, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/Annotation;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/Annotation;->memberValuePairName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/Annotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/Annotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/Annotation;->memberValuePairName:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/Annotation;->memberValuePairName:Ljava/lang/String;

    if-eqz v0, :cond_2

    return v1

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/Annotation;->memberValuePairName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClassFile()Lorg/eclipse/jdt/core/IClassFile;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringMember()Lorg/eclipse/jdt/core/IMember;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Annotation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x7d

    return v0
.end method

.method public getMemberValuePairs()[Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->members:[Lorg/eclipse/jdt/core/IMemberValuePair;

    return-object v0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/core/IMemberValuePair;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    return-object v2

    :cond_1
    aget-object v4, v0, v3

    new-instance v5, Lorg/eclipse/jdt/internal/core/MemberValuePair;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/internal/core/MemberValuePair;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v5, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/core/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v5, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Annotation;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getNameRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;

    new-instance v1, Lorg/eclipse/jdt/core/SourceRange;

    iget v2, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->nameStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->nameEnd:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Annotation;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Annotation;->memberValuePairName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Annotation;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Annotation;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
