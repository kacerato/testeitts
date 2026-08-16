.class public Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;
.super Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;


# instance fields
.field requestor:Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;

    return-void
.end method


# virtual methods
.method public acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->getType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    instance-of p4, p3, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz p4, :cond_0

    check-cast p3, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosesFineGrained(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_0
    new-instance p3, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;

    invoke-direct {p3, p2, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;-><init>(Lorg/eclipse/jdt/core/IType;I)V

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->getProblemId()I

    move-result p1

    const p2, 0x1000118

    if-eq p1, p2, :cond_2

    const p2, 0x1000133

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->setAccessibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->setAccessibility(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;->acceptTypeNameMatch(Lorg/eclipse/jdt/core/search/TypeNameMatch;)V

    :cond_4
    return-void
.end method
