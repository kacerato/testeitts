.class public final Lorg/eclipse/jdt/core/NamingConventions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;
    }
.end annotation


# static fields
.field public static final BK_NAME:I = 0x1

.field public static final BK_TYPE_NAME:I = 0x2

.field private static final GETTER_BOOL_NAME:[C

.field private static final GETTER_NAME:[C

.field private static final SETTER_NAME:[C

.field public static final VK_INSTANCE_FIELD:I = 0x2

.field public static final VK_LOCAL:I = 0x5

.field public static final VK_PARAMETER:I = 0x4

.field public static final VK_STATIC_FIELD:I = 0x1

.field public static final VK_STATIC_FINAL_FIELD:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "is"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/NamingConventions;->GETTER_BOOL_NAME:[C

    const-string v0, "get"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/NamingConventions;->GETTER_NAME:[C

    const-string v0, "set"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/NamingConventions;->SETTER_NAME:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertCharsToString([[C)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    :goto_1
    if-lt v0, v1, :cond_1

    return-object v2

    :cond_1
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static convertStringToChars([Ljava/lang/String;)[[C
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    new-array v2, v1, [[C

    :goto_1
    if-lt v0, v1, :cond_1

    return-object v2

    :cond_1
    aget-object v3, p0, v0

    if-nez v3, :cond_2

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    aput-object v3, v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getBaseName(ILjava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->getBaseName(ILorg/eclipse/jdt/core/IJavaProject;[CZ)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFieldVariableKind(I)I
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/eclipse/jdt/core/Flags;->isFinal(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static removePrefixAndSuffixForArgumentName(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/NamingConventions;->removePrefixAndSuffixForArgumentName(Lorg/eclipse/jdt/core/IJavaProject;[C)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removePrefixAndSuffixForArgumentName(Lorg/eclipse/jdt/core/IJavaProject;[C)[C
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->removeVariablePrefixAndSuffix(ILorg/eclipse/jdt/core/IJavaProject;[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static removePrefixAndSuffixForFieldName(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/NamingConventions;->removePrefixAndSuffixForFieldName(Lorg/eclipse/jdt/core/IJavaProject;[CI)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removePrefixAndSuffixForFieldName(Lorg/eclipse/jdt/core/IJavaProject;[CI)[C
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 2
    :goto_0
    invoke-static {p2, p0, p1}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->removeVariablePrefixAndSuffix(ILorg/eclipse/jdt/core/IJavaProject;[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static removePrefixAndSuffixForLocalVariableName(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/NamingConventions;->removePrefixAndSuffixForLocalVariableName(Lorg/eclipse/jdt/core/IJavaProject;[C)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removePrefixAndSuffixForLocalVariableName(Lorg/eclipse/jdt/core/IJavaProject;[C)[C
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->removeVariablePrefixAndSuffix(ILorg/eclipse/jdt/core/IJavaProject;[C)[C

    move-result-object p0

    return-object p0
.end method

.method private static suggestAccessorName(Lorg/eclipse/jdt/core/IJavaProject;[CI)[C
    .locals 1

    invoke-static {p2}, Lorg/eclipse/jdt/core/NamingConventions;->getFieldVariableKind(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, p0, p1, v0}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->getBaseName(ILorg/eclipse/jdt/core/IJavaProject;[CZ)[C

    move-result-object p0

    array-length p1, p0

    if-lez p1, :cond_1

    aget-char p1, p0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLowerCase(C)Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, p0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    aget-char p1, p0, p2

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    aget-char p1, p0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toUpperCase(C)C

    move-result p1

    aput-char p1, p0, v0

    :cond_1
    return-object p0
.end method

.method public static suggestArgumentNames(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 9
    invoke-static {p4}, Lorg/eclipse/jdt/core/NamingConventions;->convertStringToChars([Ljava/lang/String;)[[C

    move-result-object p4

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestArgumentNames(Lorg/eclipse/jdt/core/IJavaProject;[C[CI[[C)[[C

    move-result-object p0

    .line 11
    invoke-static {p0}, Lorg/eclipse/jdt/core/NamingConventions;->convertCharsToString([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suggestArgumentNames(Lorg/eclipse/jdt/core/IJavaProject;[C[CI[[C)[[C
    .locals 9

    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 2
    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v2

    .line 3
    new-instance p1, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x2

    move-object v3, p0

    move v4, p3

    move-object v6, p4

    move-object v8, p1

    .line 4
    invoke-static/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->suggestVariableNames(II[CLorg/eclipse/jdt/core/IJavaProject;I[C[[CZLorg/eclipse/jdt/internal/core/INamingRequestor;)V

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->getResults()[[C

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0
.end method

.method public static suggestFieldNames(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 10
    invoke-static {p5}, Lorg/eclipse/jdt/core/NamingConventions;->convertStringToChars([Ljava/lang/String;)[[C

    move-result-object v5

    move-object v0, p0

    move v3, p3

    move v4, p4

    .line 11
    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/NamingConventions;->suggestFieldNames(Lorg/eclipse/jdt/core/IJavaProject;[C[CII[[C)[[C

    move-result-object p0

    .line 12
    invoke-static {p0}, Lorg/eclipse/jdt/core/NamingConventions;->convertCharsToString([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suggestFieldNames(Lorg/eclipse/jdt/core/IJavaProject;[C[CII[[C)[[C
    .locals 9

    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/16 p1, 0x2e

    .line 2
    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v2

    .line 3
    new-instance p1, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;-><init>()V

    .line 4
    invoke-static {p4}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    :goto_0
    move v0, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x2

    move-object v3, p0

    move v4, p3

    move-object v6, p5

    move-object v8, p1

    .line 5
    invoke-static/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->suggestVariableNames(II[CLorg/eclipse/jdt/core/IJavaProject;I[C[[CZLorg/eclipse/jdt/internal/core/INamingRequestor;)V

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->getResults()[[C

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    :goto_2
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0
.end method

.method public static suggestGetterName(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;IZ[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 11
    invoke-static {p4}, Lorg/eclipse/jdt/core/NamingConventions;->convertStringToChars([Ljava/lang/String;)[[C

    move-result-object p4

    .line 12
    invoke-static {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestGetterName(Lorg/eclipse/jdt/core/IJavaProject;[CIZ[[C)[C

    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suggestGetterName(Lorg/eclipse/jdt/core/IJavaProject;[CIZ[[C)[C
    .locals 3

    if-eqz p3, :cond_1

    .line 1
    invoke-static {p2}, Lorg/eclipse/jdt/core/NamingConventions;->getFieldVariableKind(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p3, p0, p1, v0}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->getBaseName(ILorg/eclipse/jdt/core/IJavaProject;[CZ)[C

    move-result-object p3

    .line 2
    sget-object v0, Lorg/eclipse/jdt/core/NamingConventions;->GETTER_BOOL_NAME:[C

    array-length v1, v0

    .line 3
    invoke-static {v0, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    array-length v2, p3

    if-le v2, v1, :cond_0

    aget-char v1, p3, v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p3, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestNewName([C[[C)[C

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/NamingConventions;->suggestAccessorName(Lorg/eclipse/jdt/core/IJavaProject;[CI)[C

    move-result-object p0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    .line 7
    invoke-static {p0, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestNewName([C[[C)[C

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    sget-object p3, Lorg/eclipse/jdt/core/NamingConventions;->GETTER_NAME:[C

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/NamingConventions;->suggestAccessorName(Lorg/eclipse/jdt/core/IJavaProject;[CI)[C

    move-result-object p0

    invoke-static {p3, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    .line 9
    invoke-static {p0, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestNewName([C[[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static suggestLocalVariableNames(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 9
    invoke-static {p4}, Lorg/eclipse/jdt/core/NamingConventions;->convertStringToChars([Ljava/lang/String;)[[C

    move-result-object p4

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestLocalVariableNames(Lorg/eclipse/jdt/core/IJavaProject;[C[CI[[C)[[C

    move-result-object p0

    .line 11
    invoke-static {p0}, Lorg/eclipse/jdt/core/NamingConventions;->convertCharsToString([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suggestLocalVariableNames(Lorg/eclipse/jdt/core/IJavaProject;[C[CI[[C)[[C
    .locals 9

    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 2
    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v2

    .line 3
    new-instance p1, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x5

    const/4 v1, 0x2

    move-object v3, p0

    move v4, p3

    move-object v6, p4

    move-object v8, p1

    .line 4
    invoke-static/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->suggestVariableNames(II[CLorg/eclipse/jdt/core/IJavaProject;I[C[[CZLorg/eclipse/jdt/internal/core/INamingRequestor;)V

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->getResults()[[C

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0
.end method

.method private static suggestNewName([C[[C)[C
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    move-object v3, p0

    :goto_0
    move v2, v0

    :goto_1
    array-length v4, p1

    if-lt v2, v4, :cond_1

    return-object v3

    :cond_1
    aget-object v4, p1, v2

    invoke-static {v3, v4, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {p0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static suggestSetterName(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;IZ[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 13
    invoke-static {p4}, Lorg/eclipse/jdt/core/NamingConventions;->convertStringToChars([Ljava/lang/String;)[[C

    move-result-object p4

    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestSetterName(Lorg/eclipse/jdt/core/IJavaProject;[CIZ[[C)[C

    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suggestSetterName(Lorg/eclipse/jdt/core/IJavaProject;[CIZ[[C)[C
    .locals 2

    if-eqz p3, :cond_1

    .line 1
    invoke-static {p2}, Lorg/eclipse/jdt/core/NamingConventions;->getFieldVariableKind(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p3, p0, p1, v0}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->getBaseName(ILorg/eclipse/jdt/core/IJavaProject;[CZ)[C

    move-result-object p3

    .line 2
    sget-object v0, Lorg/eclipse/jdt/core/NamingConventions;->GETTER_BOOL_NAME:[C

    array-length v1, v0

    .line 3
    invoke-static {v0, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    array-length v0, p3

    if-le v0, v1, :cond_0

    aget-char v0, p3, v1

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    array-length p1, p3

    invoke-static {p3, v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    .line 6
    sget-object p3, Lorg/eclipse/jdt/core/NamingConventions;->SETTER_NAME:[C

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/NamingConventions;->suggestAccessorName(Lorg/eclipse/jdt/core/IJavaProject;[CI)[C

    move-result-object p0

    invoke-static {p3, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    .line 7
    invoke-static {p0, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestNewName([C[[C)[C

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    sget-object p3, Lorg/eclipse/jdt/core/NamingConventions;->SETTER_NAME:[C

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/NamingConventions;->suggestAccessorName(Lorg/eclipse/jdt/core/IJavaProject;[CI)[C

    move-result-object p0

    invoke-static {p3, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    .line 9
    invoke-static {p0, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestNewName([C[[C)[C

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    sget-object p3, Lorg/eclipse/jdt/core/NamingConventions;->SETTER_NAME:[C

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/NamingConventions;->suggestAccessorName(Lorg/eclipse/jdt/core/IJavaProject;[CI)[C

    move-result-object p0

    invoke-static {p3, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    .line 11
    invoke-static {p0, p4}, Lorg/eclipse/jdt/core/NamingConventions;->suggestNewName([C[[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static suggestVariableNames(IILjava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;I[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 10

    new-instance v9, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;

    invoke-direct {v9}, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {p5}, Lorg/eclipse/jdt/core/NamingConventions;->convertStringToChars([Ljava/lang/String;)[[C

    move-result-object v6

    move v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move/from16 v7, p6

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->suggestVariableNames(II[CLorg/eclipse/jdt/core/IJavaProject;I[C[[CZLorg/eclipse/jdt/internal/core/INamingRequestor;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->getResults()[[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/NamingConventions;->convertCharsToString([[C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
