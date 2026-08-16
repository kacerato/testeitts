.class public Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static VERBOSE:Z = false


# instance fields
.field private compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field private parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field private workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

.field private workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    return-void
.end method

.method public static createHierarchyScope(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createHierarchyScope(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createHierarchyScope(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;-><init>(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-object v0
.end method

.method public static createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 6

    .line 6
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 7
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_3

    .line 8
    new-instance v4, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;

    invoke-direct {v4, p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;-><init>(Z)V

    .line 9
    array-length v5, p1

    :goto_1
    if-lt v2, v5, :cond_0

    return-object v4

    .line 10
    :cond_0
    aget-object p0, p1, v2

    if-eqz p0, :cond_2

    .line 11
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4, p0, p2, v0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Lorg/eclipse/jdt/internal/core/JavaProject;ILjava/util/HashSet;)V

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_3
    aget-object v4, p1, v3

    .line 15
    instance-of v5, v4, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 0

    if-eqz p2, :cond_0

    const/16 p2, 0xf

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public static createMethodNameMatch(Lorg/eclipse/jdt/core/IMethod;I)Lorg/eclipse/jdt/core/search/MethodNameMatch;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;-><init>(Lorg/eclipse/jdt/core/IMethod;I)V

    return-object v0
.end method

.method public static createStrictHierarchyScope(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IType;ZZLorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v7, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;-><init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;ZZZ)V

    return-object v7
.end method

.method public static createTypeNameMatch(Lorg/eclipse/jdt/core/IType;I)Lorg/eclipse/jdt/core/search/TypeNameMatch;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;-><init>(Lorg/eclipse/jdt/core/IType;I)V

    return-object v0
.end method

.method public static createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkspaceScope()Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;-><init>()V

    return-object v0
.end method

.method public static getMatchRuleString(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "R_EXACT_MATCH"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v4, v2, -0x1

    shl-int v4, v1, v4

    and-int/2addr v4, p0

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, " | "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eq v4, v1, :cond_b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    const/16 v5, 0x8

    if-eq v4, v5, :cond_8

    if-eq v4, v3, :cond_7

    const/16 v3, 0x20

    if-eq v4, v3, :cond_6

    const/16 v3, 0x40

    if-eq v4, v3, :cond_5

    const/16 v3, 0x80

    if-eq v4, v3, :cond_4

    const/16 v3, 0x100

    if-eq v4, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "R_CAMELCASE_SAME_PART_COUNT_MATCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string v3, "R_CAMELCASE_MATCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string v3, "R_FULL_MATCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const-string v3, "R_EQUIVALENT_MATCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const-string v3, "R_ERASURE_MATCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    const-string v3, "R_CASE_SENSITIVE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    const-string v3, "R_REGEXP_MATCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_a
    const-string v3, "R_PATTERN_MATCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_b
    const-string v3, "R_PREFIX_MATCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-object v0
.end method

.method public static getSearchForString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "INTERFACE_AND_ANNOTATION"

    return-object p0

    :pswitch_1
    const-string p0, "CLASS_AND_INTERFACE"

    return-object p0

    :pswitch_2
    const-string p0, "CLASS_AND_ENUM"

    return-object p0

    :pswitch_3
    const-string p0, "ANNOTATION_TYPE"

    return-object p0

    :pswitch_4
    const-string p0, "ENUM"

    return-object p0

    :pswitch_5
    const-string p0, "INTERFACE"

    return-object p0

    :pswitch_6
    const-string p0, "CLASS"

    return-object p0

    :pswitch_7
    const-string p0, "FIELD"

    return-object p0

    :pswitch_8
    const-string p0, "CONSTRUCTOR"

    return-object p0

    :pswitch_9
    const-string p0, "PACKAGE"

    return-object p0

    :pswitch_a
    const-string p0, "METHOD"

    return-object p0

    :pswitch_b
    const-string p0, "TYPE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWorkingCopies()[Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    if-nez v2, :cond_5

    .line 3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    goto :goto_2

    .line 5
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    array-length v4, v2

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_2

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    array-length v5, v0

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 9
    new-array v0, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 10
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    aget-object v2, v2, v0

    .line 12
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    aget-object v5, v2, v0

    .line 14
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    if-eqz v0, :cond_4

    .line 16
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    goto :goto_2

    .line 17
    :cond_4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    :cond_5
    :goto_2
    const/4 v2, 0x0

    if-nez v0, :cond_6

    return-object v2

    .line 18
    :cond_6
    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_3
    if-lt v4, v3, :cond_8

    if-eq v5, v3, :cond_7

    if-eqz v2, :cond_7

    .line 19
    new-array v0, v5, [Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-static {v2, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_7
    return-object v2

    .line 20
    :cond_8
    aget-object v6, v0, v4

    check-cast v6, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    .line 21
    :try_start_0
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 22
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/Openable;->hasUnsavedChanges()Z

    move-result v7

    if-nez v7, :cond_9

    .line 23
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->hasResourceChanged()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    if-nez v2, :cond_a

    .line 24
    new-array v2, v3, [Lorg/eclipse/jdt/core/ICompilationUnit;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_a
    add-int/lit8 v7, v5, 0x1

    .line 25
    :try_start_1
    aput-object v6, v2, v5
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v5, v7

    :catch_1
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private getWorkingCopies(Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    instance-of v2, p1, Lorg/eclipse/jdt/core/IMember;

    if-eqz v2, :cond_0

    .line 27
    check-cast p1, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    invoke-interface {p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->isWorkingCopy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    new-array v1, v1, [Lorg/eclipse/jdt/core/ICompilationUnit;

    aput-object p1, v1, v0

    return-object v1

    .line 30
    :cond_0
    instance-of v2, p1, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v2, :cond_1

    .line 31
    check-cast p1, Lorg/eclipse/jdt/core/ICompilationUnit;

    new-array v1, v1, [Lorg/eclipse/jdt/core/ICompilationUnit;

    aput-object p1, v1, v0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public convertTypeKind(I)C
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x41

    return p1

    :cond_1
    const/16 p1, 0x45

    return p1

    :cond_2
    const/16 p1, 0x49

    return p1

    :cond_3
    const/16 p1, 0x43

    return p1
.end method

.method public findMatches(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    :try_start_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Searching for pattern: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-nez v7, :cond_3

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "No participants => do nothing!"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/core/search/SearchRequestor;->endReporting()V

    if-eqz v9, :cond_2

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    array-length v10, v7

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching:Ljava/lang/String;

    invoke-static {v9, v1, v10}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v11

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/core/search/SearchRequestor;->beginReporting()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    :goto_1
    if-lt v14, v10, :cond_5

    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/core/search/SearchRequestor;->endReporting()V

    if-eqz v9, :cond_4

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v11, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    aget-object v15, v7, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching_indexing:Ljava/lang/String;

    invoke-virtual {v15}, Lorg/eclipse/jdt/core/search/SearchParticipant;->getDescription()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/eclipse/jdt/core/search/SearchParticipant;->beginSearching()V

    invoke-virtual {v8, v15}, Lorg/eclipse/jdt/core/search/SearchRequestor;->enterParticipant(Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/PathCollector;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/search/PathCollector;-><init>()V

    new-instance v3, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    move-object/from16 v6, p3

    invoke-direct {v3, v0, v15, v6, v2}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    const/16 v4, 0x32

    invoke-virtual {v1, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v5

    const/4 v13, 0x3

    invoke-virtual {v12, v3, v13, v5}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching_matching:Ljava/lang/String;

    invoke-virtual {v15}, Lorg/eclipse/jdt/core/search/SearchParticipant;->getDescription()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/PathCollector;->getPaths()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v3, v2

    new-array v5, v3, [Lorg/eclipse/jdt/core/search/SearchDocument;

    const/4 v13, 0x0

    :goto_2
    if-lt v13, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getWorkingCopies()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    invoke-static {v0, v5, v2, v15}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->addWorkingCopies(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchDocument;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/SearchParticipant;)[Lorg/eclipse/jdt/core/search/SearchDocument;

    move-result-object v2

    invoke-virtual {v1, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v13

    move-object v1, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/core/search/SearchParticipant;->locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    aget-object v6, v2, v13

    invoke-virtual {v15, v6}, Lorg/eclipse/jdt/core/search/SearchParticipant;->getDocument(Ljava/lang/String;)Lorg/eclipse/jdt/core/search/SearchDocument;

    move-result-object v6

    aput-object v6, v5, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p3

    goto :goto_2

    :cond_7
    :goto_3
    :try_start_4
    invoke-virtual {v8, v15}, Lorg/eclipse/jdt/core/search/SearchRequestor;->exitParticipant(Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    invoke-virtual {v15}, Lorg/eclipse/jdt/core/search/SearchParticipant;->doneSearching()V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :goto_4
    invoke-virtual {v8, v15}, Lorg/eclipse/jdt/core/search/SearchRequestor;->exitParticipant(Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    invoke-virtual {v15}, Lorg/eclipse/jdt/core/search/SearchParticipant;->doneSearching()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/core/search/SearchRequestor;->endReporting()V

    if-eqz v9, :cond_8

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_8
    throw v0
.end method

.method public match(CI)Z
    .locals 3

    .line 1
    const/16 v0, 0x41

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x43

    if-eq p1, v0, :cond_7

    const/16 v0, 0x45

    if-eq p1, v0, :cond_5

    const/16 v0, 0x49

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    and-int/lit16 p1, p2, 0x2200

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :pswitch_1
    and-int/lit16 p1, p2, 0x6000

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :pswitch_2
    and-int/lit16 p1, p2, 0x2200

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    and-int/lit16 p1, p2, 0x200

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    and-int/lit16 p1, p2, 0x4000

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    and-int/lit16 p1, p2, 0x6200

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v1

    :cond_9
    and-int/lit16 p1, p2, 0x2000

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match(C[CI[CII[C[C)Z
    .locals 6

    const/16 v0, 0x41

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x45

    const/4 v5, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x49

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eq p6, v2, :cond_4

    if-eq p6, v1, :cond_4

    return v4

    :pswitch_1
    if-eq p6, v3, :cond_4

    if-eq p6, v2, :cond_4

    return v4

    :pswitch_2
    if-eq p6, v3, :cond_4

    if-eq p6, v5, :cond_4

    return v4

    :cond_0
    if-eq p6, v2, :cond_4

    return v4

    :cond_1
    if-eq p6, v5, :cond_4

    return v4

    :cond_2
    if-eq p6, v3, :cond_4

    return v4

    :cond_3
    if-eq p6, v1, :cond_4

    return v4

    :cond_4
    :goto_0
    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_1

    :cond_5
    move p1, v4

    :goto_1
    if-eqz p2, :cond_6

    .line 2
    invoke-static {p2, p7, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p1

    if-nez p1, :cond_6

    return v4

    :cond_6
    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    move p1, v4

    :goto_2
    if-eqz p4, :cond_16

    and-int/lit16 p2, p5, 0x180

    if-eqz p2, :cond_8

    move p2, v3

    goto :goto_3

    :cond_8
    move p2, v4

    :goto_3
    and-int/lit16 p3, p5, 0x187

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    .line 3
    invoke-static {p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p4

    :cond_9
    if-eqz p1, :cond_a

    .line 4
    aget-char p2, p4, v4

    aget-char p5, p8, v4

    if-eq p2, p5, :cond_a

    move p2, v4

    goto :goto_4

    :cond_a
    move p2, v3

    :goto_4
    if-eqz p3, :cond_14

    if-eq p3, v3, :cond_12

    if-eq p3, v2, :cond_11

    if-eq p3, v1, :cond_10

    const/16 p5, 0x80

    if-eq p3, p5, :cond_d

    const/16 p1, 0x100

    if-eq p3, p1, :cond_b

    goto :goto_5

    :cond_b
    if-eqz p2, :cond_c

    .line 5
    invoke-static {p4, p8, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_c

    return v3

    :cond_c
    return v4

    :cond_d
    if-eqz p2, :cond_e

    .line 6
    invoke-static {p4, p8, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p3

    if-eqz p3, :cond_e

    return v3

    :cond_e
    if-nez p1, :cond_f

    if-eqz p2, :cond_f

    .line 7
    invoke-static {p4, p8, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v4

    .line 8
    :cond_10
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>([C)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p8}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 9
    :cond_11
    invoke-static {p4, p8, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    return p1

    :cond_12
    if-eqz p2, :cond_13

    .line 10
    invoke-static {p4, p8, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_13

    return v3

    :cond_13
    return v4

    :cond_14
    if-eqz p2, :cond_15

    .line 11
    invoke-static {p4, p8, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v4

    :cond_16
    :goto_5
    return v3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match([CI[C)Z
    .locals 5

    and-int/lit8 v0, p2, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_f

    and-int/lit16 v3, p2, 0x180

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit16 p2, p2, 0x187

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 12
    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 13
    aget-char v3, p1, v1

    aget-char v4, p3, v1

    if-eq v3, v4, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-eqz p2, :cond_d

    if-eq p2, v2, :cond_b

    const/4 v4, 0x2

    if-eq p2, v4, :cond_a

    const/4 v4, 0x4

    if-eq p2, v4, :cond_9

    const/16 v4, 0x80

    if-eq p2, v4, :cond_6

    const/16 v0, 0x100

    if-eq p2, v0, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 14
    invoke-static {p1, p3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    if-eqz v3, :cond_7

    .line 15
    invoke-static {p1, p3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p2

    if-eqz p2, :cond_7

    return v2

    :cond_7
    if-nez v0, :cond_8

    if-eqz v3, :cond_8

    .line 16
    invoke-static {p1, p3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v1

    .line 17
    :cond_9
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([C)V

    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 18
    :cond_a
    invoke-static {p1, p3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    return p1

    :cond_b
    if-eqz v3, :cond_c

    .line 19
    invoke-static {p1, p3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_c

    return v2

    :cond_c
    return v1

    :cond_d
    if-eqz v3, :cond_e

    .line 20
    invoke-static {p1, p3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_e

    return v2

    :cond_e
    return v1

    :cond_f
    :goto_3
    return v2
.end method

.method public match([CI[CI[CI[CI[C[C[C[C)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 21
    :goto_0
    invoke-static {p1, p9, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 22
    :cond_1
    invoke-virtual {p0, p3, p4, p10}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p0, p5, p6, p11}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {p0, p7, p8, p12}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public match([CI[CI[C[C[C[C)Z
    .locals 2

    if-eqz p5, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    sget-object p5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_0
    const/16 v0, 0x2e

    if-eqz p6, :cond_2

    .line 26
    array-length v1, p6

    if-lez v1, :cond_2

    .line 27
    array-length v1, p5

    if-lez v1, :cond_1

    invoke-static {p5, p6, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p6

    :cond_1
    move-object p5, p6

    :cond_2
    if-eqz p7, :cond_4

    .line 28
    array-length p6, p7

    if-lez p6, :cond_4

    .line 29
    array-length p6, p5

    if-lez p6, :cond_3

    invoke-static {p5, p7, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p7

    :cond_3
    move-object p5, p7

    .line 30
    :cond_4
    invoke-virtual {p0, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p0, p3, p4, p8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public reportMatchingMethod(Ljava/lang/String;[C[CLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;)V
    .locals 15

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    array-length v4, v3

    new-array v6, v4, [[C

    new-array v7, v4, [[C

    move-object v8, v6

    move-object v9, v7

    goto :goto_0

    :cond_0
    move-object v8, v4

    move-object v9, v8

    move v4, v5

    :goto_0
    if-lt v5, v4, :cond_2

    instance-of v3, v2, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, p6

    invoke-interface {v6, v0, v3}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v0

    check-cast v2, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;

    new-instance v3, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    invoke-direct {v3, v0, v1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;-><init>(Lorg/eclipse/jdt/core/IMethod;I)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;->acceptMethodNameMatch(Lorg/eclipse/jdt/core/search/MethodNameMatch;)V

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p7

    move-object v1, v3

    move v2, v4

    move-object/from16 v3, p3

    move-object v4, v5

    move v5, v6

    move-object/from16 v6, p2

    move-object/from16 v12, p1

    invoke-interface/range {v0 .. v14}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;->acceptMethod([CI[C[CI[C[C[[C[[C[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;I)V

    :goto_1
    return-void

    :cond_2
    move-object/from16 v6, p6

    aget-object v7, v3, v5

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object v10, v9, v5

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v7

    const/16 v10, 0x2e

    invoke-static {v7, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v7

    aput-object v7, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public reportMatchingMethods([CILorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;Ljava/lang/String;[CLorg/eclipse/jdt/core/IType;[C[C)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v15, p3

    invoke-interface/range {p6 .. p6}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object v14

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_0
    array-length v0, v14

    if-lt v13, v0, :cond_0

    return-void

    :cond_0
    aget-object v0, v14, v13

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMethod;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    move/from16 v17, v13

    move-object/from16 v18, v14

    goto/16 :goto_3

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move/from16 v10, p2

    invoke-virtual {v12, v11, v10, v1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v15, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;

    if-eqz v2, :cond_3

    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/MethodNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;-><init>(Lorg/eclipse/jdt/core/IMethod;I)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/MethodNameMatchRequestor;->acceptMethodNameMatch(Lorg/eclipse/jdt/core/search/MethodNameMatch;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    new-array v9, v4, [[C

    new-array v8, v4, [[C

    move/from16 v5, v16

    :goto_2
    if-lt v5, v4, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMethod;->getReturnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v7

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-static {v7, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-interface/range {p6 .. p6}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v5

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move v2, v4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v6, p5

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    move/from16 v11, v17

    move-object/from16 v12, p4

    move/from16 v17, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v17

    invoke-interface/range {v0 .. v14}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;->acceptMethod([CI[C[CI[C[C[[C[[C[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;I)V

    goto :goto_3

    :cond_4
    move/from16 v17, v13

    move-object/from16 v18, v14

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aput-object v6, v9, v5

    aget-object v6, v3, v5

    invoke-static {v6}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v6

    aput-object v6, v8, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move/from16 v10, p2

    goto :goto_2

    :goto_3
    add-int/lit8 v13, v17, 0x1

    move-object/from16 v14, v18

    goto/16 :goto_0
.end method

.method public search(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "BasicSearchEngine.search(SearchPattern, SearchParticipant[], IJavaSearchScope, SearchRequestor, IProgressMonitor)"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->findMatches(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchAllConstructorDeclarations([C[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move/from16 v1, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    const/4 v2, 0x0

    if-nez v10, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateMatchRule(Ljava/lang/String;I)I

    move-result v13

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v3, :cond_4

    const-string v3, "BasicSearchEngine.searchAllConstructorDeclarations(char[], char[], int, IJavaSearchScope, IRestrictedAccessConstructorRequestor, int, IProgressMonitor)"

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t- package name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "null"

    if-nez v0, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\t- type name: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>([C)V

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t- type match rule: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    if-eq v13, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t- validated type match rule: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t- scope: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/4 v1, -0x1

    if-ne v13, v1, :cond_6

    if-eqz v12, :cond_5

    invoke-interface/range {p7 .. p7}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_5
    return-void

    :cond_6
    :try_start_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v1

    new-instance v3, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;

    invoke-direct {v3, v0, v10, v13}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;-><init>([C[CI)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getWorkingCopies()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_7

    move v9, v15

    goto :goto_4

    :cond_7
    array-length v4, v14

    move v9, v4

    :goto_4
    const/4 v7, 0x1

    if-eqz v14, :cond_a

    if-ne v9, v7, :cond_8

    aget-object v2, v14, v15

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_8
    move v4, v15

    :goto_5
    if-lt v4, v9, :cond_9

    goto :goto_6

    :cond_9
    aget-object v5, v14, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    new-instance v6, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;

    move-object v4, v6

    move-object/from16 v5, p0

    move-object v15, v6

    move v6, v9

    move v0, v7

    move-object v7, v2

    move v2, v9

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;)V

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching:Ljava/lang/String;

    const/16 v5, 0x3e8

    invoke-static {v12, v4, v5}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v9

    new-instance v4, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v5

    invoke-direct {v4, v3, v5, v11, v15}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    rsub-int v3, v2, 0x3e8

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v9, v3}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    move/from16 v5, p6

    invoke-virtual {v1, v4, v5, v3}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z

    if-eqz v14, :cond_17

    const/4 v15, 0x0

    :goto_7
    if-lt v15, v2, :cond_b

    goto/16 :goto_13

    :cond_b
    invoke-virtual {v9, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    aget-object v3, v14, v15

    instance-of v4, v11, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz v4, :cond_c

    move-object v4, v11

    check-cast v4, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    invoke-virtual {v4, v3, v1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_8
    move/from16 v32, v2

    move-object/from16 v36, v9

    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_c
    invoke-interface {v11, v3}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IOpenable;->isConsistent()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v1

    array-length v4, v1

    if-nez v4, :cond_e

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_9
    move-object/from16 v29, v1

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageDeclaration;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_9

    :goto_a
    invoke-interface {v3}, Lorg/eclipse/jdt/core/ICompilationUnit;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v8

    array-length v7, v8

    const/4 v6, 0x0

    :goto_b
    if-lt v6, v7, :cond_f

    goto :goto_8

    :cond_f
    aget-object v30, v8, v6

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v31

    const/16 v4, 0x8

    const/16 v16, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move/from16 v32, v2

    move v2, v3

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v33, v6

    move v6, v13

    move/from16 v34, v7

    move/from16 v7, v16

    move-object/from16 v35, v8

    move-object/from16 v8, v29

    move-object/from16 v36, v9

    move-object/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match(C[CI[CII[C[C)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jdt/core/IType;->isMember()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/ExtraFlags;->getExtraFlags(Lorg/eclipse/jdt/core/IType;)I

    move-result v1

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_c
    array-length v3, v2

    if-lt v5, v3, :cond_10

    if-nez v7, :cond_13

    sget-object v22, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v23

    const/16 v27, 0x0

    const/16 v17, 0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v16, p5

    move-object/from16 v18, v31

    move-object/from16 v21, v22

    move-object/from16 v24, v29

    move/from16 v25, v1

    move-object/from16 v26, v28

    invoke-interface/range {v16 .. v27}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;->acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_f

    :cond_10
    aget-object v3, v2, v5

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMethod;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v4

    new-array v8, v7, [[C

    new-array v9, v7, [[C

    const/4 v0, 0x0

    :goto_d
    if-lt v0, v7, :cond_11

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v17

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v23

    const/16 v27, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p5

    move-object/from16 v18, v31

    move/from16 v19, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v8

    move-object/from16 v24, v29

    move/from16 v25, v1

    move-object/from16 v26, v28

    invoke-interface/range {v16 .. v27}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;->acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    const/4 v7, 0x1

    goto :goto_e

    :cond_11
    aget-object v16, v4, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    aput-object v16, v8, v0

    aget-object v16, v6, v0

    invoke-static/range {v16 .. v16}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v16

    aput-object v16, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_12
    :goto_e
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    :goto_f
    add-int/lit8 v6, v33, 0x1

    move/from16 v2, v32

    move/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    const/4 v0, 0x1

    goto/16 :goto_b

    :cond_14
    move/from16 v32, v2

    move-object/from16 v36, v9

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-object/from16 v9, p0

    iget-object v2, v9, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v8, 0x0

    invoke-direct {v1, v3, v8, v8, v2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v1, :cond_15

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_10
    move-object v6, v1

    goto :goto_11

    :cond_15
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    goto :goto_10

    :goto_11
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v13

    move-object v9, v7

    move-object/from16 v7, p5

    move/from16 v16, v8

    move-object/from16 v8, v28

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;[C[CI[CLorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_12

    :cond_16
    move/from16 v16, v8

    :goto_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v32

    move-object/from16 v9, v36

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_17
    :goto_13
    if-eqz v12, :cond_18

    invoke-interface/range {p7 .. p7}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_18
    return-void

    :goto_14
    if-eqz v12, :cond_19

    invoke-interface/range {p7 .. p7}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_19
    throw v0
.end method

.method public searchAllMethodNames([CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    const/4 v0, 0x0

    if-nez v12, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-static {v1, v13}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateMatchRule(Ljava/lang/String;I)I

    move-result v1

    .line 2
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v2, :cond_4

    .line 3
    const-string v2, "BasicSearchEngine.searchAllMethodDeclarations(char[] qualifier,  char[] methodName, int methodMatchRule, IJavaSearchScope, IRestrictedAccessConstructorRequestor, int waitingPolicy, IProgressMonitor)"

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t- qualifier name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "null"

    if-nez v11, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/lang/String;-><init>([C)V

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\t- method name: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>([C)V

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t- method match rule: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    if-eq v1, v13, :cond_3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t- validated method match rule: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 8
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t- scope: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_4
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v15

    .line 10
    new-instance v9, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;

    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;-><init>([C[CI)V

    .line 11
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 12
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getWorkingCopies()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v8

    const/4 v7, 0x0

    if-nez v8, :cond_6

    move v6, v7

    goto :goto_3

    .line 13
    :cond_6
    array-length v1, v8

    move v6, v1

    :goto_3
    const/4 v5, 0x1

    if-eqz v8, :cond_7

    if-ne v6, v5, :cond_8

    .line 14
    aget-object v0, v8, v7

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    move-object v3, v0

    goto :goto_6

    :cond_8
    move v1, v7

    :goto_5
    if-lt v1, v6, :cond_9

    goto :goto_4

    .line 15
    :cond_9
    aget-object v2, v8, v1

    .line 16
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 17
    :goto_6
    new-instance v2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v12, v2

    move v2, v6

    move v13, v5

    move-object/from16 v5, p1

    move v13, v6

    move/from16 v6, p2

    move v10, v7

    move-object/from16 v7, p3

    move-object/from16 v17, v8

    move/from16 v8, p4

    move-object v10, v9

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;[CI[CILorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;)V

    .line 18
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching:Ljava/lang/String;

    const/16 v1, 0x3e8

    move-object/from16 v2, p8

    invoke-static {v2, v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v9

    .line 19
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    .line 20
    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v1

    .line 21
    invoke-direct {v0, v10, v1, v14, v12}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    rsub-int v1, v13, 0x3e8

    const/4 v2, 0x0

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v9, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    move/from16 v2, p7

    .line 23
    invoke-virtual {v15, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z

    if-eqz v17, :cond_a

    const/4 v10, 0x0

    :goto_7
    if-lt v10, v13, :cond_b

    :cond_a
    move-object/from16 v13, p0

    goto/16 :goto_12

    :cond_b
    const/4 v12, 0x1

    .line 24
    invoke-virtual {v9, v12}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    .line 25
    aget-object v2, v17, v10

    .line 26
    instance-of v1, v14, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz v1, :cond_c

    .line 27
    move-object v1, v14

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_8
    const/16 v16, 0x0

    :goto_9
    move-object v15, v9

    move/from16 v18, v13

    move-object/from16 v13, p0

    goto/16 :goto_11

    .line 28
    :cond_c
    invoke-interface {v14, v2}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    .line 29
    :cond_d
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 30
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IOpenable;->isConsistent()Z

    move-result v0

    const/16 v8, 0x2e

    if-eqz v0, :cond_12

    .line 31
    invoke-interface {v2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v0

    .line 32
    array-length v1, v0

    if-nez v1, :cond_e

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    move-object v7, v0

    const/4 v1, 0x0

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageDeclaration;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v7, v0

    .line 33
    :goto_a
    invoke-interface {v2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v6

    .line 34
    array-length v5, v6

    move v4, v1

    :goto_b
    if-lt v4, v5, :cond_f

    move/from16 v16, v1

    goto :goto_9

    .line 35
    :cond_f
    aget-object v16, v6, v4

    .line 36
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    .line 37
    instance-of v2, v0, Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_10

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0, v8}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_c
    move-object v3, v0

    goto :goto_d

    :cond_10
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_c

    .line 38
    :goto_d
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 39
    invoke-static {v7, v8, v3, v8, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatNonEmpty([CC[CC[C)[C

    move-result-object v0

    move/from16 v12, p2

    move/from16 v18, v13

    move v13, v1

    move-object/from16 v1, p0

    .line 40
    invoke-virtual {v1, v11, v12, v0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result v0

    if-nez v0, :cond_11

    move-object v13, v1

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v16, v7

    move-object/from16 p8, v9

    move v9, v8

    goto :goto_e

    :cond_11
    move-object/from16 v0, p0

    move-object v13, v1

    move-object/from16 v1, p3

    move-object/from16 v19, v2

    move/from16 v2, p4

    move-object/from16 v20, v3

    move-object/from16 v3, p6

    move/from16 v21, v4

    move-object v4, v15

    move/from16 v22, v5

    move-object v5, v7

    move-object/from16 v23, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v20

    move-object/from16 p8, v9

    move v9, v8

    move-object/from16 v8, v19

    .line 41
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->reportMatchingMethods([CILorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;Ljava/lang/String;[CLorg/eclipse/jdt/core/IType;[C[C)V

    :goto_e
    add-int/lit8 v4, v21, 0x1

    move v8, v9

    move-object/from16 v7, v16

    move/from16 v13, v18

    move/from16 v5, v22

    move-object/from16 v6, v23

    const/4 v1, 0x0

    const/4 v12, 0x1

    move-object/from16 v9, p8

    goto :goto_b

    :cond_12
    move/from16 v12, p2

    move-object/from16 p8, v9

    move/from16 v18, v13

    move-object/from16 v13, p0

    move v9, v8

    .line 42
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    .line 43
    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 44
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v4, v13, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v8, 0x0

    invoke-direct {v3, v1, v8, v8, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 45
    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 46
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v0, :cond_13

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_f
    move-object v3, v0

    goto :goto_10

    :cond_13
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v0

    invoke-static {v0, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    goto :goto_f

    .line 47
    :goto_10
    new-instance v9, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object v11, v7

    move/from16 v7, p4

    move/from16 v16, v8

    move-object v8, v15

    move-object/from16 v15, p8

    move-object v12, v9

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;Lorg/eclipse/jdt/core/ICompilationUnit;[C[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;)V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v11, v12, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    goto :goto_11

    :cond_14
    move-object/from16 v15, p8

    move/from16 v16, v8

    :goto_11
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, p1

    move-object v9, v15

    move/from16 v13, v18

    goto/16 :goto_7

    :goto_12
    return-void
.end method

.method public searchAllMethodNames([CI[CI[CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p5

    move-object/from16 v10, p7

    move/from16 v9, p8

    move-object/from16 v8, p9

    const/4 v6, 0x0

    if-nez v10, :cond_0

    move-object v0, v6

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-static {v0, v9}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateMatchRule(Ljava/lang/String;I)I

    move-result v0

    .line 49
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v1, :cond_6

    .line 50
    const-string v1, "BasicSearchEngine.searchAllMethodDeclarations(char[] packageName, char[] declaringQualification, char[] declaringSimpleName, char[] methodName, int methodMatchRule, IJavaSearchScope, IRestrictedAccessConstructorRequestor, int waitingPolicy, IProgressMonitor)"

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t- package name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "null"

    if-nez v15, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15}, Ljava/lang/String;-><init>([C)V

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t- declaringQualification name: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v12, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>([C)V

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t- declaringSimple name: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v11, :cond_3

    move-object v3, v2

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([C)V

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t- method name: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>([C)V

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t- method match rule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p8 .. p8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    if-eq v0, v9, :cond_5

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t- validated method match rule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 57
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t- scope: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    return-void

    .line 58
    :cond_7
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v7

    .line 59
    new-instance v5, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object v14, v5

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;-><init>([C[C[C[CI)V

    .line 60
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 61
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getWorkingCopies()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v5

    const/4 v3, 0x0

    if-nez v5, :cond_8

    move v2, v3

    goto :goto_5

    .line 62
    :cond_8
    array-length v0, v5

    move v2, v0

    :goto_5
    const/4 v1, 0x1

    if-eqz v5, :cond_b

    if-ne v2, v1, :cond_9

    .line 63
    aget-object v0, v5, v3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_7

    :cond_9
    move v0, v3

    :goto_6
    if-lt v0, v2, :cond_a

    goto :goto_7

    .line 64
    :cond_a
    aget-object v16, v5, v0

    .line 65
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_6

    .line 66
    :cond_b
    :goto_7
    new-instance v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$3;

    move-object v0, v1

    move-object v15, v1

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object v3, v6

    move-object/from16 v19, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v20, v7

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$3;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;[CI[CI[CI[CILorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;)V

    .line 67
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching:Ljava/lang/String;

    const/16 v1, 0x3e8

    move-object/from16 v2, p12

    invoke-static {v2, v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v12

    .line 68
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    .line 69
    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v1

    move-object/from16 v13, p9

    .line 70
    invoke-direct {v0, v14, v1, v13, v15}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    move/from16 v14, v16

    rsub-int v1, v14, 0x3e8

    const/4 v15, 0x0

    .line 71
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v12, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    move/from16 v2, p11

    move-object/from16 v3, v20

    .line 72
    invoke-virtual {v3, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z

    if-eqz v19, :cond_19

    move/from16 v11, p2

    and-int/lit8 v0, v11, 0x8

    if-eqz v0, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    move v10, v15

    :goto_8
    move v9, v15

    :goto_9
    if-lt v9, v14, :cond_d

    goto/16 :goto_16

    :cond_d
    const/4 v0, 0x1

    .line 73
    invoke-virtual {v12, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    .line 74
    aget-object v2, v19, v9

    .line 75
    instance-of v3, v13, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz v3, :cond_e

    .line 76
    move-object v3, v13

    check-cast v3, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    invoke-virtual {v3, v2, v1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_a
    move/from16 v17, v0

    :goto_b
    move/from16 v20, v9

    move/from16 v16, v10

    move-object/from16 p12, v12

    move/from16 v18, v15

    move-object/from16 v15, p3

    goto/16 :goto_15

    .line 77
    :cond_e
    invoke-interface {v13, v2}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    .line 78
    :cond_f
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 79
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IOpenable;->isConsistent()Z

    move-result v1

    const/16 v8, 0x2e

    if-eqz v1, :cond_16

    .line 80
    invoke-interface {v2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v1

    .line 81
    array-length v3, v1

    if-nez v3, :cond_10

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_c
    move-object/from16 v6, p1

    move/from16 v17, v0

    move-object v7, v1

    goto :goto_d

    :cond_10
    aget-object v1, v1, v15

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageDeclaration;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_c

    :goto_d
    if-eqz v6, :cond_11

    .line 82
    invoke-static {v6, v7, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_e
    goto :goto_b

    .line 83
    :cond_11
    invoke-interface {v2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    .line 84
    array-length v4, v5

    move v3, v15

    :goto_f
    if-lt v3, v4, :cond_12

    goto :goto_e

    .line 85
    :cond_12
    aget-object v18, v5, v3

    .line 86
    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lorg/eclipse/jdt/core/IType;

    if-eqz v1, :cond_13

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0, v8}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_10
    move-object v2, v0

    goto :goto_11

    :cond_13
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_10

    .line 88
    :goto_11
    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    move-object/from16 p12, v12

    move/from16 v12, p4

    .line 89
    invoke-virtual {v0, v15, v12, v2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v12, p5

    move/from16 v13, p6

    .line 90
    invoke-virtual {v0, v12, v13, v1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result v21

    if-nez v21, :cond_15

    :cond_14
    move-object v12, v0

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move-object v13, v6

    move-object/from16 v18, v7

    move/from16 v22, v9

    move v9, v8

    goto :goto_12

    :cond_15
    move-object v12, v0

    move-object/from16 v0, p0

    move-object/from16 v21, v1

    move-object/from16 v1, p7

    move-object/from16 v22, v2

    move/from16 v2, p8

    move/from16 v23, v3

    move-object/from16 v3, p10

    move/from16 v24, v4

    move-object/from16 v4, v16

    move-object/from16 v25, v5

    move-object v5, v7

    move-object v13, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v22

    move/from16 v22, v9

    move v9, v8

    move-object/from16 v8, v21

    .line 91
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->reportMatchingMethods([CILorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;Ljava/lang/String;[CLorg/eclipse/jdt/core/IType;[C[C)V

    :goto_12
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v12, p12

    move v8, v9

    move-object v6, v13

    move-object/from16 v7, v18

    move/from16 v9, v22

    move/from16 v4, v24

    move-object/from16 v5, v25

    const/4 v15, 0x0

    move-object/from16 v13, p9

    goto/16 :goto_f

    :cond_16
    move-object/from16 v13, p1

    move-object/from16 v15, p3

    move/from16 v17, v0

    move/from16 v22, v9

    move-object/from16 p12, v12

    move-object/from16 v12, p0

    move v9, v8

    .line 92
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    .line 93
    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 94
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v4, v12, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v8, 0x0

    invoke-direct {v3, v1, v8, v8, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 95
    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 96
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v0, :cond_17

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_13
    move-object v9, v0

    goto :goto_14

    :cond_17
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v0

    invoke-static {v0, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    goto :goto_13

    .line 97
    :goto_14
    invoke-virtual {v12, v13, v11, v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 98
    new-instance v6, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v12, v6

    move/from16 v6, p6

    move-object v13, v7

    move-object/from16 v7, p7

    move/from16 v18, v8

    move/from16 v8, p8

    move-object/from16 v21, v9

    move/from16 v20, v22

    move-object/from16 v9, v16

    move/from16 v16, v10

    move-object/from16 v10, v21

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;Lorg/eclipse/jdt/core/ICompilationUnit;[CI[CI[CILjava/lang/String;[CLorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;)V

    iget-object v0, v13, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v13, v12, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    goto :goto_15

    :cond_18
    move/from16 v18, v8

    move/from16 v16, v10

    move/from16 v20, v22

    :goto_15
    add-int/lit8 v9, v20, 0x1

    move/from16 v11, p2

    move-object/from16 v13, p9

    move-object/from16 v12, p12

    move/from16 v10, v16

    move/from16 v15, v18

    goto/16 :goto_9

    :cond_19
    :goto_16
    return-void
.end method

.method public searchAllSecondaryTypeNames([Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "BasicSearchEngine.searchAllSecondaryTypeNames(IPackageFragmentRoot[], IRestrictedAccessTypeRequestor, boolean, IProgressMonitor)"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "\t- source folders: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    const-string v2, "]\n\t- waitForIndexes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    if-nez v3, :cond_1

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v0

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/matching/SecondaryTypeDeclarationPattern;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/search/matching/SecondaryTypeDeclarationPattern;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getWorkingCopies()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v3

    if-nez v3, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    array-length v4, v3

    move v5, v4

    :goto_3
    const/4 v9, 0x1

    if-eqz v3, :cond_6

    if-ne v5, v9, :cond_4

    aget-object v1, v3, v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v6, v1

    goto :goto_7

    :cond_4
    :goto_5
    if-lt v1, v5, :cond_5

    goto :goto_6

    :cond_5
    aget-object v4, v3, v1

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    const/4 v1, 0x0

    goto :goto_4

    :goto_7
    new-instance v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$4;

    move-object v3, v1

    move-object v4, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$4;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-static {p4, p2, v3}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    new-instance v4, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v5

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p1

    invoke-direct {v4, v2, v5, p1, v1}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    if-eqz p3, :cond_7

    const/4 v9, 0x3

    :cond_7
    invoke-virtual {p2, v3}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-virtual {v0, v4, v9, p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z
    :try_end_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    if-eqz p4, :cond_8

    invoke-interface {p4}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_8
    return-void

    :goto_8
    if-eqz p4, :cond_9

    invoke-interface {p4}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_9
    throw p1
.end method

.method public searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v12, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p9

    const/4 v7, 0x0

    if-nez v12, :cond_0

    move-object v3, v7

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateMatchRule(Ljava/lang/String;I)I

    move-result v11

    .line 2
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v3, :cond_4

    .line 3
    const-string v3, "BasicSearchEngine.searchAllTypeNames(char[], char[], int, int, IJavaSearchScope, IRestrictedAccessTypeRequestor, int, IProgressMonitor)"

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t- package name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "null"

    if-nez v0, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\t- package match rule: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\t- type name: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>([C)V

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t- type match rule: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    if-eq v11, v1, :cond_3

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t- validated type match rule: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    .line 9
    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t- search for: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t- scope: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/4 v1, -0x1

    if-ne v11, v1, :cond_6

    if-eqz v15, :cond_5

    .line 11
    invoke-interface/range {p9 .. p9}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_5
    return-void

    .line 12
    :cond_6
    :try_start_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v8

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    move/from16 v16, v10

    goto :goto_5

    :pswitch_0
    const/16 v1, 0xb

    :goto_4
    move/from16 v16, v1

    goto :goto_5

    :pswitch_1
    const/16 v1, 0xa

    goto :goto_4

    :pswitch_2
    const/16 v1, 0x9

    goto :goto_4

    :pswitch_3
    const/16 v1, 0x41

    goto :goto_4

    :pswitch_4
    const/16 v1, 0x45

    goto :goto_4

    :pswitch_5
    const/16 v1, 0x49

    goto :goto_4

    :pswitch_6
    const/16 v1, 0x43

    goto :goto_4

    :goto_5
    if-nez p2, :cond_7

    .line 13
    new-instance v9, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    const/4 v3, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, v16

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>([C[[C[CCI)V

    goto :goto_6

    .line 14
    :cond_7
    new-instance v9, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    move-object v1, v9

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, v16

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>([CI[CCI)V

    .line 15
    :goto_6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 16
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getWorkingCopies()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v6

    if-nez v6, :cond_8

    move v4, v10

    goto :goto_7

    .line 17
    :cond_8
    array-length v1, v6

    move v4, v1

    :goto_7
    const/4 v3, 0x1

    if-eqz v6, :cond_b

    if-ne v4, v3, :cond_9

    .line 18
    aget-object v1, v6, v10

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_9

    :cond_9
    move v1, v10

    :goto_8
    if-lt v1, v4, :cond_a

    goto :goto_9

    .line 19
    :cond_a
    aget-object v2, v6, v1

    .line 20
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 21
    :cond_b
    :goto_9
    new-instance v2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;

    move-object v1, v2

    move-object v10, v2

    move-object/from16 v2, p0

    move/from16 v17, v3

    move v3, v4

    move v0, v4

    move-object v4, v7

    move-object/from16 v18, v6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;)V

    .line 22
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching:Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-static {v15, v1, v2}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v7

    .line 23
    new-instance v1, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    .line 24
    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v2

    .line 25
    invoke-direct {v1, v9, v2, v13, v10}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    rsub-int v2, v0, 0x3e8

    const/4 v3, 0x0

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v7, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    move/from16 v3, p8

    .line 27
    invoke-virtual {v8, v1, v3, v2}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z

    if-eqz v18, :cond_1a

    const/4 v10, 0x0

    :goto_a
    if-lt v10, v0, :cond_c

    goto/16 :goto_16

    .line 28
    :cond_c
    invoke-virtual {v7, v10}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    .line 29
    aget-object v9, v18, v10

    .line 30
    instance-of v2, v13, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz v2, :cond_d

    .line 31
    move-object v2, v13

    check-cast v2, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    invoke-virtual {v2, v9, v1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_b
    move/from16 v23, v0

    move-object/from16 v26, v7

    move/from16 v21, v10

    move v0, v11

    const/16 v20, 0x0

    goto/16 :goto_15

    .line 32
    :cond_d
    invoke-interface {v13, v9}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_b

    .line 33
    :cond_e
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 34
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IOpenable;->isConsistent()Z

    move-result v1

    const/16 v8, 0x2e

    if-eqz v1, :cond_17

    .line 35
    invoke-interface {v9}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v1

    .line 36
    array-length v2, v1

    if-nez v2, :cond_f

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_c
    move-object/from16 v20, v1

    goto :goto_d

    :cond_f
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageDeclaration;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_c

    .line 37
    :goto_d
    invoke-interface {v9}, Lorg/eclipse/jdt/core/ICompilationUnit;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v9

    .line 38
    array-length v6, v9

    const/4 v5, 0x0

    :goto_e
    if-lt v5, v6, :cond_10

    goto :goto_b

    .line 39
    :cond_10
    aget-object v4, v9, v5

    .line 40
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    .line 41
    instance-of v2, v1, Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_11

    .line 42
    check-cast v1, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v1, v8}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 43
    invoke-static {v8, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v1

    :goto_f
    move-object/from16 v21, v1

    goto :goto_10

    .line 44
    :cond_11
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    goto :goto_f

    .line 45
    :goto_10
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    .line 46
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x3

    :goto_11
    move/from16 v23, v1

    goto :goto_12

    .line 47
    :cond_12
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x4

    goto :goto_11

    .line 48
    :cond_13
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->isClass()Z

    move-result v1

    if-eqz v1, :cond_14

    move/from16 v23, v17

    goto :goto_12

    :cond_14
    const/4 v1, 0x2

    goto :goto_11

    :goto_12
    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 p5, v4

    move/from16 v4, p2

    move/from16 v24, v5

    move-object/from16 v5, p3

    move/from16 v25, v6

    move v6, v11

    move-object/from16 v26, v7

    move/from16 v7, v23

    move/from16 v23, v0

    move v0, v8

    move-object/from16 v8, v20

    move-object/from16 v27, v9

    move-object/from16 v9, v22

    .line 49
    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match(C[CI[CII[C[C)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 50
    instance-of v1, v14, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;

    if-eqz v1, :cond_15

    .line 51
    move-object v1, v14

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v3

    move-object/from16 v4, p5

    invoke-direct {v2, v4, v3}, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;-><init>(Lorg/eclipse/jdt/core/IType;I)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;->acceptTypeNameMatch(Lorg/eclipse/jdt/core/search/TypeNameMatch;)V

    goto :goto_13

    :cond_15
    move-object/from16 v4, p5

    .line 52
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v2

    const/4 v7, 0x0

    move-object/from16 v1, p7

    move-object/from16 v3, v20

    move-object/from16 v4, v22

    move-object/from16 v5, v21

    move-object/from16 v6, v19

    invoke-interface/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_16
    :goto_13
    add-int/lit8 v5, v24, 0x1

    move v8, v0

    move/from16 v0, v23

    move/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v9, v27

    goto/16 :goto_e

    :cond_17
    move/from16 v23, v0

    move-object/from16 v26, v7

    move v0, v8

    .line 53
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    .line 54
    move-object v2, v9

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 55
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-object/from16 v8, p0

    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v7, 0x0

    invoke-direct {v3, v2, v7, v7, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 56
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 57
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v1, :cond_18

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_14

    :cond_18
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    .line 58
    :goto_14
    new-instance v5, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;

    move-object v1, v5

    move-object/from16 v2, p0

    move/from16 v3, v16

    move-object/from16 v4, p1

    move-object v12, v5

    move/from16 v5, p2

    move-object v13, v6

    move-object/from16 v6, p3

    move/from16 v20, v7

    move v7, v11

    move-object v8, v0

    move-object v0, v9

    move-object/from16 v9, p7

    move/from16 v21, v10

    move-object v10, v0

    move v0, v11

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;C[CI[CI[CLorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/lang/String;)V

    iget-object v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v13, v12, v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_15

    :cond_19
    move/from16 v20, v7

    move/from16 v21, v10

    move v0, v11

    :goto_15
    add-int/lit8 v10, v21, 0x1

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    move v11, v0

    move/from16 v0, v23

    move-object/from16 v7, v26

    goto/16 :goto_a

    :cond_1a
    :goto_16
    if-eqz v15, :cond_1b

    .line 59
    invoke-interface/range {p9 .. p9}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_1b
    return-void

    :goto_17
    if-eqz v15, :cond_1c

    invoke-interface/range {p9 .. p9}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    .line 60
    :cond_1c
    throw v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public searchAllTypeNames([[C[[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v8, p8

    .line 61
    :try_start_0
    sget-boolean v4, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v4, :cond_2

    .line 62
    const-string v4, "BasicSearchEngine.searchAllTypeNames(char[][], char[][], int, int, IJavaSearchScope, IRestrictedAccessTypeRequestor, int, IProgressMonitor)"

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t- package name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x2c

    const-string v6, "null"

    if-nez v0, :cond_0

    move-object v9, v6

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "\t- type name: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t- match rule: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getMatchRuleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t- search for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t- scope: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_12

    .line 68
    :cond_2
    :goto_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v4

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_0

    move v2, v13

    goto :goto_3

    :pswitch_0
    const/16 v2, 0xb

    goto :goto_3

    :pswitch_1
    const/16 v2, 0xa

    goto :goto_3

    :pswitch_2
    const/16 v2, 0x9

    goto :goto_3

    :pswitch_3
    const/16 v2, 0x41

    goto :goto_3

    :pswitch_4
    const/16 v2, 0x45

    goto :goto_3

    :pswitch_5
    const/16 v2, 0x49

    goto :goto_3

    :pswitch_6
    const/16 v2, 0x43

    .line 69
    :goto_3
    new-instance v14, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;

    invoke-direct {v14, v0, v1, v2, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;-><init>([[C[[CCI)V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getWorkingCopies()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v6

    if-nez v6, :cond_3

    move v1, v13

    goto :goto_4

    .line 72
    :cond_3
    array-length v1, v6

    :goto_4
    if-eqz v6, :cond_6

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 73
    aget-object v2, v6, v13

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object/from16 v18, v2

    goto :goto_8

    :cond_4
    move v2, v13

    :goto_6
    if-lt v2, v1, :cond_5

    goto :goto_7

    .line 74
    :cond_5
    aget-object v5, v6, v2

    .line 75
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    const/4 v2, 0x0

    goto :goto_5

    .line 76
    :goto_8
    new-instance v2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$6;

    move-object v15, v2

    move-object/from16 v16, p0

    move/from16 v17, v1

    move-object/from16 v19, v0

    move-object/from16 v20, p6

    invoke-direct/range {v15 .. v20}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$6;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;)V

    .line 77
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->engine_searching:Ljava/lang/String;

    const/16 v1, 0x64

    invoke-static {v8, v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    .line 78
    new-instance v5, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    .line 79
    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v15

    .line 80
    invoke-direct {v5, v14, v15, v3, v2}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    .line 81
    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    move/from16 v1, p7

    .line 82
    invoke-virtual {v4, v5, v1, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z

    if-eqz v6, :cond_7

    .line 83
    array-length v15, v6

    move v5, v13

    :goto_9
    if-lt v5, v15, :cond_8

    :cond_7
    move-object/from16 v9, p0

    goto/16 :goto_11

    .line 84
    :cond_8
    aget-object v0, v6, v5

    .line 85
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 86
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOpenable;->isConsistent()Z

    move-result v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_12

    .line 87
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v1

    .line 88
    array-length v3, v1

    if-nez v3, :cond_9

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_a

    :cond_9
    aget-object v1, v1, v13

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageDeclaration;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 89
    :goto_a
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    .line 90
    array-length v3, v0

    move v4, v13

    :goto_b
    if-lt v4, v3, :cond_b

    move-object/from16 v9, p0

    :cond_a
    move v12, v5

    move-object/from16 v16, v6

    goto/16 :goto_10

    .line 91
    :cond_b
    aget-object v16, v0, v4

    .line 92
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v9

    .line 93
    instance-of v10, v9, Lorg/eclipse/jdt/core/IType;

    if-eqz v10, :cond_c

    .line 94
    check-cast v9, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v9, v2}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 95
    invoke-static {v2, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v10

    .line 96
    invoke-static {v1, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v9

    move-object/from16 v20, v10

    goto :goto_c

    .line 97
    :cond_c
    sget-object v9, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    move-object/from16 v20, v9

    move-object v9, v1

    .line 98
    :goto_c
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 99
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IType;->isClass()Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v11, 0x43

    goto :goto_d

    .line 100
    :cond_d
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IType;->isInterface()Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v11, 0x49

    goto :goto_d

    .line 101
    :cond_e
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IType;->isEnum()Z

    move-result v17

    if-eqz v17, :cond_f

    const/16 v11, 0x45

    goto :goto_d

    .line 102
    :cond_f
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IType;->isAnnotation()Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v11, 0x41

    goto :goto_d

    :cond_10
    move v11, v13

    .line 103
    :goto_d
    new-instance v12, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    invoke-direct {v12, v9, v10, v11, v7}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>([C[CCI)V

    invoke-virtual {v14, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 104
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v17

    const/16 v22, 0x0

    move-object/from16 v16, p6

    move-object/from16 v18, v1

    move-object/from16 v19, v10

    move-object/from16 v21, v23

    invoke-interface/range {v16 .. v22}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 105
    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    .line 106
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 107
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, p0

    :try_start_2
    iget-object v4, v9, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v3, v0, v13, v13, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 108
    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 109
    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v0, :cond_13

    .line 110
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_e
    move-object v2, v0

    goto :goto_f

    :catchall_1
    move-exception v0

    goto :goto_12

    .line 111
    :cond_13
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v0

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    goto :goto_e

    .line 112
    :goto_f
    new-instance v11, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object v4, v14

    move v12, v5

    move-object/from16 v5, p6

    move-object/from16 v16, v6

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;[CILorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;Ljava/lang/String;)V

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v10, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_10
    add-int/lit8 v5, v12, 0x1

    move-object/from16 v6, v16

    goto/16 :goto_9

    :goto_11
    if-eqz v8, :cond_14

    .line 113
    invoke-interface/range {p8 .. p8}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_14
    return-void

    :goto_12
    if-eqz v8, :cond_15

    invoke-interface/range {p8 .. p8}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    .line 114
    :cond_15
    throw v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public searchDeclarations(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t- java element: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    new-array v2, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v2, v0

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v6

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    instance-of v3, p1, Lorg/eclipse/jdt/core/IMember;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    :try_start_1
    instance-of v3, v2, Lorg/eclipse/core/resources/IFile;
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/search/SearchRequestor;->beginReporting()V

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Searching for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v3

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    new-array v1, v1, [Lorg/eclipse/jdt/core/search/SearchDocument;

    aput-object v2, v1, v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getWorkingCopies(Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    invoke-static {p3, v1, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->addWorkingCopies(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchDocument;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/SearchParticipant;)[Lorg/eclipse/jdt/core/search/SearchDocument;

    move-result-object v4

    move-object v5, p3

    move-object v7, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/core/search/SearchParticipant;->locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/search/SearchRequestor;->endReporting()V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :goto_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/search/SearchRequestor;->endReporting()V

    throw p1

    :cond_4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object p1

    filled-new-array {p1}, [Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v5

    move-object v3, p0

    move-object v4, p3

    move-object v7, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->search(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz p4, :cond_5

    invoke-interface {p4}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_5
    return-void

    :goto_5
    :try_start_4
    instance-of p2, p1, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz p2, :cond_6

    check-cast p1, Lorg/eclipse/jdt/core/JavaModelException;

    throw p1

    :cond_6
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    if-eqz p4, :cond_7

    invoke-interface {p4}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_7
    throw p1
.end method

.method public searchDeclarationsOfAccessedFields(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "BasicSearchEngine.searchDeclarationsOfAccessedFields(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarations(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchDeclarationsOfReferencedTypes(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "BasicSearchEngine.searchDeclarationsOfReferencedTypes(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarations(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public searchDeclarationsOfSentMessages(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "BasicSearchEngine.searchDeclarationsOfSentMessages(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedMethodsPattern;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedMethodsPattern;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchDeclarations(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method
