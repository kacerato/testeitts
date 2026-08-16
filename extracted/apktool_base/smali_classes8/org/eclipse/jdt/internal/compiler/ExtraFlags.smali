.class public final Lorg/eclipse/jdt/internal/compiler/ExtraFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HasNonPrivateStaticMemberTypes:I = 0x1

.field public static final IsLocalType:I = 0x4

.field public static final IsMemberType:I = 0x2

.field public static final ParameterTypesStoredAsSignature:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtraFlags(Lorg/eclipse/jdt/core/IType;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 6
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->isMember()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7
    :goto_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 8
    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    if-nez p0, :cond_2

    move v2, v1

    goto :goto_1

    .line 9
    :cond_2
    array-length v2, p0

    :goto_1
    if-lez v2, :cond_5

    :goto_2
    if-lt v1, v2, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v3

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_4

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v0
.end method

.method public static getExtraFlags(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I
    .locals 5

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez p0, :cond_1

    move v2, v1

    goto :goto_1

    .line 13
    :cond_1
    array-length v2, p0

    :goto_1
    if-lez v2, :cond_4

    :goto_2
    if-lt v1, v2, :cond_2

    goto :goto_3

    .line 14
    :cond_2
    aget-object v3, p0, v1

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return v0
.end method

.method public static getExtraFlags(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isNestedType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    move-result-object p0

    if-nez p0, :cond_2

    move v2, v1

    goto :goto_1

    .line 4
    :cond_2
    array-length v2, p0

    :goto_1
    if-lez v2, :cond_5

    :goto_2
    if-lt v1, v2, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;->getModifiers()I

    move-result v3

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_4

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v0
.end method
