.class public Lorg/eclipse/jdt/core/search/SearchEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;,
        Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;,
        Lorg/eclipse/jdt/core/search/SearchEngine$TypeNameRequestorAdapter;
    }
.end annotation


# instance fields
.field private basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>(Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/IWorkingCopy;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v0, p1

    .line 7
    new-array v1, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v2, 0x0

    .line 8
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-direct {p1, v1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    return-void
.end method

.method public static createHierarchyScope(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createHierarchyScope(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createHierarchyScope(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createHierarchyScope(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope([Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 3
    invoke-static {v1}, Lorg/eclipse/jdt/core/search/SearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0

    .line 5
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createMethodNameMatch(Lorg/eclipse/jdt/core/IMethod;I)Lorg/eclipse/jdt/core/search/MethodNameMatch;
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createMethodNameMatch(Lorg/eclipse/jdt/core/IMethod;I)Lorg/eclipse/jdt/core/search/MethodNameMatch;

    move-result-object p0

    return-object p0
.end method

.method public static createOrSearchPattern(Lorg/eclipse/jdt/core/search/ISearchPattern;Lorg/eclipse/jdt/core/search/ISearchPattern;)Lorg/eclipse/jdt/core/search/ISearchPattern;
    .locals 0

    check-cast p0, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;

    iget-object p0, p0, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    check-cast p1, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;

    iget-object p1, p1, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createOrPattern(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    new-instance p1, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    return-object p1
.end method

.method public static createSearchPattern(Ljava/lang/String;IIZ)Lorg/eclipse/jdt/core/search/ISearchPattern;
    .locals 2

    const/16 v0, 0x2a

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :goto_1
    if-eqz p3, :cond_2

    or-int/lit8 v0, v0, 0x8

    .line 2
    :cond_2
    new-instance p3, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;

    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jdt/core/search/SearchPattern;->createPattern(Ljava/lang/String;III)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    invoke-direct {p3, p0}, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    return-object p3
.end method

.method public static createSearchPattern(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/ISearchPattern;
    .locals 1

    .line 3
    new-instance v0, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createPattern(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    return-object v0
.end method

.method public static createStrictHierarchyScope(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IType;ZZLorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createStrictHierarchyScope(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IType;ZZLorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createTypeNameMatch(Lorg/eclipse/jdt/core/IType;I)Lorg/eclipse/jdt/core/search/TypeNameMatch;
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createTypeNameMatch(Lorg/eclipse/jdt/core/IType;I)Lorg/eclipse/jdt/core/search/TypeNameMatch;

    move-result-object p0

    return-object p0
.end method

.method public static createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public search(Lorg/eclipse/core/resources/IWorkspace;Ljava/lang/String;IILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 p1, 0x2a

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3f

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x2

    :goto_1
    or-int/lit8 p1, p1, 0x8

    .line 2
    invoke-static {p2, p3, p4, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createPattern(Ljava/lang/String;III)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v1

    .line 3
    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object p1

    filled-new-array {p1}, [Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v2

    .line 4
    new-instance v4, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;

    invoke-direct {v4, p6}, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V

    .line 5
    invoke-interface {p6}, Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;->getProgressMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v5

    move-object v0, p0

    move-object v3, p5

    .line 6
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/core/search/SearchEngine;->search(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :goto_2
    instance-of p2, p1, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz p2, :cond_2

    .line 8
    check-cast p1, Lorg/eclipse/jdt/core/JavaModelException;

    throw p1

    .line 9
    :cond_2
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public search(Lorg/eclipse/core/resources/IWorkspace;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 10
    invoke-static {p2, p3}, Lorg/eclipse/jdt/core/search/SearchEngine;->createSearchPattern(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/ISearchPattern;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4, p5}, Lorg/eclipse/jdt/core/search/SearchEngine;->search(Lorg/eclipse/core/resources/IWorkspace;Lorg/eclipse/jdt/core/search/ISearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V

    return-void
.end method

.method public search(Lorg/eclipse/core/resources/IWorkspace;Lorg/eclipse/jdt/core/search/ISearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 11
    :try_start_0
    check-cast p2, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;

    iget-object v1, p2, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    .line 12
    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object p1

    filled-new-array {p1}, [Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v2

    .line 13
    new-instance v4, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;

    invoke-direct {v4, p4}, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V

    .line 14
    invoke-interface {p4}, Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;->getProgressMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v5

    move-object v0, p0

    move-object v3, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/core/search/SearchEngine;->search(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    instance-of p2, p1, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz p2, :cond_0

    .line 17
    check-cast p1, Lorg/eclipse/jdt/core/JavaModelException;

    throw p1

    .line 18
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public search(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->search(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllMethodNames([CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 7
    new-instance v6, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;

    move-object v5, p5

    move-object/from16 v0, p6

    invoke-direct {v6, v0, p5}, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    move-object v9, p0

    .line 8
    iget-object v0, v9, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllMethodNames([CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllMethodNames([CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/MethodNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 5
    new-instance v6, Lorg/eclipse/jdt/internal/core/search/MethodNameRequestorWrapper;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/core/search/MethodNameRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/MethodNameRequestor;)V

    move-object v9, p0

    .line 6
    iget-object v0, v9, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllMethodNames([CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllMethodNames([CI[CI[CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 3
    new-instance v10, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;

    move-object/from16 v9, p9

    move-object/from16 v0, p10

    invoke-direct {v10, v0, v9}, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    move-object v13, p0

    .line 4
    iget-object v0, v13, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllMethodNames([CI[CI[CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllMethodNames([CI[CI[CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/MethodNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    new-instance v10, Lorg/eclipse/jdt/internal/core/search/MethodNameRequestorWrapper;

    move-object/from16 v0, p10

    invoke-direct {v10, v0}, Lorg/eclipse/jdt/internal/core/search/MethodNameRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/MethodNameRequestor;)V

    move-object v13, p0

    .line 2
    iget-object v0, v13, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllMethodNames([CI[CI[CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllTypeNames(Lorg/eclipse/core/resources/IWorkspace;[C[CIZILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/ITypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p5, :cond_0

    or-int/lit8 v0, p4, 0x8

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    .line 12
    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/core/search/SearchEngine;->searchAllTypeNames([C[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/ITypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 4
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;

    move-object/from16 v6, p6

    move-object/from16 v0, p7

    invoke-direct {v7, v0, v6}, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    move-object v10, p0

    .line 5
    iget-object v0, v10, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/TypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/TypeNameRequestorWrapper;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lorg/eclipse/jdt/internal/core/search/TypeNameRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/TypeNameRequestor;)V

    move-object v10, p0

    .line 3
    iget-object v0, v10, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllTypeNames([C[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/ITypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 10
    new-instance v7, Lorg/eclipse/jdt/core/search/SearchEngine$TypeNameRequestorAdapter;

    move-object/from16 v0, p6

    invoke-direct {v7, v0}, Lorg/eclipse/jdt/core/search/SearchEngine$TypeNameRequestorAdapter;-><init>(Lorg/eclipse/jdt/core/search/ITypeNameRequestor;)V

    move-object v10, p0

    .line 11
    iget-object v0, v10, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllTypeNames([C[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/TypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 1
    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/core/search/SearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/TypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllTypeNames([[C[[CLorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 8
    new-instance v6, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;

    invoke-direct {v6, p4, p3}, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    const/16 v3, 0x8

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([[C[[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllTypeNames([[C[[CLorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/TypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 6
    new-instance v6, Lorg/eclipse/jdt/internal/core/search/TypeNameRequestorWrapper;

    invoke-direct {v6, p4}, Lorg/eclipse/jdt/internal/core/search/TypeNameRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/TypeNameRequestor;)V

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    const/16 v3, 0x8

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([[C[[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchDeclarationsOfAccessedFields(Lorg/eclipse/core/resources/IWorkspace;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    new-instance v1, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;

    invoke-direct {v1, p3}, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;->getProgressMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object p3

    invoke-virtual {v0, p2, v1, p1, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarations(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchDeclarationsOfAccessedFields(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarationsOfAccessedFields(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchDeclarationsOfReferencedTypes(Lorg/eclipse/core/resources/IWorkspace;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    new-instance v1, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;

    invoke-direct {v1, p3}, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;->getProgressMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object p3

    invoke-virtual {v0, p2, v1, p1, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarations(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchDeclarationsOfReferencedTypes(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarationsOfReferencedTypes(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchDeclarationsOfSentMessages(Lorg/eclipse/core/resources/IWorkspace;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedMethodsPattern;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedMethodsPattern;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    new-instance v1, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;

    invoke-direct {v1, p3}, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;->getProgressMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object p3

    invoke-virtual {v0, p2, v1, p1, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarations(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchDeclarationsOfSentMessages(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine;->basicEngine:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarationsOfSentMessages(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method
