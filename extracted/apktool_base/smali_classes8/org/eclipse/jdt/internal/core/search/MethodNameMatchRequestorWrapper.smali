.class public Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;
.super Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;


# instance fields
.field requestor:Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;

    return-void
.end method


# virtual methods
.method public acceptMethod([CI[C[CI[C[C[[C[[C[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;I)V
    .locals 9

    move-object v7, p0

    move-object v0, p3

    const/16 v8, 0x2e

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v8, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p5

    move-object v2, p6

    move-object v3, p4

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->getType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosesFineGrained(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-nez p8, :cond_3

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    goto :goto_2

    :cond_3
    move-object/from16 v1, p8

    :goto_2
    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p7, :cond_6

    invoke-static/range {p7 .. p7}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_5

    array-length v2, v1

    :goto_3
    if-lt v3, v2, :cond_4

    goto :goto_4

    :cond_4
    aget-object v4, v1, v3

    const/16 v5, 0x2f

    invoke-static {v4, v5, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    array-length v4, v1

    if-lez v4, :cond_8

    array-length v4, v1

    new-array v5, v4, [Ljava/lang/String;

    move v2, v3

    :goto_5
    if-lt v2, v4, :cond_7

    move-object v2, v5

    goto :goto_6

    :cond_7
    aget-object v6, v1, v2

    invoke-static {v6, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    new-instance v1, Ljava/lang/String;

    move-object v3, p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;

    move/from16 v3, p11

    invoke-direct {v2, v0, v3}, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;-><init>(Lorg/eclipse/jdt/core/IMethod;I)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;->acceptMethodNameMatch(Lorg/eclipse/jdt/core/search/MethodNameMatch;)V

    return-void
.end method
