.class public Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BINARY_SEARCH_THRESHOLD:I = 0x10

.field private static final CHAR_ARR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[C>;"
        }
    .end annotation
.end field

.field private static final CHAR_CHAR_ARR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[[C>;"
        }
    .end annotation
.end field

.field static final EmptyQualifiedNames:[[[C

.field static final EmptySimpleNames:[[C

.field static InternedQualifiedNames:[Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet; = null

.field static InternedSimpleNames:[Lorg/eclipse/jdt/internal/core/builder/NameSet; = null

.field static final MaxQualifiedNames:I = 0x7

.field static final MaxSimpleNames:I = 0x1e

.field public static REFERENCE_COLLECTION_DEBUG:Z

.field static final WellKnownQualifiedNames:[[[C

.field static final WellKnownSimpleNames:[[C


# instance fields
.field qualifiedNameReferences:[[[C

.field rootReferences:[[C

.field simpleNameReferences:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 19

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_RUNTIMEEXCEPTION:[[C

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_THROWABLE:[[C

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG:[[C

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA:[C

    filled-new-array {v14}, [[C

    move-result-object v4

    const/4 v11, 0x3

    new-array v0, v11, [C

    fill-array-data v0, :array_0

    filled-new-array {v0}, [[C

    move-result-object v5

    new-array v0, v11, [C

    fill-array-data v0, :array_1

    filled-new-array {v0}, [[C

    move-result-object v6

    sget-object v18, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v7, v18

    filled-new-array/range {v0 .. v7}, [[[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->WellKnownQualifiedNames:[[[C

    const/4 v0, 0x2

    aget-object v1, v8, v0

    aget-object v12, v9, v0

    aget-object v13, v10, v0

    sget-object v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LANG:[C

    new-array v0, v11, [C

    fill-array-data v0, :array_2

    new-array v2, v11, [C

    fill-array-data v2, :array_3

    move-object v11, v1

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    filled-new-array/range {v11 .. v17}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->WellKnownSimpleNames:[[C

    const/4 v0, 0x0

    new-array v1, v0, [[[C

    sput-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    sput-object v18, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptySimpleNames:[[C

    const/4 v1, 0x7

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;

    sput-object v2, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->InternedQualifiedNames:[Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;

    const/16 v2, 0x1e

    new-array v3, v2, [Lorg/eclipse/jdt/internal/core/builder/NameSet;

    sput-object v3, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->InternedSimpleNames:[Lorg/eclipse/jdt/internal/core/builder/NameSet;

    move v3, v0

    :goto_0
    const/16 v4, 0x25

    if-lt v3, v1, :cond_1

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/k;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/builder/k;-><init>()V

    sput-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/l;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/builder/l;-><init>()V

    sput-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->REFERENCE_COLLECTION_DEBUG:Z

    return-void

    :cond_0
    sget-object v3, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->InternedSimpleNames:[Lorg/eclipse/jdt/internal/core/builder/NameSet;

    new-instance v5, Lorg/eclipse/jdt/internal/core/builder/NameSet;

    invoke-direct {v5, v4}, Lorg/eclipse/jdt/internal/core/builder/NameSet;-><init>(I)V

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v5, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->InternedQualifiedNames:[Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;

    invoke-direct {v6, v4}, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;-><init>(I)V

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x6fs
        0x72s
        0x67s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x63s
        0x6fs
        0x6ds
    .end array-data

    nop

    :array_2
    .array-data 2
        0x6fs
        0x72s
        0x67s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x63s
        0x6fs
        0x6ds
    .end array-data
.end method

.method public constructor <init>([[[C[[C[[C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames([[[CZ)[[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZ)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    invoke-static {p3, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZ)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    return-void
.end method

.method public static synthetic a([C[C)I
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->compareCharArray([C[C)I

    move-result p0

    return p0
.end method

.method private assertIncludes(Z[C)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([C)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mismatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, " should not "

    goto :goto_0

    :cond_0
    const-string p1, " should "

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " be included in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void
.end method

.method private assertIncludes(Z[[C)V
    .locals 2

    .line 6
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([[C)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mismatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, " should not "

    goto :goto_0

    :cond_0
    const-string p1, " should "

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " be included in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNamesToString([[[C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void
.end method

.method private assertIncludes(Z[[[C[[C[[C)V
    .locals 6

    .line 11
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([[[C[[C[[C)Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNamesToString([[[C)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNamesToString([[[C)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 18
    const-string p2, "Mismatched includes(..): ReferenceCollection([%s], %s, %s).includes([%s], %s, %s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static compareCharArray([C[C)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v2, v1

    if-nez v2, :cond_2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-char v2, p0, v0

    aget-char v3, p1, v0

    sub-int/2addr v2, v3

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public static compareCharCharArray([[C[[C)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v2, v1

    if-nez v2, :cond_2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->compareCharArray([C[C)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private debugIncludes([C)Z
    .locals 4

    .line 31
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    .line 32
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    aget-object v3, v3, v2

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private debugIncludes([[C)Z
    .locals 4

    .line 33
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    .line 34
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    aget-object v3, v3, v2

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private debugIncludes([[[C[[C[[C)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    array-length v1, p3

    move v2, v0

    move v3, v2

    :goto_0
    if-nez v2, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    aget-object v2, p3, v3

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugInsideRoot([C)Z

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 p3, 0x1

    if-eqz p2, :cond_11

    if-nez p1, :cond_3

    goto/16 :goto_9

    .line 3
    :cond_3
    array-length v1, p2

    .line 4
    array-length v2, p1

    .line 5
    const-string v3, " to "

    const-string v4, "Found match in "

    if-gt v1, v2, :cond_a

    move v5, v0

    :goto_2
    if-lt v5, v1, :cond_4

    goto :goto_6

    .line 6
    :cond_4
    aget-object v6, p2, v5

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([C)Z

    move-result v6

    if-eqz v6, :cond_9

    move v1, v0

    :goto_3
    if-lt v1, v2, :cond_5

    return v0

    .line 7
    :cond_5
    aget-object v6, p1, v1

    .line 8
    array-length v7, v6

    if-ne v7, p3, :cond_6

    aget-object v7, v6, v0

    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([C)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_6
    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([[C)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 9
    :goto_4
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_7

    .line 10
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    aget-object p2, p2, v5

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return p3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    move v5, v0

    :goto_5
    if-lt v5, v2, :cond_b

    :goto_6
    return v0

    .line 13
    :cond_b
    aget-object v6, p1, v5

    .line 14
    array-length v7, v6

    if-ne v7, p3, :cond_c

    aget-object v7, v6, v0

    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([C)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_7

    :cond_c
    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([[C)Z

    move-result v7

    if-eqz v7, :cond_10

    :goto_7
    move p1, v0

    :goto_8
    if-lt p1, v1, :cond_d

    return v0

    .line 15
    :cond_d
    aget-object v2, p2, p1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([C)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 16
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    return p3

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_11
    :goto_9
    if-nez p2, :cond_13

    if-nez p1, :cond_13

    .line 20
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_12

    .line 21
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Found well known match"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12
    return p3

    :cond_13
    if-nez p1, :cond_17

    .line 22
    array-length v1, p2

    move p1, v0

    :goto_a
    if-lt p1, v1, :cond_14

    goto :goto_c

    .line 23
    :cond_14
    aget-object v2, p2, p1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 24
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found match in well known package to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    return p3

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 26
    :cond_17
    array-length p2, p1

    move v1, v0

    :goto_b
    if-lt v1, p2, :cond_18

    :goto_c
    return v0

    .line 27
    :cond_18
    aget-object v2, p1, v1

    .line 28
    array-length v3, v2

    if-ne v3, p3, :cond_19

    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([C)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_d

    :cond_19
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([[C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 29
    :goto_d
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_1a

    .line 30
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found well known match in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    return p3

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private debugInsideRoot([C)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    aget-object v3, v3, v2

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private doIncludes([[[C[[C[[C)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includesRootName([[C)Z

    move-result p3

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    array-length v2, p1

    if-gt v1, v2, :cond_3

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includesSimpleName([[C)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includesQualifiedName([[[C)Z

    move-result p1

    if-eqz p1, :cond_2

    return p3

    :cond_2
    return v0

    :cond_3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includesQualifiedName([[[C)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includesSimpleName([[C)Z

    move-result p1

    if-eqz p1, :cond_4

    return p3

    :cond_4
    return v0

    :cond_5
    :goto_0
    if-nez p2, :cond_7

    if-nez p1, :cond_7

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Found well known match"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return p3

    :cond_7
    if-nez p1, :cond_8

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includesSimpleName([[C)Z

    move-result p1

    return p1

    :cond_8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includesQualifiedName([[[C)Z

    move-result p1

    return p1
.end method

.method private static ensureContainedInSortedOrder([[C[C)[[C
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[C

    invoke-static {p0, v1, p1, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->insertIntoArray([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method private includesQualifiedName([[[C)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->intersects([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    aget-object v3, p1, v0

    array-length v4, v3

    if-eq v4, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includes([C)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method private includesRootName([[C)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->intersects([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result p1

    return p1
.end method

.method private includesSimpleName([[C)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->intersects([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result p1

    return p1
.end method

.method private static insertIntoArray([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, p1, p3

    add-int/lit8 p2, p3, 0x1

    array-length v0, p0

    sub-int/2addr v0, p3

    invoke-static {p0, p3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static internQualifiedNames(Ljava/util/Set;)[[[C
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[[[C"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    return-object p0

    .line 4
    :cond_1
    new-array v1, v0, [[[C

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p0, 0x0

    .line 6
    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames([[[CZ)[[[C

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x2f

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public static internQualifiedNames(Lorg/eclipse/jdt/internal/core/builder/StringSet;)[[[C
    .locals 7

    if-nez p0, :cond_0

    .line 9
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    return-object p0

    .line 10
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    if-nez v0, :cond_1

    .line 11
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    return-object p0

    .line 12
    :cond_1
    new-array v1, v0, [[[C

    .line 13
    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    .line 14
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    .line 15
    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames([[[CZ)[[[C

    move-result-object p0

    return-object p0

    .line 16
    :cond_2
    aget-object v5, p0, v4

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    const/16 v6, 0x2f

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v5

    aput-object v5, v1, v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static internQualifiedNames([[[C)[[[C
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames([[[CZ)[[[C

    move-result-object p0

    return-object p0
.end method

.method public static internQualifiedNames([[[CZ)[[[C
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames([[[CZZ)[[[C

    move-result-object p0

    return-object p0
.end method

.method public static internQualifiedNames([[[CZZ)[[[C
    .locals 13

    if-nez p0, :cond_0

    .line 20
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    return-object p0

    .line 21
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 22
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    return-object p0

    .line 23
    :cond_1
    new-array v1, v0, [[[C

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v6, v5

    :goto_0
    if-lt v5, v0, :cond_5

    if-le v0, v6, :cond_3

    if-nez v6, :cond_2

    .line 24
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    return-object p0

    .line 25
    :cond_2
    new-array p0, v6, [[[C

    invoke-static {v1, v3, p0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p0

    :cond_3
    if-eqz p2, :cond_4

    if-nez v2, :cond_4

    .line 26
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_4
    return-object v1

    .line 27
    :cond_5
    aget-object v7, p0, v5

    .line 28
    array-length v8, v7

    .line 29
    sget-object v9, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->WellKnownQualifiedNames:[[[C

    array-length v9, v9

    move v10, v3

    :goto_1
    if-lt v10, v9, :cond_6

    goto :goto_2

    .line 30
    :cond_6
    sget-object v11, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->WellKnownQualifiedNames:[[[C

    aget-object v11, v11, v10

    .line 31
    array-length v12, v11

    if-le v8, v12, :cond_a

    .line 32
    :goto_2
    sget-object v9, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->InternedQualifiedNames:[Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;

    const/4 v10, 0x7

    if-gt v8, v10, :cond_7

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_7
    move v8, v3

    :goto_3
    aget-object v8, v9, v8

    .line 33
    invoke-static {v7, v3, v3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZZ)[[C

    move-result-object v7

    if-eqz p2, :cond_9

    if-eqz v2, :cond_9

    if-eqz v4, :cond_8

    .line 34
    invoke-static {v4, v7}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->compareCharCharArray([[C[[C)I

    move-result v4

    if-lez v4, :cond_8

    move v2, v3

    :cond_8
    move-object v4, v7

    :cond_9
    add-int/lit8 v9, v6, 0x1

    .line 35
    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->add([[C)[[C

    move-result-object v7

    aput-object v7, v1, v6

    move v6, v9

    goto :goto_4

    .line 36
    :cond_a
    invoke-static {v7, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz p1, :cond_d

    if-eqz p2, :cond_c

    if-eqz v2, :cond_c

    if-eqz v4, :cond_b

    .line 37
    invoke-static {v4, v7}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->compareCharCharArray([[C[[C)I

    move-result v4

    if-lez v4, :cond_b

    move v2, v3

    :cond_b
    move-object v4, v7

    :cond_c
    add-int/lit8 v7, v6, 0x1

    .line 38
    aput-object v11, v1, v6

    move v6, v7

    :cond_d
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public static internSimpleNames(Ljava/util/Set;)[[C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[[C"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames(Ljava/util/Set;Z)[[C

    move-result-object p0

    return-object p0
.end method

.method public static internSimpleNames(Ljava/util/Set;Z)[[C
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)[[C"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptySimpleNames:[[C

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptySimpleNames:[[C

    return-object p0

    .line 5
    :cond_1
    new-array v1, v0, [[C

    .line 6
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZ)[[C

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public static internSimpleNames(Lorg/eclipse/jdt/internal/core/builder/StringSet;Z)[[C
    .locals 5

    if-nez p0, :cond_0

    .line 10
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptySimpleNames:[[C

    return-object p0

    .line 11
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    if-nez v0, :cond_1

    .line 12
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptySimpleNames:[[C

    return-object p0

    .line 13
    :cond_1
    new-array v1, v0, [[C

    .line 14
    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    .line 15
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_2

    .line 16
    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZ)[[C

    move-result-object p0

    return-object p0

    .line 17
    :cond_2
    aget-object v4, p0, v3

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v1, v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static internSimpleNames([[CZ)[[C
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZZ)[[C

    move-result-object p0

    return-object p0
.end method

.method public static internSimpleNames([[CZZ)[[C
    .locals 13

    if-nez p0, :cond_0

    .line 20
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptySimpleNames:[[C

    return-object p0

    .line 21
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 22
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptySimpleNames:[[C

    return-object p0

    .line 23
    :cond_1
    new-array v1, v0, [[C

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v6, v5

    :goto_0
    if-lt v5, v0, :cond_5

    if-le v0, v6, :cond_3

    if-nez v6, :cond_2

    .line 24
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptySimpleNames:[[C

    return-object p0

    .line 25
    :cond_2
    new-array p0, v6, [[C

    invoke-static {v1, v3, p0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p0

    :cond_3
    if-eqz p2, :cond_4

    if-nez v2, :cond_4

    .line 26
    sget-object p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_4
    return-object v1

    .line 27
    :cond_5
    aget-object v7, p0, v5

    .line 28
    array-length v8, v7

    .line 29
    sget-object v9, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->WellKnownSimpleNames:[[C

    array-length v9, v9

    move v10, v3

    :goto_1
    if-lt v10, v9, :cond_6

    goto :goto_2

    .line 30
    :cond_6
    sget-object v11, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->WellKnownSimpleNames:[[C

    aget-object v11, v11, v10

    .line 31
    array-length v12, v11

    if-le v8, v12, :cond_a

    .line 32
    :goto_2
    sget-object v9, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->InternedSimpleNames:[Lorg/eclipse/jdt/internal/core/builder/NameSet;

    const/16 v10, 0x1e

    if-ge v8, v10, :cond_7

    goto :goto_3

    :cond_7
    move v8, v3

    :goto_3
    aget-object v8, v9, v8

    add-int/lit8 v9, v6, 0x1

    .line 33
    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/core/builder/NameSet;->add([C)[C

    move-result-object v8

    aput-object v8, v1, v6

    if-eqz p2, :cond_9

    if-eqz v2, :cond_9

    if-eqz v4, :cond_8

    .line 34
    invoke-static {v4, v7}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->compareCharArray([C[C)I

    move-result v4

    if-lez v4, :cond_8

    move v2, v3

    :cond_8
    move-object v4, v7

    :cond_9
    move v6, v9

    goto :goto_4

    .line 35
    :cond_a
    invoke-static {v7, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v12

    if-eqz v12, :cond_e

    if-nez p1, :cond_d

    add-int/lit8 v8, v6, 0x1

    .line 36
    aput-object v11, v1, v6

    if-eqz p2, :cond_c

    if-eqz v2, :cond_c

    if-eqz v4, :cond_b

    .line 37
    invoke-static {v4, v7}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->compareCharArray([C[C)I

    move-result v4

    if-lez v4, :cond_b

    move v2, v3

    :cond_b
    move-object v4, v7

    :cond_c
    move v6, v8

    :cond_d
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method private static intersects([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)Z"
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_6

    if-lt v4, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, p0, v3

    aget-object v6, p1, v4

    invoke-interface {p2, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    return v8

    :cond_2
    const/16 v9, 0x10

    if-gez v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    sub-int v5, v0, v3

    if-le v5, v9, :cond_0

    invoke-static {p0, v3, v0, v6, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    if-ltz v3, :cond_3

    return v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    sub-int v6, v1, v4

    if-le v6, v9, :cond_0

    invoke-static {p1, v4, v1, v5, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    if-ltz v4, :cond_5

    return v8

    :cond_5
    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    goto :goto_0

    :cond_6
    :goto_1
    return v2
.end method

.method private static isWellKnownQualifiedName([[C)Z
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->WellKnownQualifiedNames:[[[C

    array-length v0, v0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->WellKnownQualifiedNames:[[[C

    aget-object v4, v4, v3

    array-length v5, v4

    if-le v1, v5, :cond_1

    :goto_1
    return v2

    :cond_1
    invoke-static {p0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static qualifiedNamesToString([[[C)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/j;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/builder/j;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static sortedArrayContains([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)Z"
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    move p2, v3

    :goto_0
    if-lt p2, v0, :cond_0

    return v3

    :cond_0
    aget-object v1, p0, p2

    if-ne p1, v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_3

    return v2

    :cond_3
    return v3
.end method


# virtual methods
.method public addDependencies([Ljava/lang/String;)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p1, v2

    const/16 v4, 0x2e

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->isWellKnownQualifiedName([[C)Z

    move-result v4

    if-nez v4, :cond_4

    array-length v4, v3

    sget-object v5, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->InternedQualifiedNames:[Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;

    const/4 v6, 0x7

    if-gt v4, v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    aget-object v4, v5, v4

    invoke-static {v3, v1, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZZ)[[C

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->add([[C)[[C

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    sget-object v5, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    if-ltz v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v3, v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->ensureContainedInSortedOrder([[C[C)[[C

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    aget-object v6, v3, v1

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->ensureContainedInSortedOrder([[C[C)[[C

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    array-length v6, v5

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [[[C

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    invoke-static {v5, v6, v3, v4}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->insertIntoArray([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;I)V

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v3

    filled-new-array {v3}, [[[C

    move-result-object v3

    invoke-static {v3, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames([[[CZ)[[[C

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->EmptyQualifiedNames:[[[C

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    aget-object v3, v3, v1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public includes([C)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->sortedArrayContains([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    .line 2
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->REFERENCE_COLLECTION_DEBUG:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->assertIncludes(Z[C)V

    :cond_0
    return v0
.end method

.method public includes([[C)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->sortedArrayContains([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    .line 5
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->REFERENCE_COLLECTION_DEBUG:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->assertIncludes(Z[[C)V

    :cond_0
    return v0
.end method

.method public includes([[[C[[C)Z
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includes([[[C[[C[[C)Z

    move-result p1

    return p1
.end method

.method public includes([[[C[[C[[C)Z
    .locals 2

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->doIncludes([[[C[[C[[C)Z

    move-result v0

    .line 9
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->REFERENCE_COLLECTION_DEBUG:Z

    if-eqz v1, :cond_0

    .line 10
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->assertIncludes(Z[[[C[[C[[C)V

    :cond_0
    return v0
.end method

.method public insideRoot([C)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->CHAR_ARR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->sortedArrayContains([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->REFERENCE_COLLECTION_DEBUG:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->debugIncludes([C)Z

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string p1, " should not "

    goto :goto_0

    :cond_0
    const-string p1, " should "

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " be included in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method
