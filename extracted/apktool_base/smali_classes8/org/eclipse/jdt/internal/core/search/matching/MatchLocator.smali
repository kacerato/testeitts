.class public Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;,
        Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;
    }
.end annotation


# static fields
.field public static final MAX_AT_ONCE:I


# instance fields
.field public allSuperTypeNames:[[[C

.field private basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field public currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

.field public handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

.field public hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

.field inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

.field public lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field matchBinding:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/search/SearchMatch;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/Binding;",
            ">;"
        }
    .end annotation
.end field

.field public matchContainer:I

.field public matchesToProcess:[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

.field methodHandles:Ljava/util/HashSet;

.field public nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

.field public nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

.field public numberOfMatches:I

.field public options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field public parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

.field public pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

.field public patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

.field public progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

.field progressStep:I

.field progressWorked:I

.field public requestor:Lorg/eclipse/jdt/core/search/SearchRequestor;

.field public resultCollectorTime:J

.field public scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

.field private final searchPackageDeclaration:Z

.field private sourceEndOfMethodToRetain:I

.field private sourceStartOfMethodToRetain:I

.field private subScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

.field unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

.field private unitScopeTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4190000000000000L    # 6.7108864E7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v0, 0x190

    sput v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->MAX_AT_ONCE:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    sput v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->MAX_AT_ONCE:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xc8

    sput v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->MAX_AT_ONCE:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    sput v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->MAX_AT_ONCE:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->subScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchBinding:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->resultCollectorTime:J

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScopeTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->patternLocator(Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchContainer()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->requestor:Lorg/eclipse/jdt/core/search/SearchRequestor;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->searchPackageDeclaration:Z

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->hasPackageDeclaration()Z

    move-result p2

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->searchPackageDeclaration:Z

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->searchPackageDeclaration:Z

    :goto_1
    instance-of p2, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringType:Lorg/eclipse/jdt/core/IType;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result p2

    if-nez p2, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Member;->getOuterMostLocalContext()Lorg/eclipse/jdt/internal/core/Member;

    move-result-object p1

    instance-of p2, p1, Lorg/eclipse/jdt/core/IMethod;

    if-eqz p2, :cond_3

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/ISourceReference;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->sourceStartOfMethodToRetain:I

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->sourceEndOfMethodToRetain:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static addWorkingCopies(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchDocument;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/SearchParticipant;)[Lorg/eclipse/jdt/core/search/SearchDocument;
    .locals 5

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-static {p2, p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->workingCopiesThatCanSeeFocus([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-lt v2, p2, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p3

    if-eqz p3, :cond_4

    add-int/2addr p3, p2

    new-array p3, p3, [Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-static {p1, v0, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    move-object p1, p3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p2, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/search/SearchDocument;

    aput-object v0, p3, p2

    move p2, p1

    goto :goto_2

    :cond_4
    :goto_3
    return-object p1

    :cond_5
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchDocument;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v4

    if-ne v4, p3, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/search/SearchDocument;

    if-eqz v3, :cond_7

    if-nez v1, :cond_6

    new-array v1, p2, [Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-static {p1, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    aput-object v3, v1, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static classFileReader(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 9

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOpenable;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v5

    if-nez v5, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->newClassFileReader(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x2f

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v1, v0, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->readFromJrt(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/env/IModule;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :try_start_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") [MatchLocator.classFileReader()] Creating ZipFile on "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v2, v0, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    :goto_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw p0
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v4
.end method

.method private createHandles([Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 4

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v0, v2, [Lorg/eclipse/jdt/core/IJavaElement;

    :goto_2
    if-lt v1, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-object v3, p1, v1

    invoke-virtual {p0, v3, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method private createMethodHandle(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0

    invoke-interface {p1, p2, p3}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    instance-of p2, p1, Lorg/eclipse/jdt/internal/core/SourceMethod;

    if-eqz p2, :cond_1

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->methodHandles:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/core/SourceMethod;

    iget p3, p2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->methodHandles:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private filterEnum(Lorg/eclipse/jdt/core/search/SearchMatch;)Z
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragment;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    aget-object v0, v1, v0

    const-string v1, "enum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const-wide/32 v1, 0x310000

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaProject;

    const-string v0, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {p1, v0, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-ltz p1, :cond_1

    return v3

    :cond_0
    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long p1, v4, v1

    if-ltz p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static findIndexMatches(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lorg/eclipse/jdt/core/search/SearchPattern;->findIndexMatches(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method private findLastTypeArgumentInfo(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)J
    .locals 5

    const/4 v0, 0x0

    :goto_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    move-object v4, v2

    :goto_1
    if-ltz v3, :cond_2

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    move-object v4, v2

    :cond_2
    :goto_2
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-nez v1, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    if-nez v4, :cond_4

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :cond_4
    if-eqz v4, :cond_6

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    aget-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-nez v2, :cond_7

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    goto :goto_0
.end method

.method private getCloserOpenable(Lorg/eclipse/jdt/internal/core/Openable;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/Openable;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleNames:[[C

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "org.eclipse.jdt.core.compiler.compliance"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v3, 0x350000

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v4, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getSubScope(Ljava/lang/String;JZ)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createOpenable(Ljava/lang/String;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getInverseFullName([C[C)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C[C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    const-string p1, "\\."

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    const/4 p2, 0x0

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private getMaxResult([[I)I
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v1

    :goto_0
    if-lt v4, v2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v5, p1, v1

    aget v5, v5, v4

    const/4 v6, 0x1

    move v7, v6

    :goto_1
    if-lt v7, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v6, :cond_1

    :goto_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget-object v8, p1, v7

    aget v8, v8, v4

    if-ge v8, v5, :cond_3

    goto :goto_3

    :cond_3
    if-le v8, v5, :cond_4

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v5, v8

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private getMethodBinding(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    if-nez v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 33
    :cond_0
    array-length v3, v2

    .line 34
    move-object/from16 v4, p2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 35
    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    .line 36
    array-length v6, v5

    .line 37
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 38
    :cond_1
    array-length v8, v4

    .line 39
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v6, :cond_2

    .line 40
    invoke-direct {v0, v9, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMostApplicableMethod(Ljava/util/List;Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    return-object v1

    .line 41
    :cond_2
    aget-object v11, v5, v10

    iget-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v12, :cond_3

    const/4 v13, 0x0

    goto :goto_2

    .line 42
    :cond_3
    array-length v13, v12

    .line 43
    :goto_2
    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v11, :cond_4

    const/4 v14, 0x0

    goto :goto_3

    .line 44
    :cond_4
    array-length v14, v11

    :goto_3
    if-eqz v12, :cond_e

    if-ne v13, v3, :cond_e

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4
    if-lt v15, v13, :cond_5

    goto :goto_a

    .line 45
    :cond_5
    aget-object v7, v12, v15

    .line 46
    invoke-direct {v0, v1, v15, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchParams(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    const/16 v16, 0x1

    if-eqz v7, :cond_6

    goto :goto_9

    :cond_6
    if-eqz v4, :cond_8

    const/4 v7, 0x0

    const/16 v17, 0x0

    :goto_5
    if-lt v7, v8, :cond_7

    goto :goto_6

    .line 47
    :cond_7
    aget-object v0, v4, v7

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    aget-object v1, v2, v15

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/16 v17, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v17, v16

    goto :goto_5

    :goto_6
    if-nez v17, :cond_a

    if-eqz v11, :cond_a

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v14, :cond_b

    :cond_a
    move/from16 v16, v17

    goto :goto_8

    .line 48
    :cond_b
    aget-object v1, v11, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    aget-object v7, v2, v15

    invoke-static {v1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v16, 0x0

    goto :goto_8

    :cond_c
    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v16

    goto :goto_7

    :goto_8
    if-nez v16, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_4

    :cond_e
    const/16 v16, 0x0

    :goto_a
    if-eqz v16, :cond_f

    .line 49
    aget-object v0, v5, v10

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1
.end method

.method private getMethodBinding0(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v0, :cond_1

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedPattern([C[C)[C

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringType:Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getType(Ljava/lang/Object;[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMethodBinding(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-eqz v0, :cond_6

    move-object v3, v0

    goto :goto_1

    :cond_6
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    const/4 v5, 0x1

    invoke-direct {v3, v4, v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    :goto_1
    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getMostApplicableMethod(Ljava/util/List;Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
            ">;",
            "Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;",
            ")",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getSplitNames([[C[[C)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [[I

    :goto_1
    if-lt v1, v0, :cond_1

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMaxResult([[I)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_2

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getSplitNames(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getResultMap(Ljava/util/Map;Ljava/util/Map;)[I

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v2
.end method

.method public static getProjectOrJar(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    :goto_0
    instance-of v0, p0, Lorg/eclipse/jdt/core/IJavaProject;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private getResultMap(Ljava/util/Map;Ljava/util/Map;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->mapParameter(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getSplitNames(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_1
    if-lt v0, v1, :cond_1

    return-object v2

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedSourceName()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getInverseFullName([C[C)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getSplitNames([[C[[C)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[C[[C)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, p1, v2

    aget-object v5, p2, v2

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getInverseFullName([C[C)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getSubScope(Ljava/lang/String;JZ)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->subScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_1

    new-array p1, v4, [Lorg/eclipse/jdt/core/IJavaProject;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {p1, p4}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->subScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    return-object p1

    :cond_1
    aget-object v6, v0, v5

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v7

    invoke-interface {v6, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v6, p1, v8}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v7, v7, p2

    if-ltz v7, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private mapParameter(Ljava/util/List;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    if-ne v0, v1, :cond_2

    add-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_2

    const v3, 0x7fffffff

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private matchParams(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    aget-object v0, v0, p2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    aget-object p1, p1, p2

    const/16 p2, 0x2e

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-char v0, p1, v1

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v0, Ljava/lang/String;

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object p1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedSourceName()[C

    move-result-object p3

    invoke-static {p1, p3, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static projectOrJarFocus(Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getProjectOrJar(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 237
    array-length v0, p1

    if-lez v0, :cond_6

    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    :cond_0
    aget-object v3, p1, v2

    .line 239
    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 240
    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 241
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v8, v7

    invoke-static {v7, v1, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v6

    .line 242
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v4, v7

    move-object v7, p3

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 243
    :cond_1
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz v3, :cond_5

    .line 244
    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_2

    .line 245
    :cond_2
    array-length v4, v3

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_3

    goto :goto_2

    :cond_3
    aget-object v7, v3, v5

    .line 246
    iget-object v6, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 247
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v6, v8

    move-object v8, p3

    move-object v11, p0

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    if-eqz v9, :cond_4

    .line 248
    array-length v0, v9

    if-lez v0, :cond_4

    .line 249
    array-length v12, v9

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-lt v14, v12, :cond_0

    goto :goto_3

    :cond_0
    aget-object v15, v9, v14

    .line 250
    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_1

    .line 251
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 252
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v2

    move-object/from16 v2, p4

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 253
    :cond_1
    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 254
    array-length v7, v15

    move v6, v13

    :goto_1
    if-lt v6, v7, :cond_2

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    aget-object v1, v15, v6

    if-eqz v1, :cond_3

    .line 255
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 256
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v2

    move-object/from16 v2, p4

    move/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_2

    :cond_3
    move/from16 v17, v6

    move/from16 v16, v7

    :goto_2
    add-int/lit8 v6, v17, 0x1

    move/from16 v7, v16

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method private reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 9

    if-eqz p1, :cond_3

    .line 233
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    :try_start_0
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p1, v0

    .line 235
    iget-object v2, p3, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 236
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v5, p4

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 11

    if-eqz p1, :cond_2

    .line 257
    array-length v0, p1

    if-lez v0, :cond_2

    .line 258
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_3

    :cond_0
    aget-object v2, p1, v1

    .line 259
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v4, :cond_1

    .line 260
    iget-object v2, p3, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 261
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v8, p2, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p4

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method private reportMatching([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    .line 94
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v9

    move-object v2, p0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private reportMatchingAutoModule(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    new-instance v2, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->autoModuleName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {v2, v0, p2, v1}, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    array-length v5, p2

    move-object v1, p1

    move v4, p3

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method

.method public static setFocus(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method private skipMatch(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)Z
    .locals 4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x350000

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getModuleName()[C

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static workingCopiesThatCanSeeFocus([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;)Ljava/util/HashMap;
    .locals 6

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-object v0

    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getProjectOrJar(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    iget-object v5, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v5, :cond_2

    invoke-static {p1, v4}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->canSeeFocus(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IPath;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    :cond_2
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;

    invoke-direct {v5, v3, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-void
.end method

.method public accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 4

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->basicParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-ne v1, p1, :cond_1

    .line 7
    :goto_0
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p1, :cond_0

    .line 8
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lez p1, :cond_0

    .line 9
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    throw p2
.end method

.method public accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 3

    const/4 p2, 0x0

    .line 11
    aget-object v0, p1, p2

    .line 12
    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v1

    if-nez v1, :cond_2

    .line 13
    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    if-eqz v1, :cond_0

    .line 14
    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 15
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 17
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_1

    .line 18
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2, p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    .line 19
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    const/16 v0, 0xf

    .line 20
    invoke-static {p1, v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->buildCompilationUnit([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 22
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    :cond_1
    :goto_1
    return-void

    .line 23
    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v0

    goto :goto_0
.end method

.method public basicParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-object v0
.end method

.method public cacheBinaryType(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->cacheBinaryType(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    :cond_0
    if-nez p2, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/ClassFile;

    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getBinaryInfo(Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    instance-of p2, p1, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/eclipse/jdt/core/JavaModelException;

    throw p1

    :cond_1
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/16 v0, 0x2e

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getCachedType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v0, :cond_3

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    :cond_3
    return-object p2
.end method

.method public computeSuperTypeNames(Lorg/eclipse/jdt/core/IType;)[[[C
    .locals 8

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    new-instance v5, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->requestor:Lorg/eclipse/jdt/core/search/SearchRequestor;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    invoke-direct {v5, v2, v1, v6, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;[C[CLorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collect()[[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->allSuperTypeNames:[[[C
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->allSuperTypeNames:[[[C

    return-object p1
.end method

.method public createBinaryMethodHandle(Lorg/eclipse/jdt/core/IType;[C[[C)Lorg/eclipse/jdt/core/IMethod;
    .locals 15

    move-object/from16 v0, p3

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->classFileReader(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v0

    :goto_0
    array-length v4, v1

    move v5, v2

    :goto_1
    if-lt v5, v4, :cond_2

    :cond_1
    move-object v6, p0

    goto/16 :goto_8

    :cond_2
    aget-object v6, v1, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    :goto_2
    move-object/from16 v8, p2

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v7

    goto :goto_2

    :goto_3
    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v9

    if-nez v9, :cond_4

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v9

    :cond_4
    invoke-static {v9}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v6

    array-length v9, v6

    if-eq v3, v9, :cond_6

    :cond_5
    :goto_4
    move-object v6, p0

    move-object/from16 v7, p1

    goto :goto_7

    :cond_6
    if-eqz v0, :cond_9

    move v9, v2

    :goto_5
    if-lt v9, v3, :cond_7

    goto :goto_6

    :cond_7
    aget-object v10, v6, v9

    invoke-static {v10}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v10

    invoke-static {v10}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v11

    invoke-static {v11}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v11

    aget-object v12, v0, v9

    const/16 v13, 0x24

    const/16 v14, 0x2e

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v12

    invoke-static {v11, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_4

    :cond_8
    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v1

    move-object v6, p0

    move-object/from16 v7, p1

    invoke-direct {p0, v7, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createMethodHandle(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    return-object v0

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 13

    const/4 v0, 0x1

    .line 4
    instance-of v1, p2, Lorg/eclipse/jdt/core/IType;

    if-nez v1, :cond_0

    return-object p2

    .line 5
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/IType;

    .line 6
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    .line 7
    :cond_1
    array-length v3, v1

    .line 8
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v4

    const/16 v5, 0x2e

    if-eqz v4, :cond_e

    .line 9
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->classFileReader(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_c

    .line 10
    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isMember()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v4

    invoke-static {v4}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/2addr v3, v0

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v2

    .line 11
    :goto_1
    new-array v7, v3, [[C

    move v8, v2

    :goto_2
    if-lt v8, v3, :cond_6

    .line 12
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-virtual {p0, p2, v0, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createBinaryMethodHandle(Lorg/eclipse/jdt/core/IType;[C[[C)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p2

    if-nez p2, :cond_5

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSimilarMatch()Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_3

    goto :goto_4

    .line 14
    :cond_3
    iget-object p2, v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast p2, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    .line 15
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-virtual {p0, p2, v1, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createBinaryMethodHandle(Lorg/eclipse/jdt/core/IType;[C[[C)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p2

    if-eqz p2, :cond_4

    return-object p2

    .line 16
    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSimilarMatch()Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_4
    return-object p2

    :cond_6
    if-nez v8, :cond_7

    if-eqz v4, :cond_7

    .line 17
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v9

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    goto :goto_7

    :cond_7
    if-eqz v1, :cond_a

    if-eqz v4, :cond_8

    add-int/lit8 v9, v8, -0x1

    goto :goto_5

    :cond_8
    move v9, v8

    .line 18
    :goto_5
    aget-object v9, v1, v9

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 19
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v10

    invoke-static {v10, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v10

    .line 20
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v9

    move v11, v2

    :goto_6
    if-lt v11, v9, :cond_9

    move-object v9, v10

    goto :goto_7

    :cond_9
    const/4 v12, 0x2

    .line 21
    new-array v12, v12, [C

    fill-array-data v12, :array_0

    invoke-static {v10, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v10

    add-int/2addr v11, v0

    goto :goto_6

    :cond_a
    move-object v9, v6

    :goto_7
    if-nez v9, :cond_b

    return-object v6

    .line 22
    :cond_b
    aput-object v9, v7, v8

    add-int/2addr v8, v0

    goto :goto_2

    .line 23
    :cond_c
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p2, :cond_d

    .line 24
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not able to createHandle for the method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " May miss some results"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    return-object v6

    .line 27
    :cond_e
    new-array v4, v3, [Ljava/lang/String;

    if-eqz v1, :cond_10

    move v6, v2

    :goto_8
    if-lt v6, v3, :cond_f

    goto :goto_9

    .line 28
    :cond_f
    aget-object v7, v1, v6

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 29
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v7

    invoke-static {v7, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v7

    .line 30
    invoke-static {v7, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/2addr v6, v0

    goto :goto_8

    .line 31
    :cond_10
    :goto_9
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p2, v0, v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createMethodHandle(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 2
        0x5bs
        0x5ds
    .end array-data
.end method

.method public createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 13

    .line 42
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->getKind()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 43
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeParameter;

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElement;

    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    move v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :goto_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    .line 45
    new-instance v0, Lorg/eclipse/jdt/internal/core/LocalVariable;

    move-object v2, p2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    .line 46
    new-instance v3, Ljava/lang/String;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([C)V

    .line 47
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    .line 48
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 49
    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 50
    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 51
    new-instance v8, Ljava/lang/String;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object p2

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([C)V

    .line 52
    iget-object v9, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 53
    iget v10, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    .line 54
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions()[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v12

    move-object v1, v0

    .line 55
    invoke-direct/range {v1 .. v12}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    return-object v0

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 56
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 57
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object p1

    .line 58
    new-instance v1, Ljava/lang/String;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 59
    :try_start_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IAnnotatable;->getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_0

    .line 60
    :cond_1
    array-length v3, p1

    :goto_0
    move v4, v2

    :goto_1
    if-lt v4, v3, :cond_6

    .line 61
    instance-of p1, p2, Lorg/eclipse/jdt/internal/core/LocalVariable;

    if-eqz p1, :cond_8

    .line 62
    check-cast p2, Lorg/eclipse/jdt/internal/core/LocalVariable;

    .line 63
    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/LocalVariable;->annotationsOnDimensions:[[Lorg/eclipse/jdt/core/IAnnotation;

    if-nez p1, :cond_2

    move p2, v2

    goto :goto_2

    .line 64
    :cond_2
    array-length p2, p1

    :goto_2
    move v3, v2

    :goto_3
    if-lt v3, p2, :cond_3

    goto :goto_5

    .line 65
    :cond_3
    aget-object v4, p1, v3

    .line 66
    array-length v5, v4

    move v6, v2

    :goto_4
    if-lt v6, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 67
    :cond_4
    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IAnnotation;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 68
    aget-object p1, v4, v6

    return-object p1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 69
    :cond_6
    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IAnnotation;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 70
    aget-object p1, p1, v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    :cond_8
    :goto_5
    return-object v0
.end method

.method public createHandle(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 5

    .line 32
    instance-of v0, p3, Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_0

    return-object p3

    .line 33
    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/IType;

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 35
    invoke-interface {p3}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p3

    .line 36
    :cond_1
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move v1, v0

    goto :goto_0

    .line 37
    :cond_2
    array-length v1, p2

    :goto_0
    move v2, v0

    :goto_1
    if-lt v0, v1, :cond_3

    goto :goto_2

    .line 38
    :cond_3
    aget-object v3, p2, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 39
    aget-object v3, p2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 40
    :goto_2
    invoke-interface {p3, v2}, Lorg/eclipse/jdt/core/IType;->getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_5
    new-instance p2, Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p3, p2}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object p1

    return-object p1
.end method

.method public createHandle(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0

    .line 1
    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->createLambdaExpression(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/core/LambdaExpression;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->getMethod()Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->methodHandles:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public createHierarchyResolver(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)Z
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-lt v3, v1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->cacheBinaryType(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return v2

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_1

    :cond_1
    aget-object v5, p2, v3

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->compoundName:[[C

    invoke-static {v5, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    new-instance p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p1, p2, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->setFocusType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v0, 0x20000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public createImportHandle(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const-string p1, ".*"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createTypeHandle(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public createPackageDeclarationHandle(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getMainTypeName()[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createTypeHandle(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public createTypeHandle(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v1

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getOrdinaryClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBinaryInfo(Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v2, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-static {p2, p1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast v3, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getJar()Ljava/util/zip/ZipFile;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v1

    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw p1

    :cond_1
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->newClassFileReader(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object p1

    throw p1
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v0, 0x3d9

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    return-object v1
.end method

.method public getFocusType()Lorg/eclipse/jdt/core/IType;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMethodBinding(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScopeTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMethodBinding0(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/SourceMethod;

    if-eqz v2, :cond_2

    .line 4
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedPattern([C[C)[C

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringType:Lorg/eclipse/jdt/core/IType;

    .line 6
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    :goto_0
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-nez v1, :cond_1

    .line 7
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 8
    invoke-virtual {p0, v1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getType(Ljava/lang/Object;[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_6

    .line 10
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 11
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 13
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget-object v1, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast v1, Lorg/eclipse/jdt/core/IMethod;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findMethod(Lorg/eclipse/jdt/core/IMethod;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1

    .line 17
    :cond_1
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    goto :goto_0

    .line 18
    :cond_2
    instance-of v1, v1, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    if-eqz v1, :cond_6

    .line 19
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringType:Lorg/eclipse/jdt/core/IType;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v1, :cond_6

    .line 20
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScopeTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v1, :cond_6

    .line 21
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedPattern([C[C)[C

    move-result-object v1

    if-eqz v1, :cond_6

    .line 22
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringType:Lorg/eclipse/jdt/core/IType;

    .line 23
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    :goto_1
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-nez v1, :cond_5

    .line 24
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 25
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScopeTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 26
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v2, :cond_6

    .line 27
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 28
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->problemId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 29
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestReferenceMatch()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_4

    .line 30
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMethodBinding(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :cond_4
    return-object v0

    .line 31
    :cond_5
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public getMethodBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V
    .locals 5

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreMethodBodies:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iput-object p2, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->parseBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iput-object v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    return-void

    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iput-object v3, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-object v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iput v2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    throw p1
.end method

.method public getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/Object;[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v0, :cond_2

    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/16 v0, 0x2e

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    array-length v2, p2

    invoke-virtual {v0, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScopeTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v1, v0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public hasAlreadyDefinedType(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Z
    .locals 4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lt v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v2

    const v3, 0x1000143

    if-ne v2, v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initialize(Lorg/eclipse/jdt/internal/core/JavaProject;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq p2, v2, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment([Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-object v4, v4, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    if-eq v4, p1, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->create(Ljava/util/List;[Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    const-string v3, "org.eclipse.jdt.core.compiler.taskTags"

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v3, p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {p1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-direct {v3, p0, v4, p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;-><init>(Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->createParser(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    new-array p1, p2, [Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchesToProcess:[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->addResolutionListener(Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;)V

    return-void
.end method

.method public locateMatches(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->getPossibleMatches([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    move-result-object p2

    .line 88
    array-length v0, p2

    .line 89
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v1, :cond_0

    if-le p3, v0, :cond_0

    .line 90
    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    sub-int/2addr p3, v0

    add-int/2addr v2, p3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 91
    invoke-interface {v1, p3}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-lt p3, v0, :cond_1

    .line 92
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->clear()V

    return-void

    .line 93
    :cond_1
    sget v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->MAX_AT_ONCE:I

    sub-int v2, v0, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locateMatches(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;II)V

    add-int/2addr p3, v1

    goto :goto_0
.end method

.method public locateMatches(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->initialize(Lorg/eclipse/jdt/internal/core/JavaProject;I)V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x310000

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    add-int/2addr p4, p3

    move v1, v0

    move v2, v1

    :goto_1
    const/4 v5, 0x0

    if-lt p3, p4, :cond_3

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getFocusType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    goto/16 :goto_6

    .line 7
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHierarchyResolver(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 8
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->computeSuperTypeNames(Lorg/eclipse/jdt/core/IType;)[[[C

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    .line 9
    :cond_3
    aget-object v6, p2, p3

    .line 10
    invoke-direct {p0, p1, v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->skipMatch(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)Z

    move-result v7
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    goto/16 :goto_4

    .line 11
    :cond_4
    :try_start_1
    invoke-virtual {p0, v6, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parseAndBuildBindings(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;Z)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_6

    .line 12
    :try_start_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->hasSimilarMatch()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 13
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSimilarMatch()Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    move-result-object v7

    aput-object v7, p2, p3

    add-int/lit8 p3, p3, -0x1

    .line 14
    :cond_5
    iget-object v7, v6, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    if-nez v7, :cond_c

    .line 15
    :goto_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->cleanUp()V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 16
    :cond_6
    :try_start_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    if-eqz v7, :cond_7

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 17
    iget-object v2, v6, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-boolean v1, v2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    move v2, v1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 18
    :cond_7
    iget-object v7, v6, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iput-boolean v0, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    .line 19
    :cond_8
    :goto_3
    iget-object v7, v6, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    if-nez v7, :cond_a

    .line 20
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v7, :cond_9

    .line 21
    iget v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    add-int/2addr v8, v4

    iput v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 22
    iget v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    rem-int/2addr v8, v9

    if-nez v8, :cond_9

    invoke-interface {v7, v9}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    .line 23
    :cond_9
    invoke-virtual {p0, v6, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->process(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;Z)V

    .line 24
    iget v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    if-lez v7, :cond_a

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchesToProcess:[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    add-int/lit8 v9, v7, -0x1

    aget-object v8, v8, v9

    if-ne v8, v6, :cond_a

    add-int/lit8 v7, v7, -0x1

    .line 25
    iput v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :cond_a
    :try_start_4
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->hasSimilarMatch()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 27
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSimilarMatch()Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    move-result-object v7

    aput-object v7, p2, p3

    add-int/lit8 p3, p3, -0x1

    .line 28
    :cond_b
    iget-object v7, v6, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    if-nez v7, :cond_c

    goto :goto_2

    :cond_c
    :goto_4
    add-int/2addr p3, v4

    goto/16 :goto_1

    .line 29
    :goto_5
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->hasSimilarMatch()Z

    move-result p4

    if-eqz p4, :cond_d

    .line 30
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSimilarMatch()Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    move-result-object p4

    aput-object p4, p2, p3

    .line 31
    :cond_d
    iget-object p2, v6, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    if-nez p2, :cond_e

    .line 32
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->cleanUp()V

    .line 33
    :cond_e
    throw p1
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move v2, v3

    :cond_f
    :goto_6
    if-nez v1, :cond_10

    return-void

    :cond_10
    move p1, v3

    .line 34
    :goto_7
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    if-lt p1, p2, :cond_11

    return-void

    .line 35
    :cond_11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz p2, :cond_13

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_8

    .line 36
    :cond_12
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    .line 37
    :cond_13
    :goto_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchesToProcess:[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    aget-object p3, p2, p1

    .line 38
    aput-object v5, p2, p1

    .line 39
    :try_start_5
    invoke-virtual {p0, p3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->process(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;Z)V
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 40
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz p2, :cond_14

    .line 41
    iget p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    add-int/2addr p4, v4

    iput p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 42
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    rem-int/2addr p4, v0

    if-nez p4, :cond_14

    invoke-interface {p2, v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    .line 43
    :cond_14
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz p2, :cond_15

    .line 44
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 45
    sget-object p4, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_done:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v6, Ljava/lang/String;

    iget-object v7, p3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v0, v1, v6}, [Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p4, v0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 50
    invoke-virtual {p2, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    :cond_15
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->cleanUp()V

    goto/16 :goto_a

    :catchall_1
    move-exception p2

    .line 52
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz p4, :cond_16

    .line 53
    iget p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    add-int/2addr p4, v4

    iput p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 54
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    rem-int/2addr p4, v0

    if-nez p4, :cond_16

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    invoke-interface {p4, v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    .line 55
    :cond_16
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p4, p4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz p4, :cond_17

    .line 56
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 57
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_done:Ljava/lang/String;

    add-int/2addr p1, v4

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/String;

    iget-object v3, p3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    :cond_17
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->cleanUp()V

    .line 64
    throw p2

    .line 65
    :catch_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz p2, :cond_18

    .line 66
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    add-int/2addr p2, v4

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 67
    iget p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    rem-int/2addr p2, p4

    if-nez p2, :cond_18

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    invoke-interface {p2, p4}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    .line 68
    :cond_18
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz p2, :cond_19

    .line 69
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 70
    sget-object p4, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_done:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .line 71
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Ljava/lang/String;

    iget-object v6, p3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p4, v0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 75
    :goto_9
    invoke-virtual {p2, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_19
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->cleanUp()V

    move v2, v3

    goto :goto_a

    .line 77
    :catch_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz p2, :cond_1a

    .line 78
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    add-int/2addr p2, v4

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 79
    iget p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    rem-int/2addr p2, p4

    if-nez p2, :cond_1a

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    invoke-interface {p2, p4}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    .line 80
    :cond_1a
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz p2, :cond_19

    .line 81
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 82
    sget-object p4, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_done:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/String;

    iget-object v6, p3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {p4, v0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_9

    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_7
.end method

.method public locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 95
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    if-nez v1, :cond_0

    return-void

    .line 96
    :cond_0
    array-length v8, v0

    .line 97
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 98
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Locating matches in documents ["

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v9

    :goto_0
    if-lt v1, v8, :cond_1

    .line 99
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_2
    :goto_1
    iget-boolean v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->searchPackageDeclaration:Z

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    .line 102
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    .line 103
    array-length v2, v1

    add-int/2addr v2, v8

    move-object v11, v1

    goto :goto_2

    :cond_3
    move v2, v8

    move-object v11, v10

    :goto_2
    const/16 v1, 0x3e8

    const/4 v12, 0x1

    if-ge v2, v1, :cond_4

    .line 104
    div-int/lit16 v1, v2, 0xc8

    add-int/2addr v1, v12

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_4
    div-int/lit16 v1, v2, 0x3e8

    mul-int/lit8 v1, v1, 0x5

    :goto_3
    if-ge v2, v1, :cond_5

    move v2, v12

    goto :goto_4

    .line 105
    :cond_5
    div-int/2addr v2, v1

    :goto_4
    iput v2, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    .line 106
    iput v9, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v9

    :goto_5
    if-lt v2, v8, :cond_1d

    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 109
    new-array v2, v2, [Lorg/eclipse/jdt/core/ICompilationUnit;

    iput-object v2, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v13

    .line 112
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 113
    :try_start_0
    invoke-virtual {v13, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cacheZipFiles(Ljava/lang/Object;)V

    .line 114
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    if-nez v1, :cond_6

    .line 115
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;-><init>()V

    iput-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    .line 116
    :cond_6
    :goto_6
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v1, :cond_7

    .line 117
    const-string v2, ""

    array-length v3, v0

    invoke-interface {v1, v2, v3}, Lorg/eclipse/core/runtime/IProgressMonitor;->beginTask(Ljava/lang/String;I)V

    .line 118
    :cond_7
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->initializePolymorphicSearch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 119
    new-instance v14, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;

    invoke-direct {v14}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;-><init>()V

    .line 120
    new-instance v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$1;

    invoke-direct {v1, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$1;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/util/Util$Comparer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v9

    move v15, v2

    move-object v1, v10

    move-object v3, v1

    move-object v4, v3

    :goto_7
    if-lt v15, v8, :cond_c

    if-eqz v1, :cond_8

    sub-int/2addr v8, v2

    .line 121
    :try_start_1
    invoke-virtual {v7, v1, v14, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locateMatches(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;I)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :catch_0
    :cond_8
    :try_start_2
    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->searchPackageDeclaration:Z

    if-eqz v0, :cond_9

    .line 123
    invoke-virtual {v7, v3, v11}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locatePackageDeclarations(Lorg/eclipse/jdt/core/search/SearchParticipant;[Lorg/eclipse/jdt/core/IJavaProject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :cond_9
    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_a

    .line 125
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    .line 126
    :cond_a
    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    if-eqz v0, :cond_b

    .line 127
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    .line 128
    :cond_b
    iput-object v10, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 129
    invoke-virtual {v13, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    .line 130
    iput-object v10, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void

    .line 131
    :cond_c
    :try_start_3
    iget-object v5, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v5, :cond_e

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_8

    .line 132
    :cond_d
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    .line 133
    :cond_e
    :goto_8
    aget-object v5, v0, v15

    if-nez v3, :cond_f

    .line 134
    invoke-virtual {v5}, Lorg/eclipse/jdt/core/search/SearchDocument;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v3

    :cond_f
    move-object/from16 v16, v3

    .line 135
    aput-object v10, v0, v15

    .line 136
    invoke-virtual {v5}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v6

    if-lez v15, :cond_11

    .line 137
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 138
    iget-object v3, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v3, :cond_10

    .line 139
    iget v5, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    add-int/2addr v5, v12

    iput v5, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 140
    iget v6, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_10

    invoke-interface {v3, v6}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    :goto_9
    move v3, v9

    goto/16 :goto_10

    .line 141
    :cond_11
    instance-of v3, v5, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;

    if-eqz v3, :cond_12

    .line 142
    move-object v3, v5

    check-cast v3, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;->workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 143
    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/Openable;

    goto :goto_a

    .line 144
    :cond_12
    iget-object v3, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    iget-object v4, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-virtual {v3, v6, v4}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createOpenable(Ljava/lang/String;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v4

    move-object v3, v10

    :goto_a
    if-nez v4, :cond_14

    .line 145
    iget-object v3, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v3, :cond_13

    .line 146
    iget v4, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    add-int/2addr v4, v12

    iput v4, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 147
    iget v5, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_13

    invoke-interface {v3, v5}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    move-object v4, v6

    goto :goto_9

    .line 148
    :cond_14
    invoke-direct {v7, v4, v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getCloserOpenable(Lorg/eclipse/jdt/internal/core/Openable;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-eqz v3, :cond_15

    .line 150
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    goto :goto_b

    :cond_15
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    :goto_b
    if-nez v3, :cond_16

    .line 151
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    :cond_16
    move-object/from16 v17, v3

    .line 152
    invoke-virtual {v12, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_18

    if-eqz v1, :cond_17

    sub-int v3, v15, v2

    .line 153
    :try_start_4
    invoke-virtual {v7, v1, v14, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locateMatches(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;I)V
    :try_end_4
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v2, v15

    .line 154
    :catch_1
    :try_start_5
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->reset()V

    :cond_17
    :goto_c
    move/from16 v18, v2

    goto :goto_d

    :cond_18
    move-object v12, v1

    goto :goto_c

    .line 155
    :goto_d
    new-instance v3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-boolean v2, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    move-object v1, v3

    move/from16 v19, v2

    move-object/from16 v2, p0

    move-object v10, v3

    move-object/from16 v3, v17

    move-object v9, v6

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/jdt/core/search/SearchDocument;Z)V

    .line 156
    invoke-virtual {v14, v10}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->add(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)V

    .line 157
    const-string v1, "Automatic-Module-Name"

    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 158
    invoke-interface/range {v17 .. v17}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 160
    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLocalFile(Lorg/eclipse/core/runtime/IPath;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    goto :goto_e

    .line 161
    :cond_19
    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 162
    :goto_e
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleName(Ljava/lang/String;)[C

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, v10, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->autoModuleName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_f

    :cond_1a
    const/4 v3, 0x0

    :goto_f
    move-object v4, v9

    move-object v1, v12

    move/from16 v2, v18

    :goto_10
    add-int/lit8 v15, v15, 0x1

    move v9, v3

    move-object/from16 v3, v16

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto/16 :goto_7

    .line 163
    :goto_11
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v1, :cond_1b

    .line 164
    invoke-interface {v1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    .line 165
    :cond_1b
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    if-eqz v1, :cond_1c

    .line 166
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    :cond_1c
    const/4 v4, 0x0

    .line 167
    iput-object v4, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 168
    invoke-virtual {v13, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    .line 169
    iput-object v4, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 170
    throw v0

    :cond_1d
    move v3, v9

    move-object v4, v10

    .line 171
    aget-object v5, v0, v2

    .line 172
    instance-of v6, v5, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;

    if-eqz v6, :cond_1e

    .line 173
    check-cast v5, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;->workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    move v9, v3

    move-object v10, v4

    const/4 v12, 0x1

    goto/16 :goto_5
.end method

.method public locatePackageDeclarations(Lorg/eclipse/jdt/core/search/SearchParticipant;[Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locatePackageDeclarations(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;[Lorg/eclipse/jdt/core/IJavaProject;)V

    return-void
.end method

.method public locatePackageDeclarations(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;[Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 2
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    instance-of v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 5
    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    .line 6
    array-length v5, v3

    :goto_1
    if-lt v4, v5, :cond_2

    goto/16 :goto_f

    .line 7
    :cond_2
    aget-object v0, v3, v4

    move-object/from16 v13, p2

    invoke-virtual {v1, v0, v13, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locatePackageDeclarations(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;[Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v13, p2

    .line 8
    instance-of v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    if-eqz v3, :cond_14

    .line 9
    iget-object v3, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    new-instance v0, Lorg/eclipse/jdt/core/search/PackageDeclarationMatch;

    const/4 v2, 0x4

    invoke-interface {v3, v2}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v7

    const/4 v10, -0x1

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v12

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v6, v0

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v12}, Lorg/eclipse/jdt/core/search/PackageDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    .line 12
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_4
    return-void

    .line 13
    :cond_5
    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    .line 14
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkspaceScope()Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    move-result-object v5

    const/4 v14, 0x1

    if-ne v3, v5, :cond_6

    move v3, v14

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    if-eqz v3, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    .line 15
    :cond_7
    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-interface {v5}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    :goto_3
    if-eqz v3, :cond_8

    move v15, v4

    goto :goto_4

    .line 16
    :cond_8
    array-length v6, v5

    move v15, v6

    .line 17
    :goto_4
    new-instance v12, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    .line 18
    array-length v11, v2

    move v10, v4

    :goto_5
    if-lt v10, v11, :cond_9

    goto/16 :goto_f

    .line 19
    :cond_9
    aget-object v16, v2, v10

    .line 20
    iget-object v6, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v6, :cond_b

    .line 21
    invoke-interface {v6}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 22
    iget v6, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    add-int/2addr v6, v14

    iput v6, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressWorked:I

    .line 23
    iget v7, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressStep:I

    rem-int/2addr v6, v7

    if-nez v6, :cond_b

    iget-object v6, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    goto :goto_6

    .line 24
    :cond_a
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :cond_b
    :goto_6
    if-nez v3, :cond_e

    move v6, v4

    :goto_7
    if-lt v6, v15, :cond_c

    goto :goto_b

    .line 25
    :cond_c
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 26
    :cond_e
    :goto_8
    aget-object v6, v2, v10

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup([Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object v6

    iput-object v6, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    .line 27
    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;->pkgName:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7, v4, v14}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;ZZ)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v9

    if-nez v9, :cond_f

    move v8, v4

    goto :goto_9

    .line 28
    :cond_f
    array-length v6, v9

    move v8, v6

    :goto_9
    move v7, v4

    :goto_a
    if-lt v7, v8, :cond_10

    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 29
    :cond_10
    aget-object v6, v9, v7

    .line 30
    invoke-virtual {v12, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_12

    :cond_11
    move/from16 v23, v7

    move/from16 v22, v8

    move-object/from16 v21, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v24, v12

    goto :goto_e

    .line 31
    :cond_12
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 32
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v17

    if-nez v17, :cond_13

    .line 33
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v17

    .line 34
    :cond_13
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 35
    new-instance v4, Lorg/eclipse/jdt/core/search/PackageDeclarationMatch;

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    move-object/from16 v22, v6

    move-object v6, v4

    move/from16 v23, v7

    move-object/from16 v7, v22

    move/from16 v22, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v20

    move/from16 v20, v11

    move-object/from16 v11, p2

    move-object/from16 v24, v12

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lorg/eclipse/jdt/core/search/PackageDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    .line 36
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_d

    .line 37
    :goto_c
    new-instance v2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v2

    .line 38
    :goto_d
    throw v0

    :goto_e
    add-int/lit8 v7, v23, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    move-object/from16 v9, v21

    move/from16 v8, v22

    move-object/from16 v12, v24

    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    :goto_f
    return-void
.end method

.method public lookupType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v3, ""

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object v3

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 p1, 0x10

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 p1, 0x8

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 p1, 0x4

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_2

    :cond_6
    move p1, v1

    :goto_2
    if-eqz v2, :cond_9

    array-length v12, v2

    move v13, v1

    :goto_3
    if-lt v13, v12, :cond_7

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    aget-object v6, v2, v13

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    move-object v5, v11

    move v8, p1

    invoke-virtual/range {v4 .. v10}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZIZZ)Lorg/eclipse/jdt/core/IType;

    move-result-object v4

    if-eqz v4, :cond_8

    return-object v4

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    const/16 p1, 0x2e

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    array-length v2, p1

    if-nez v2, :cond_a

    return-object v0

    :cond_a
    new-instance v3, Ljava/lang/String;

    aget-object v1, p1, v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createTypeHandle(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    const/4 v3, 0x1

    :goto_5
    if-lt v3, v2, :cond_d

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v1

    :cond_c
    return-object v0

    :cond_d
    new-instance v4, Ljava/lang/String;

    aget-object v5, p1, v3

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v1, v4}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    :goto_6
    return-object v0
.end method

.method public newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;III)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    return-object p1
.end method

.method public newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 15

    move-object/from16 v0, p2

    .line 4
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    const/16 v2, 0xb

    if-eq v1, v2, :cond_a

    const/16 v2, 0x11

    if-eq v1, v2, :cond_8

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v7, Lorg/eclipse/jdt/core/search/TypeParameterDeclarationMatch;

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/TypeParameterDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v7

    .line 6
    :cond_1
    new-instance v7, Lorg/eclipse/jdt/core/search/LocalVariableDeclarationMatch;

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/LocalVariableDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v7

    .line 7
    :cond_2
    new-instance v7, Lorg/eclipse/jdt/core/search/MethodDeclarationMatch;

    if-nez v0, :cond_3

    move-object/from16 v1, p1

    goto :goto_0

    :cond_3
    move-object/from16 v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move-object v0, v7

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/MethodDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v7

    .line 8
    :cond_4
    new-instance v1, Lorg/eclipse/jdt/core/search/FieldDeclarationMatch;

    if-nez v0, :cond_5

    move-object/from16 v9, p1

    goto :goto_1

    :cond_5
    move-object/from16 v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    move-object v9, v0

    :goto_1
    move-object v8, v1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v8 .. v14}, Lorg/eclipse/jdt/core/search/FieldDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v1

    .line 9
    :cond_6
    new-instance v1, Lorg/eclipse/jdt/core/search/TypeDeclarationMatch;

    if-nez v0, :cond_7

    move-object/from16 v3, p1

    goto :goto_2

    :cond_7
    move-object/from16 v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    move-object v3, v0

    :goto_2
    move-object v2, v1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/core/search/TypeDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v1

    .line 10
    :cond_8
    new-instance v1, Lorg/eclipse/jdt/core/search/ModuleDeclarationMatch;

    if-nez v0, :cond_9

    move-object/from16 v5, p1

    goto :goto_3

    :cond_9
    move-object/from16 v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v2

    move-object v5, v2

    :goto_3
    move-object v4, v1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/core/search/ModuleDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move-object v7, p0

    .line 11
    iget-object v2, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchBinding:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_a
    move-object v7, p0

    .line 12
    new-instance v8, Lorg/eclipse/jdt/core/search/PackageDeclarationMatch;

    move-object v0, v8

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/PackageDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v8

    :cond_b
    move-object v7, p0

    .line 13
    new-instance v8, Lorg/eclipse/jdt/core/search/PackageDeclarationMatch;

    move-object v0, v8

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/PackageDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v8
.end method

.method public newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x10000

    and-int/2addr v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v4, :cond_1

    and-int/lit16 v7, v3, 0x2000

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-nez v4, :cond_2

    and-int/lit16 v4, v3, 0x2000

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    if-eqz v4, :cond_3

    instance-of v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v8, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v8, v2

    sub-int/2addr v8, v6

    aget-object v2, v2, v8

    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    instance-of v9, v8, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    if-eqz v9, :cond_6

    check-cast v8, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v9, v8, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v10, v9

    move v8, v5

    :goto_3
    if-lt v8, v10, :cond_4

    :cond_3
    move v14, v4

    move v13, v7

    goto :goto_4

    :cond_4
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v12, v9, v8

    check-cast v12, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {v11, v12, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v11

    if-nez v11, :cond_5

    move v4, v5

    move v7, v6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    iget-object v9, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    check-cast v8, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {v9, v8, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v2

    if-nez v2, :cond_3

    move v14, v5

    move v13, v6

    :goto_4
    const v2, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    move v15, v6

    goto :goto_5

    :cond_7
    move v15, v5

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v16

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    if-eqz v1, :cond_8

    move-object/from16 v3, p1

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v1

    move-object v9, v1

    goto :goto_6

    :cond_8
    move-object/from16 v9, p1

    :goto_6
    new-instance v1, Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-object v8, v1

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v17, v2

    invoke-direct/range {v8 .. v17}, Lorg/eclipse/jdt/core/search/FieldReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZZZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/ReferenceMatch;->setLocalElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-object v1
.end method

.method public newLocalVariableReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, 0x10000

    and-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    and-int/lit16 v6, v2, 0x2000

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-nez v3, :cond_2

    and-int/lit16 v3, v2, 0x2000

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    if-eqz v3, :cond_3

    instance-of v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v7, :cond_3

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v7, v1

    sub-int/2addr v7, v5

    aget-object v1, v1, v7

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    instance-of v8, v7, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    if-eqz v8, :cond_6

    check-cast v7, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v8, v7, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v9, v8

    move v7, v4

    :goto_3
    if-lt v7, v9, :cond_4

    :cond_3
    move v13, v3

    move v12, v6

    goto :goto_4

    :cond_4
    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v11, v8, v7

    check-cast v11, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {v10, v11, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v10

    if-nez v10, :cond_5

    move v3, v4

    move v6, v5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    check-cast v7, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v1

    if-nez v1, :cond_3

    move v13, v4

    move v12, v5

    :goto_4
    const v1, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    move v14, v5

    goto :goto_5

    :cond_7
    move v14, v4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v15

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    new-instance v2, Lorg/eclipse/jdt/core/search/LocalVariableReferenceMatch;

    move-object v7, v2

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v16, v1

    invoke-direct/range {v7 .. v16}, Lorg/eclipse/jdt/core/search/LocalVariableReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZZZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v2
.end method

.method public newMethodReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIIZZLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/MethodReferenceMatch;
    .locals 13

    move-object v0, p2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v9

    move-object v11, p0

    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    move-object/from16 v1, p8

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    move/from16 v4, p3

    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    new-instance v12, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;

    move-object v0, v12

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZZZZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object v12
.end method

.method public newModuleReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/ModuleReferenceMatch;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 3
    iget p6, p6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v1, 0x8000

    and-int/2addr p6, v1

    if-eqz p6, :cond_0

    const/4 p6, 0x1

    move v5, p6

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    :cond_1
    move-object v1, p1

    .line 5
    new-instance p1, Lorg/eclipse/jdt/core/search/ModuleReferenceMatch;

    move-object v0, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/search/ModuleReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object p1
.end method

.method public newModuleReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/ModuleReferenceMatch;
    .locals 7

    .line 6
    iget v4, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v4

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newModuleReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/ModuleReferenceMatch;

    move-result-object p1

    return-object p1
.end method

.method public newPackageReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/PackageReferenceMatch;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    if-eqz p5, :cond_0

    iget p5, p5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v0, 0x8000

    and-int/2addr p5, v0

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    :goto_0
    move v5, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    new-instance p5, Lorg/eclipse/jdt/core/search/PackageReferenceMatch;

    move-object v0, p5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/search/PackageReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object p5
.end method

.method public newTypeParameterReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 8

    iget p5, p5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v0, 0x8000

    and-int/2addr p5, v0

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    :goto_0
    move v5, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v6

    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v7, p5, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    new-instance p5, Lorg/eclipse/jdt/core/search/TypeParameterReferenceMatch;

    move-object v0, p5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/search/TypeParameterReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object p5
.end method

.method public newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    if-eqz p6, :cond_0

    .line 3
    iget p6, p6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v0, 0x8000

    and-int/2addr p6, v0

    if-eqz p6, :cond_0

    const/4 p6, 0x1

    :goto_0
    move v5, p6

    goto :goto_1

    :cond_0
    const/4 p6, 0x0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    :cond_1
    move-object v1, p1

    .line 5
    new-instance p1, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-object v0, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-object p1
.end method

.method public newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;
    .locals 7

    .line 6
    iget v4, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v4

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object p1

    return-object p1
.end method

.method public parseAndBuildBindings(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3, v3, v2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    invoke-virtual {v2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->hasAlreadyDefinedType(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    return v4

    :cond_5
    :try_start_1
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMethodBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    if-eqz v2, :cond_6

    if-nez p2, :cond_6

    iget-object p2, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_6
    :goto_2
    iput-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchesToProcess:[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    array-length v1, p2

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    if-ne v2, v1, :cond_8

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    mul-int/lit8 v1, v1, 0x2

    :goto_3
    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchesToProcess:[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-static {p2, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchesToProcess:[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->numberOfMatches:I

    aput-object p1, p2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    return v3

    :goto_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    throw p1
.end method

.method public process(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->parsedUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/eclipse/jdt/internal/core/ClassFile;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getBinaryInfo(Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v4
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-boolean v6, v5, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    iput-boolean v1, v5, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;-><init>()V

    invoke-virtual {v5, p0, v3, v4}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->locateMatches(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iput-boolean v6, v3, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    goto :goto_2

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iput-boolean v6, p2, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    throw p1

    :cond_0
    instance-of v3, v3, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-nez v3, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-boolean p2, p1, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    iput-boolean v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast v3, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    invoke-virtual {p1, p0, v3}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->locateMatches(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/ModularClassFile;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    return-void

    :catchall_2
    move-exception p1

    :try_start_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iput-boolean p2, v3, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    throw p1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->hasAlreadyDefinedType(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-boolean v3, v3, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-nez v3, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    if-nez p1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    :goto_3
    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v3, "Resolving "

    if-eqz p2, :cond_7

    :try_start_8
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p2, :cond_5

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reduceParseTree(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result p2

    if-eqz p2, :cond_9

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p2, :cond_8

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result p2

    if-eqz p2, :cond_b

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p2, :cond_a

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_b

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v3, :cond_b

    invoke-virtual {v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolveTypeDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    :cond_b
    :goto_4
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V
    :try_end_8
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    goto :goto_7

    :goto_6
    :try_start_9
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p2, :cond_c

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AbortCompilation while resolving unit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;

    if-eqz p2, :cond_d

    goto :goto_5

    :goto_7
    return-void

    :cond_d
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    throw p1
.end method

.method public purgeMethodStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->hasPossibleNodes(II)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    array-length v3, v1

    move v4, v0

    :goto_1
    if-lt v4, v3, :cond_1

    goto :goto_3

    :cond_1
    aget-object v5, v1, v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->hasPossibleNodes(II)Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->sourceStartOfMethodToRetain:I

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->sourceEndOfMethodToRetain:I

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-eq v6, v7, :cond_3

    :cond_2
    iput-object v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    array-length v3, v1

    move v4, v0

    :goto_2
    if-lt v4, v3, :cond_5

    goto :goto_3

    :cond_5
    aget-object v5, v1, v4

    iget v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->sourceStartOfMethodToRetain:I

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ne v6, v7, :cond_6

    iget v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->sourceEndOfMethodToRetain:I

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-eq v6, v7, :cond_7

    :cond_6
    iput-object v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_a

    array-length v1, p1

    :goto_4
    if-lt v0, v1, :cond_9

    goto :goto_5

    :cond_9
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->purgeMethodStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return-void
.end method

.method public reduceParseTree(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->purgeMethodStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public report(Lorg/eclipse/jdt/core/search/SearchMatch;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p1, :cond_1

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Cannot report a null match!!!"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->filterEnum(Lorg/eclipse/jdt/core/search/SearchMatch;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Filtered package with name enum"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Reporting match"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tResource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tPositions: [offset="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getLength()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/jdt/internal/core/BinaryMember;

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getLength()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\tSelection: -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<--"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\tJava element: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\t\tWARNING: this element does NOT exist!"

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    instance-of v2, p1, Lorg/eclipse/jdt/core/search/ReferenceMatch;

    if-eqz v2, :cond_8

    :try_start_2
    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/core/search/ReferenceMatch;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/search/ReferenceMatch;->getLocalElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    if-eqz v3, :cond_6

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tLocal element: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    instance-of v3, p1, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    if-eqz v3, :cond_8

    check-cast v2, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;->getOtherElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v3, v2

    if-lez v3, :cond_8

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\tOther elements:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_7

    goto :goto_1

    :cond_7
    aget-object v5, v2, v4

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElement;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\t\t- "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_2
    :cond_8
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getAccuracy()I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "\tAccuracy: EXACT_MATCH"

    goto :goto_2

    :cond_9
    const-string v3, "\tAccuracy: POTENTIAL_MATCH"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "\tRule: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->isExact()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "EXACT"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->isEquivalent()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "EQUIVALENT"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "ERASURE"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v3, "INVALID RULE"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    instance-of v3, p1, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;

    if-eqz v3, :cond_f

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;->isSuperInvocation()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "+SUPER INVOCATION"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchMatch;->isImplicit()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "+IMPLICIT"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;->isSynthetic()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "+SYNTHETIC"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n\tRaw: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->isRaw()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    const-wide/16 v0, -0x1

    :goto_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->requestor:Lorg/eclipse/jdt/core/search/SearchRequestor;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/core/search/SearchRequestor;->acceptSearchMatch(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p1, :cond_11

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->resultCollectorTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->resultCollectorTime:J

    :cond_11
    return-void
.end method

.method public reportAccurateEnumConstructorReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p3, :cond_5

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    instance-of v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v1, :cond_2

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p3, :cond_2

    iget p2, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    add-int/lit8 p2, p2, -0x1

    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getContents()[C

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p3, v0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    :goto_0
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p2

    :cond_4
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method

.method public reportAccurateFieldReference([Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    array-length v3, v1

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getContents()[C

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {v6, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    array-length v7, v2

    const/4 v9, -0x1

    move v10, v9

    move v12, v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    :cond_1
    iget v14, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :try_start_0
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v10
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v15, 0x3d

    if-eq v10, v15, :cond_5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v8

    const/16 v16, 0x0

    :goto_0
    if-ge v11, v7, :cond_3

    iget-object v15, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    add-int/lit8 v16, v11, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v15, v11, v8}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v11

    if-eqz v11, :cond_2

    move/from16 v17, v16

    move/from16 v16, v11

    move/from16 v11, v17

    goto :goto_1

    :cond_2
    const/16 v15, 0x3d

    move/from16 v17, v16

    move/from16 v16, v11

    move/from16 v11, v17

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v16, :cond_4

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v12, v8, -0x1

    goto :goto_2

    :cond_4
    move v14, v9

    const/4 v11, 0x0

    :goto_2
    :try_start_1
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v8
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v8

    goto :goto_3

    :cond_5
    move v14, v9

    :catch_1
    :goto_3
    aget-object v8, v1, v13

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v8}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v11

    if-nez v11, :cond_6

    return-void

    :cond_6
    if-eq v14, v9, :cond_7

    invoke-virtual {v8, v14}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    sub-int v11, v12, v14

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :goto_4
    const/4 v11, 0x0

    :cond_8
    add-int/lit8 v8, v3, -0x1

    if-ge v13, v8, :cond_9

    add-int/lit8 v13, v13, 0x1

    :cond_9
    const/16 v8, 0x3d

    if-ne v10, v8, :cond_1

    return-void
.end method

.method public reportAccurateParameterizedMethodReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result v0

    if-eqz p3, :cond_7

    array-length v1, p3

    if-lez v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->isErasureMatch()Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isErasureMatch()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getContents()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    const/4 v1, 0x0

    aget-object p3, p3, v1

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :cond_3
    :goto_1
    :try_start_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v2, v2, v3

    const/16 v4, 0xa

    if-ne v2, v4, :cond_6

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v3, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    :catch_0
    move v0, p3

    :cond_7
    :goto_2
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method

.method public reportAccurateParameterizedTypeReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz p4, :cond_b

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->isErasureMatch()Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isErasureMatch()Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->hasSignatures()Z

    move-result v2

    goto :goto_1

    :cond_3
    check-cast v2, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasSignatures()Z

    move-result v2

    :goto_1
    if-nez v1, :cond_9

    if-nez v2, :cond_4

    goto :goto_6

    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getContents()[C

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    array-length p2, p4

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-gez p2, :cond_5

    const/4 p2, 0x0

    :goto_3
    move p3, v0

    goto :goto_4

    :cond_5
    aget-object p3, p4, p2

    if-eqz p3, :cond_8

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->findLastTypeArgumentInfo(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)J

    move-result-wide p2

    const/16 p4, 0x20

    ushr-long v2, p2, p4

    long-to-int p4, v2

    add-int/lit8 p4, p4, 0x1

    long-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    iget p3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    move p2, p4

    goto :goto_3

    :goto_4
    add-int/lit8 v2, p2, -0x1

    if-gtz p2, :cond_6

    move v0, p3

    goto :goto_7

    :cond_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->atEnd()Z

    move-result p2

    if-eqz p2, :cond_7

    :goto_5
    move p2, v2

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result p2

    const/16 p4, 0x3e

    if-ne p2, p4, :cond_6

    iget p2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 p3, p2, -0x1

    goto :goto_5

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_9
    :goto_6
    instance-of p4, p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz p4, :cond_a

    if-ltz p3, :cond_a

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    aget-wide p3, p2, p3

    long-to-int v0, p3

    goto :goto_7

    :cond_a
    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    if-eqz p3, :cond_b

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->originalSourceEnd:I

    :cond_b
    :goto_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result p2

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method

.method public reportAccurateTypeReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz p3, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getContents()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 v2, -0x1

    :cond_2
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v4, 0x16

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget p2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr p2, v3

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void

    :cond_3
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    :cond_4
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method

.method public reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMember;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/ISourceReference;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    :goto_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v2, p4}, Lorg/eclipse/jdt/internal/core/BinaryType;->sourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;)[C

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2, v3, p4, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->mapSource(Lorg/eclipse/jdt/internal/core/NamedMember;[CLorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    :cond_2
    move-object v9, p1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v6

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method

.method public reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;IZLorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v12, 0x0

    move/from16 v5, p4

    if-le v5, v1, :cond_1

    .line 19
    invoke-virtual {v9, v0, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 20
    iget-object v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->parser:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    .line 21
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 22
    iget-object v4, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getContents()[C

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    .line 23
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 24
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    invoke-virtual {v9, v13}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 26
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    iget v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 28
    iget-object v3, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v6, v1

    add-int/2addr v6, v8

    move-object v1, v3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v1

    goto :goto_0

    .line 29
    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int v6, v1, v3

    .line 30
    iget-object v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v5, p4

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto :goto_1

    :cond_1
    move-object v13, v12

    .line 32
    :cond_2
    :goto_1
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    if-nez v13, :cond_3

    .line 33
    invoke-virtual {v9, v0, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v13

    :cond_3
    if-eqz v13, :cond_9

    if-eqz p5, :cond_4

    .line 34
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v1

    move-object v15, v1

    goto :goto_2

    :cond_4
    move-object v15, v12

    .line 35
    :goto_2
    iget v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    invoke-virtual {v9, v13}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v16, v8

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    .line 36
    :goto_3
    new-instance v8, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;

    if-eqz v16, :cond_6

    move-object v3, v15

    goto :goto_4

    :cond_6
    move-object v3, v12

    :goto_4
    move-object v1, v8

    move-object v2, v13

    move-object/from16 v4, p6

    move-object/from16 v5, p0

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;-><init>(Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Z)V

    .line 37
    :try_start_1
    invoke-virtual {v0, v8, v12}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v15, :cond_9

    .line 38
    array-length v7, v15

    const/4 v6, 0x0

    :goto_5
    if-lt v6, v7, :cond_7

    goto :goto_7

    .line 39
    :cond_7
    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v2, v15, v6

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v16, :cond_8

    if-eqz v1, :cond_8

    .line 40
    iget-object v2, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v15, v6

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getOtherElements(I)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v1, v2

    move-object v2, v3

    move-object v3, v13

    move/from16 v18, v6

    move-object v6, v14

    move v14, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move-object/from16 v8, p0

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_6

    :cond_8
    move/from16 v18, v6

    move v14, v7

    move-object/from16 v17, v8

    :goto_6
    add-int/lit8 v6, v18, 0x1

    move v7, v14

    move-object/from16 v8, v17

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 41
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;->coreException:Lorg/eclipse/core/runtime/CoreException;

    throw v0

    .line 42
    :cond_9
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v2

    if-eqz v2, :cond_b

    if-nez v13, :cond_a

    .line 43
    invoke-virtual {v9, v0, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v13

    :cond_a
    if-eqz v13, :cond_b

    .line 44
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-object/from16 v1, p0

    move-object v3, v13

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V

    .line 45
    :cond_b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_d

    if-nez v13, :cond_c

    .line 46
    invoke-virtual {v9, v0, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v13

    :cond_c
    if-eqz v13, :cond_d

    .line 47
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v3, v13

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    :cond_d
    if-eqz p5, :cond_16

    .line 48
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v14

    if-eqz v14, :cond_16

    .line 49
    iget v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_14

    if-nez v13, :cond_e

    .line 50
    invoke-virtual {v9, v0, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v13

    .line 51
    :cond_e
    invoke-virtual {v9, v13}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 52
    iget-object v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-boolean v1, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v1, :cond_11

    .line 53
    new-instance v10, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;

    move-object v1, v10

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v4, p6

    move-object/from16 v5, p0

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;-><init>(Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Z)V

    .line 54
    invoke-virtual {v0, v10, v12}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 55
    array-length v12, v14

    const/4 v15, 0x0

    :goto_8
    if-lt v15, v12, :cond_f

    goto :goto_a

    .line 56
    :cond_f
    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v2, v14, v15

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 57
    iget-object v2, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v14, v15

    invoke-virtual {v10, v15}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-virtual {v10, v15}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getOtherElements(I)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, v2

    move-object v2, v3

    move-object v3, v13

    move-object/from16 v8, p0

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 58
    :cond_11
    array-length v10, v14

    const/4 v12, 0x0

    :goto_9
    if-lt v12, v10, :cond_12

    :goto_a
    return-void

    .line 59
    :cond_12
    aget-object v2, v14, v12

    .line 60
    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 61
    iget-object v3, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v3

    move-object v3, v13

    move-object/from16 v8, p0

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 62
    :cond_14
    array-length v0, v14

    const/4 v1, 0x0

    :goto_b
    if-lt v1, v0, :cond_15

    goto :goto_c

    .line 63
    :cond_15
    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v3, v14, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    :goto_c
    return-void
.end method

.method public reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p2

    .line 95
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    .line 96
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-boolean v11, v1, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mustResolve:Z

    .line 97
    iget-boolean v2, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, v1, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mustResolve:Z

    .line 98
    :cond_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    const-string v2, ", possible="

    const-string v4, "\t- node set: accurate="

    const/4 v12, 0x0

    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Report matching: "

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    iget-object v5, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v5, :cond_1

    move v5, v12

    goto :goto_0

    :cond_1
    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    .line 101
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    iget-object v5, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    if-nez v5, :cond_2

    move v5, v12

    goto :goto_1

    :cond_2
    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    .line 103
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\t- must resolve: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " (locator: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-boolean v6, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mustResolve:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", nodeSet: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\t- fine grain flags="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->fineGrain()I

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getFineGrainFlagString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_d

    .line 108
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 109
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    .line 110
    array-length v1, v0

    move v5, v12

    :goto_2
    if-lt v5, v1, :cond_6

    .line 111
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    iput-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    .line 112
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_e

    .line 113
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v0, :cond_4

    move v0, v12

    goto :goto_3

    :cond_4
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    .line 114
    :goto_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 115
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    if-nez v0, :cond_5

    move v0, v12

    goto :goto_4

    :cond_5
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    .line 116
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 117
    :cond_6
    aget-object v6, v0, v5

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v6, :cond_7

    goto :goto_7

    .line 118
    :cond_7
    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v7, :cond_c

    .line 119
    iget-object v7, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    if-eqz v7, :cond_8

    goto :goto_7

    .line 120
    :cond_8
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 121
    iget v14, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v15, 0x40000

    and-int/2addr v15, v14

    if-eqz v15, :cond_9

    move v15, v3

    goto :goto_5

    :cond_9
    move v15, v12

    :goto_5
    const/high16 v16, 0x20000

    and-int v14, v14, v16

    if-nez v14, :cond_a

    if-nez v15, :cond_a

    .line 122
    iget-object v14, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v3

    invoke-virtual {v14, v13, v12, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v3

    goto :goto_6

    .line 123
    :cond_a
    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v14, v13

    invoke-static {v13, v12, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v13

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v14

    const/4 v12, 0x1

    invoke-virtual {v3, v13, v12, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v3

    :goto_6
    if-eqz v15, :cond_b

    .line 124
    iget-object v7, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v7, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v3

    invoke-virtual {v10, v6, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    goto :goto_7

    .line 125
    :cond_b
    iget-object v6, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v6, v7, v3, v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_7

    .line 126
    :cond_c
    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v3, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result v3

    invoke-virtual {v10, v6, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x0

    .line 127
    iput-object v3, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 128
    :cond_e
    :goto_8
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-nez v0, :cond_f

    return-void

    .line 129
    :cond_f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->methodHandles:Ljava/util/HashSet;

    .line 130
    iget v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    move v12, v1

    goto :goto_9

    :cond_10
    const/4 v12, 0x0

    .line 131
    :goto_9
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_15

    .line 132
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v10, v1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v13

    if-eqz v13, :cond_15

    if-nez v12, :cond_12

    .line 133
    array-length v0, v13

    const/4 v1, 0x0

    :goto_a
    if-lt v1, v0, :cond_11

    goto :goto_d

    .line 134
    :cond_11
    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v3, v13, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 135
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createPackageDeclarationHandle(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v14

    .line 136
    array-length v15, v13

    const/4 v7, 0x0

    :goto_b
    if-lt v7, v15, :cond_13

    goto :goto_d

    .line 137
    :cond_13
    aget-object v1, v13, v7

    .line 138
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 139
    invoke-virtual {v8, v14}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 140
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v2

    move-object v2, v14

    move/from16 v17, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_c

    :cond_14
    move/from16 v17, v7

    :goto_c
    add-int/lit8 v7, v17, 0x1

    goto :goto_b

    :cond_15
    :goto_d
    if-eqz v12, :cond_19

    .line 141
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_16

    .line 142
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_16

    .line 143
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createPackageDeclarationHandle(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 144
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v6, 0x1

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v5, v10

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    .line 145
    :cond_16
    iget-object v6, v9, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v6, :cond_19

    .line 146
    array-length v7, v6

    const/4 v13, 0x0

    :goto_e
    if-lt v13, v7, :cond_17

    goto :goto_f

    .line 147
    :cond_17
    aget-object v1, v6, v13

    .line 148
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 149
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createImportHandle(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v2

    move-object v2, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 150
    :cond_19
    :goto_f
    iget-object v6, v9, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v7, -0x1

    if-eqz v6, :cond_1e

    .line 151
    array-length v13, v6

    const/4 v9, 0x0

    :goto_10
    if-lt v9, v13, :cond_1b

    :cond_1a
    :goto_11
    const/4 v0, 0x0

    goto :goto_14

    .line 152
    :cond_1b
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-nez v1, :cond_1c

    return-void

    .line 153
    :cond_1c
    aget-object v1, v6, v9

    .line 154
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    if-eqz v12, :cond_1d

    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_12

    :cond_1d
    move v3, v7

    .line 156
    :goto_12
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>()V

    iput-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->inTypeOccurrencesCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v4, v10

    .line 157
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 158
    :cond_1e
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v1, :cond_1a

    .line 159
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    if-eqz v12, :cond_1f

    .line 160
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_13

    :cond_1f
    move v3, v7

    :goto_13
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v4, v10

    .line 161
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;I)V

    goto :goto_11

    .line 162
    :goto_14
    iput-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->methodHandles:Ljava/util/HashSet;

    .line 163
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->bindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iput-boolean v11, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mustResolve:Z

    return-void
.end method

.method public reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;IZLorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    const/4 v1, -0x1

    const/4 v7, 0x1

    const/4 v14, 0x0

    move/from16 v4, p5

    if-le v4, v1, :cond_1

    .line 165
    invoke-virtual {v9, v0, v11, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    .line 166
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 168
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v1, v5

    add-int/lit8 v6, v1, 0x1

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;III)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v1

    .line 169
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v3, :cond_0

    .line 170
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-virtual {v9, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateEnumConstructorReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto :goto_0

    :cond_1
    move-object v8, v14

    .line 172
    :cond_2
    :goto_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    if-nez v8, :cond_3

    .line 173
    invoke-virtual {v9, v0, v11, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    .line 174
    :cond_3
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->endPart2Position:I

    if-nez v1, :cond_4

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    :cond_4
    if-eqz p6, :cond_5

    .line 175
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v13, v2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_5
    move-object v6, v14

    .line 176
    :goto_1
    iget v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_6

    move/from16 v16, v7

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    .line 177
    :goto_2
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;

    if-eqz v16, :cond_7

    move-object v3, v6

    goto :goto_3

    :cond_7
    move-object v3, v14

    :goto_3
    move-object v1, v7

    move-object v2, v8

    move-object/from16 v4, p7

    move-object/from16 v5, p0

    move-object v15, v6

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;-><init>(Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Z)V

    .line 178
    :try_start_0
    invoke-virtual {v0, v7, v14}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_8

    .line 179
    array-length v6, v15

    const/4 v5, 0x0

    :goto_4
    if-lt v5, v6, :cond_9

    :cond_8
    move-object/from16 v18, v8

    goto :goto_7

    .line 180
    :cond_9
    aget-object v1, v15, v5

    .line 181
    iget-object v2, v13, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v16, :cond_b

    if-eqz v2, :cond_b

    .line 182
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v3, :cond_a

    .line 183
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v3, :cond_a

    .line 184
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v3, :cond_a

    move-object v3, v0

    goto :goto_5

    :cond_a
    move-object v3, v1

    .line 185
    :goto_5
    iget-object v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v7, v5}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-virtual {v7, v5}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getOtherElements(I)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v17

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v2, v3

    move-object v3, v8

    move/from16 v19, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object v6, v14

    move-object v14, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move-object/from16 v8, p0

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_6

    :cond_b
    move/from16 v19, v5

    move/from16 v17, v6

    move-object v14, v7

    move-object/from16 v18, v8

    :goto_6
    add-int/lit8 v5, v19, 0x1

    move-object v7, v14

    move/from16 v6, v17

    move-object/from16 v8, v18

    const/4 v14, 0x0

    goto :goto_4

    :goto_7
    move-object/from16 v8, v18

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 186
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;->coreException:Lorg/eclipse/core/runtime/CoreException;

    throw v0

    .line 187
    :cond_c
    :goto_8
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_f

    if-nez v8, :cond_d

    .line 188
    invoke-virtual {v9, v0, v11, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    :cond_d
    move-object v14, v8

    if-eqz v10, :cond_e

    .line 189
    invoke-direct {v9, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandles([Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    move-object v15, v1

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    .line 190
    :goto_9
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    move-object v8, v14

    goto :goto_a

    :cond_f
    const/4 v15, 0x0

    :goto_a
    if-eqz p6, :cond_1e

    .line 191
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->endPart1Position:I

    if-eqz v1, :cond_16

    .line 192
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    invoke-virtual {v13, v2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v14

    if-eqz v14, :cond_16

    .line 193
    iget v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_11

    .line 194
    array-length v1, v14

    const/4 v2, 0x0

    :goto_b
    if-lt v2, v1, :cond_10

    goto :goto_e

    .line 195
    :cond_10
    iget-object v3, v13, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v4, v14, v2

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_11
    if-nez v8, :cond_12

    .line 196
    invoke-virtual {v9, v0, v11, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    .line 197
    :cond_12
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 198
    array-length v7, v14

    const/4 v6, 0x0

    :goto_c
    if-lt v6, v7, :cond_14

    :cond_13
    move-object/from16 v16, v8

    goto :goto_d

    .line 199
    :cond_14
    aget-object v2, v14, v6

    .line 200
    iget-object v1, v13, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v10, :cond_15

    if-nez v15, :cond_15

    .line 201
    invoke-direct {v9, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandles([Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    move-object v15, v3

    .line 202
    :cond_15
    iget-object v3, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/4 v4, 0x0

    move-object v1, v3

    move-object v3, v8

    move-object/from16 v17, v5

    move-object v5, v15

    move/from16 v18, v6

    move-object/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, p0

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v8, v16

    move/from16 v7, v17

    goto :goto_c

    :goto_d
    move-object/from16 v8, v16

    .line 203
    :cond_16
    :goto_e
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->endPart2Position:I

    if-nez v1, :cond_17

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 204
    :cond_17
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v13, v2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v10

    if-eqz v10, :cond_1e

    .line 205
    iget v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_19

    .line 206
    array-length v1, v10

    const/4 v15, 0x0

    :goto_f
    if-lt v15, v1, :cond_18

    goto/16 :goto_12

    .line 207
    :cond_18
    iget-object v0, v13, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v2, v10, v15

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_19
    if-nez v8, :cond_1a

    .line 208
    invoke-virtual {v9, v0, v11, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    :cond_1a
    move-object v11, v8

    .line 209
    invoke-virtual {v9, v11}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 210
    new-instance v12, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;

    move-object v1, v12

    move-object v2, v11

    move-object v3, v10

    move-object/from16 v4, p7

    move-object/from16 v5, p0

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;-><init>(Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Z)V

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    .line 212
    array-length v14, v10

    const/4 v15, 0x0

    :goto_10
    if-lt v15, v14, :cond_1b

    return-void

    .line 213
    :cond_1b
    aget-object v1, v10, v15

    .line 214
    iget-object v2, v13, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    .line 215
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v3, :cond_1c

    .line 216
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v3, :cond_1c

    .line 217
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v3, :cond_1c

    move-object v3, v0

    goto :goto_11

    :cond_1c
    move-object v3, v1

    .line 218
    :goto_11
    iget-object v1, v9, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v12, v15}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-virtual {v12, v15}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getOtherElements(I)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v3

    move-object v3, v11

    move-object/from16 v8, p0

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    :cond_1e
    :goto_12
    return-void
.end method

.method public reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    const/4 v0, -0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    move/from16 v4, p3

    if-le v4, v0, :cond_0

    .line 1
    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 2
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 3
    invoke-virtual {v8, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arrowPosition()I

    move-result v1

    add-int/2addr v1, v7

    sub-int v5, v1, v0

    .line 5
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v4, p3

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto :goto_0

    :cond_0
    move-object v12, v11

    :cond_1
    :goto_0
    if-nez v12, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v12

    :cond_2
    if-eqz p5, :cond_3

    .line 8
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v10, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_3
    move-object v13, v11

    .line 9
    :goto_1
    iget v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v0, v0, 0x4

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v8, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v14, v7

    goto :goto_2

    :cond_4
    move v14, v6

    .line 10
    :goto_2
    new-instance v15, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;

    if-eqz v14, :cond_5

    move-object v2, v13

    goto :goto_3

    :cond_5
    move-object v2, v11

    :goto_3
    move-object v0, v15

    move-object v1, v12

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;-><init>(Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Z)V

    .line 11
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v0, :cond_7

    .line 12
    array-length v0, v0

    move v1, v6

    :goto_4
    if-lt v1, v0, :cond_6

    goto :goto_5

    .line 13
    :cond_6
    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v2, v2, v1

    invoke-virtual {v2, v15, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 14
    :cond_7
    :goto_5
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {v0, v15, v11}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_8
    if-eqz v13, :cond_b

    .line 16
    array-length v11, v13

    move v7, v6

    :goto_6
    if-lt v7, v11, :cond_9

    goto :goto_8

    .line 17
    :cond_9
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v1, v13, v7

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v14, :cond_a

    if-eqz v0, :cond_a

    .line 18
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v13, v7

    invoke-virtual {v15, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getLocalElement(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    invoke-virtual {v15, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MemberDeclarationVisitor;->getOtherElements(I)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    iget-object v5, v9, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, v1

    move-object v1, v2

    move-object v2, v12

    move/from16 v16, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_7

    :cond_a
    move/from16 v16, v7

    :goto_7
    add-int/lit8 v7, v16, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    return-void
.end method

.method public reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 219
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v0, p5, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->autoModuleName:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    if-le p3, v1, :cond_0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatchingAutoModule(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/core/IJavaElement;I)V

    return-void

    .line 221
    :cond_0
    iget-object p2, p5, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    .line 222
    instance-of p5, p2, Lorg/eclipse/jdt/core/ITypeRoot;

    if-eqz p5, :cond_1

    .line 223
    check-cast p2, Lorg/eclipse/jdt/core/ITypeRoot;

    .line 224
    :try_start_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/ITypeRoot;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    return-void

    .line 225
    :cond_2
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    if-le p3, v1, :cond_3

    .line 226
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object p5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    array-length v7, p5

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p3

    .line 227
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    .line 228
    :cond_3
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    invoke-direct {p0, p3, p1, p4, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V

    .line 229
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    invoke-direct {p0, p3, p4, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V

    .line 230
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    invoke-direct {p0, p3, p4, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V

    .line 231
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    invoke-direct {p0, p3, p1, p4, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V

    .line 232
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    invoke-direct {p0, p3, p1, p4, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Lorg/eclipse/jdt/core/IModuleDescription;)V

    return-void
.end method

.method public reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p4

    const/4 v11, 0x0

    if-nez v7, :cond_0

    .line 263
    new-instance v0, Ljava/lang/String;

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createTypeHandle(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    :goto_0
    move-object v12, v0

    goto/16 :goto_2

    .line 264
    :cond_0
    instance-of v0, v7, Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_1

    .line 265
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    new-instance v1, Ljava/lang/String;

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_1
    instance-of v0, v7, Lorg/eclipse/jdt/core/IMember;

    if-eqz v0, :cond_6

    .line 267
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    .line 268
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IJavaElement;->getOpenable()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    .line 270
    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v1, :cond_3

    .line 271
    check-cast v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    .line 272
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    .line 273
    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 274
    const-string v2, "jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ".class"

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getTypeQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v0, "$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getOrdinaryClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v11

    :goto_1
    if-eqz v0, :cond_4

    goto/16 :goto_0

    .line 279
    :cond_4
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast v0, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    goto/16 :goto_0

    .line 280
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/core/IMember;->getType(Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object v12, v7

    :goto_2
    if-nez v12, :cond_7

    return-void

    .line 281
    :cond_7
    invoke-virtual {v8, v12}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v13

    const/4 v14, -0x1

    const/4 v15, 0x1

    move/from16 v4, p3

    if-le v4, v14, :cond_8

    if-eqz v13, :cond_8

    .line 282
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 283
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v0

    add-int/lit8 v5, v2, 0x1

    move-object v0, v1

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v4, p3

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v0

    .line 284
    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    .line 285
    :cond_8
    iget v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v0, v0, 0x2

    const/16 v16, 0x0

    if-eqz v0, :cond_9

    move/from16 v17, v15

    goto :goto_3

    :cond_9
    move/from16 v17, v16

    .line 286
    :goto_3
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v1, :cond_a

    .line 287
    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object/from16 v0, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V

    .line 288
    :cond_a
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_b

    const/4 v3, 0x0

    .line 289
    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object/from16 v0, p0

    move-object v2, v12

    move-object/from16 v5, p4

    move/from16 v6, v17

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    .line 290
    :cond_b
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_10

    .line 291
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v10, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v7

    if-eqz v7, :cond_10

    if-nez v17, :cond_d

    .line 292
    array-length v0, v7

    move/from16 v1, v16

    :goto_4
    if-lt v1, v0, :cond_c

    goto :goto_7

    .line 293
    :cond_c
    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v3, v7, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 294
    :cond_d
    array-length v6, v7

    move/from16 v5, v16

    :goto_5
    if-lt v5, v6, :cond_e

    goto :goto_7

    .line 295
    :cond_e
    aget-object v1, v7, v5

    .line 296
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v13, :cond_f

    .line 297
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/4 v3, 0x0

    const/16 v19, 0x0

    move-object v0, v2

    move-object v2, v12

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move/from16 v19, v5

    move-object/from16 v5, v20

    move/from16 v20, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_6

    :cond_f
    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v18, v7

    :goto_6
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v7, v18

    move/from16 v6, v20

    goto :goto_5

    .line 298
    :cond_10
    :goto_7
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_11

    .line 299
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_1b

    .line 300
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    if-eqz v17, :cond_1b

    .line 301
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v2

    move-object v2, v12

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto/16 :goto_11

    .line 302
    :cond_11
    iget-object v7, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_15

    .line 303
    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move-object/from16 v4, p4

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatchingSuper(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V

    .line 304
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v0, :cond_12

    move/from16 v6, v16

    goto :goto_8

    :cond_12
    array-length v0, v0

    move v6, v0

    :goto_8
    move/from16 v5, v16

    :goto_9
    if-lt v5, v6, :cond_13

    goto :goto_b

    .line 305
    :cond_13
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v1, v0, v5

    if-nez v1, :cond_14

    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    .line 306
    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object/from16 v0, p0

    move-object v2, v12

    move/from16 v18, v5

    move-object/from16 v5, p4

    move/from16 v19, v6

    move/from16 v6, v17

    move-object/from16 v20, v7

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    :goto_a
    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_9

    .line 307
    :cond_15
    :goto_b
    iget-object v7, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_1b

    .line 308
    array-length v6, v7

    move/from16 v5, v16

    :goto_c
    if-lt v5, v6, :cond_16

    goto/16 :goto_11

    .line 309
    :cond_16
    aget-object v1, v7, v5

    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object/from16 v0, p0

    move-object v2, v12

    move-object/from16 v4, p4

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatchingSuper(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V

    .line 310
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v0, v0, v18

    if-eqz v0, :cond_17

    .line 311
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-object v5, v0

    goto :goto_d

    :cond_17
    move-object v5, v11

    :goto_d
    if-eqz v5, :cond_18

    .line 312
    array-length v4, v5

    move/from16 v3, v16

    :goto_e
    if-lt v3, v4, :cond_19

    :cond_18
    move/from16 v22, v6

    move-object/from16 v23, v7

    goto :goto_10

    .line 313
    :cond_19
    aget-object v1, v5, v3

    if-nez v1, :cond_1a

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    goto :goto_f

    :cond_1a
    const/16 v19, 0x0

    .line 314
    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object/from16 v0, p0

    move-object/from16 v20, v2

    move-object v2, v12

    move/from16 v21, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v5

    move-object/from16 v5, p4

    move/from16 v22, v6

    move/from16 v6, v17

    move-object/from16 v23, v7

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    :goto_f
    add-int/lit8 v3, v21, 0x1

    move/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v22

    move-object/from16 v7, v23

    goto :goto_e

    :goto_10
    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v22

    move-object/from16 v7, v23

    goto :goto_c

    .line 315
    :cond_1b
    :goto_11
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_1c

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->typeInHierarchy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_1c

    move/from16 v13, v16

    goto :goto_12

    :cond_1c
    move v13, v15

    :goto_12
    if-eqz v17, :cond_1d

    if-eqz v13, :cond_1d

    move/from16 v17, v15

    goto :goto_13

    :cond_1d
    move/from16 v17, v16

    .line 316
    :goto_13
    iget-object v7, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v7, :cond_29

    .line 317
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-nez v0, :cond_1e

    return-void

    .line 318
    :cond_1e
    array-length v6, v7

    move-object/from16 v18, v11

    move v0, v14

    move/from16 v5, v16

    :goto_14
    if-lt v5, v6, :cond_1f

    goto/16 :goto_1b

    .line 319
    :cond_1f
    aget-object v1, v7, v5

    .line 320
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->endPart2Position:I

    if-eqz v2, :cond_20

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    if-eq v3, v2, :cond_20

    move/from16 v2, v16

    goto :goto_15

    :cond_20
    move v2, v15

    :goto_15
    if-nez v2, :cond_21

    if-ne v0, v14, :cond_21

    move v4, v5

    goto :goto_16

    :cond_21
    move v4, v0

    :goto_16
    if-ltz v4, :cond_27

    if-le v5, v4, :cond_23

    if-nez v18, :cond_22

    sub-int v0, v6, v5

    .line 321
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-object/from16 v18, v0

    :cond_22
    add-int/lit8 v0, v5, -0x1

    sub-int/2addr v0, v4

    .line 322
    aput-object v1, v18, v0

    :cond_23
    if-eqz v2, :cond_26

    :goto_17
    if-le v4, v5, :cond_24

    move/from16 v21, v5

    move/from16 v19, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v11

    move v0, v14

    goto/16 :goto_1a

    .line 323
    :cond_24
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v1, v7, v4

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_25

    if-eqz v17, :cond_25

    .line 324
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v19, v0

    goto :goto_18

    :cond_25
    move/from16 v19, v14

    .line 325
    :goto_18
    aget-object v1, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v20, v4

    move-object v4, v12

    move/from16 v21, v5

    move/from16 v5, v19

    move/from16 v19, v6

    move v6, v13

    move-object/from16 v22, v7

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;IZLorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V

    add-int/lit8 v4, v20, 0x1

    move/from16 v6, v19

    move/from16 v5, v21

    move-object/from16 v7, v22

    goto :goto_17

    :cond_26
    move/from16 v21, v5

    move/from16 v19, v6

    move-object/from16 v22, v7

    move v0, v4

    goto :goto_1a

    :cond_27
    move/from16 v21, v5

    move/from16 v19, v6

    move-object/from16 v22, v7

    .line 326
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_28

    if-eqz v17, :cond_28

    .line 327
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_19

    :cond_28
    move v5, v14

    :goto_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v20, v4

    move-object v4, v12

    move v6, v13

    move-object/from16 v7, p4

    .line 328
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;IZLorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V

    move/from16 v0, v20

    :goto_1a
    add-int/lit8 v5, v21, 0x1

    move/from16 v6, v19

    move-object/from16 v7, v22

    goto/16 :goto_14

    .line 329
    :cond_29
    :goto_1b
    iget-object v7, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v7, :cond_2d

    .line 330
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-nez v0, :cond_2a

    return-void

    .line 331
    :cond_2a
    array-length v11, v7

    move/from16 v15, v16

    :goto_1c
    if-lt v15, v11, :cond_2b

    goto :goto_1e

    .line 332
    :cond_2b
    aget-object v1, v7, v15

    .line 333
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    if-eqz v17, :cond_2c

    .line 334
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_1d

    :cond_2c
    move v4, v14

    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move v5, v13

    move-object/from16 v6, p4

    .line 335
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;IZLorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1c

    .line 336
    :cond_2d
    :goto_1e
    iget-object v6, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v6, :cond_31

    .line 337
    array-length v7, v6

    move/from16 v9, v16

    :goto_1f
    if-lt v9, v7, :cond_2e

    goto :goto_21

    .line 338
    :cond_2e
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-nez v1, :cond_2f

    return-void

    .line 339
    :cond_2f
    aget-object v1, v6, v9

    .line 340
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_30

    if-eqz v17, :cond_30

    .line 341
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_20

    :cond_30
    move v3, v14

    :goto_20
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v12

    move-object/from16 v4, p4

    .line 342
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :cond_31
    :goto_21
    return-void
.end method

.method public reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    if-nez v9, :cond_0

    return-void

    .line 64
    :cond_0
    array-length v12, v9

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v12, :cond_1

    return-void

    .line 65
    :cond_1
    aget-object v15, v9, v14

    if-nez v10, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 66
    :cond_2
    array-length v0, v10

    move v7, v0

    .line 67
    :goto_1
    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 68
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v16, 0x1

    if-eqz v0, :cond_5

    if-eqz p7, :cond_5

    if-eqz p6, :cond_5

    .line 69
    move-object/from16 v3, p2

    check-cast v3, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v8, v15, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v17

    if-lez v7, :cond_4

    .line 70
    new-array v3, v7, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v7, :cond_3

    move-object/from16 v18, v3

    goto :goto_3

    .line 71
    :cond_3
    aget-object v4, v10, v2

    check-cast v4, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v8, v15, v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v18, v2

    .line 72
    :goto_3
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, v2

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move v13, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    move/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_4

    :cond_5
    move v13, v7

    move-object/from16 v18, v2

    const/4 v0, 0x0

    .line 73
    :goto_4
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v7

    .line 74
    array-length v6, v7

    const/4 v5, 0x0

    :goto_5
    if-lt v5, v6, :cond_e

    .line 75
    iget v1, v15, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v15, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    invoke-virtual {v11, v1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v7

    if-eqz v7, :cond_d

    if-nez p6, :cond_7

    .line 76
    array-length v1, v7

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v1, :cond_6

    goto/16 :goto_c

    .line 77
    :cond_6
    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v3, v7, v0

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 78
    :cond_7
    array-length v6, v7

    const/4 v5, 0x0

    :goto_7
    if-lt v5, v6, :cond_8

    goto/16 :goto_c

    .line 79
    :cond_8
    aget-object v1, v7, v5

    .line 80
    iget-object v3, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz p7, :cond_c

    if-nez v0, :cond_b

    .line 81
    move-object/from16 v0, p2

    check-cast v0, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v8, v15, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    if-lez v13, :cond_9

    .line 82
    new-array v0, v13, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v4, 0x0

    :goto_8
    if-lt v4, v13, :cond_a

    move-object/from16 v18, v0

    :cond_9
    move-object/from16 v19, v2

    goto :goto_9

    .line 83
    :cond_a
    aget-object v17, v10, v4

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    check-cast v2, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v8, v15, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    aput-object v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    goto :goto_8

    :goto_9
    move/from16 v17, v16

    goto :goto_a

    :cond_b
    move/from16 v17, v0

    move-object/from16 v19, v2

    .line 84
    :goto_a
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move/from16 v21, v5

    move-object/from16 v5, p4

    move/from16 v22, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    move/from16 v0, v17

    move-object/from16 v2, v19

    goto :goto_b

    :cond_c
    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v20, v7

    :goto_b
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v7, v20

    move/from16 v6, v22

    goto :goto_7

    :cond_d
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 85
    :cond_e
    aget-object v1, v7, v5

    .line 86
    iget-object v3, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_13

    if-eqz p7, :cond_13

    .line 87
    instance-of v4, v15, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    if-eqz v4, :cond_f

    move-object v4, v15

    goto :goto_d

    :cond_f
    move-object v4, v1

    :goto_d
    if-nez v0, :cond_12

    .line 88
    move-object/from16 v0, p2

    check-cast v0, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v8, v15, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    if-lez v13, :cond_11

    .line 89
    new-array v0, v13, [Lorg/eclipse/jdt/core/IJavaElement;

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_e
    if-lt v2, v13, :cond_10

    move-object/from16 v18, v0

    :goto_f
    move/from16 v19, v5

    goto :goto_10

    .line 90
    :cond_10
    aget-object v18, v10, v2

    move/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {v8, v15, v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v19

    goto :goto_e

    :cond_11
    move-object/from16 v17, v2

    goto :goto_f

    :goto_10
    move-object/from16 v20, v18

    move-object/from16 v18, v17

    move/from16 v17, v16

    goto :goto_11

    :cond_12
    move/from16 v19, v5

    move/from16 v17, v0

    move-object/from16 v20, v18

    move-object/from16 v18, v2

    .line 91
    :goto_11
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object v1, v4

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    move/from16 v22, v6

    move/from16 v6, v21

    move-object/from16 v21, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    move/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v18, v20

    goto :goto_12

    :cond_13
    move/from16 v19, v5

    move/from16 v22, v6

    move-object/from16 v21, v7

    :goto_12
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v7, v21

    move/from16 v6, v22

    goto/16 :goto_5
.end method

.method public reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    if-nez v9, :cond_0

    return-void

    .line 343
    :cond_0
    array-length v12, v9

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v12, :cond_1

    return-void

    .line 344
    :cond_1
    aget-object v15, v9, v14

    if-eqz v15, :cond_13

    .line 345
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v15}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    iget v1, v15, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 348
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v0, v15, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    move-object v0, v2

    move-object v1, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v0

    .line 349
    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    .line 350
    :cond_2
    iget v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_3

    move/from16 v16, v7

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    .line 351
    :goto_1
    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_4

    .line 352
    iget-object v4, v15, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;ZZ)V

    .line 353
    :cond_4
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_9

    .line 354
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v3, v15, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V

    .line 355
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 356
    invoke-virtual {v8, v15, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    .line 357
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 358
    :cond_5
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v1, :cond_9

    .line 359
    move-object v7, v0

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    .line 360
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_9

    .line 361
    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v6, :cond_6

    goto/16 :goto_4

    .line 362
    :cond_6
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v0, v5

    .line 363
    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v13, v4

    move-object/from16 v4, p5

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V

    .line 364
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 365
    invoke-virtual {v8, v15, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    .line 366
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v0, v1

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move/from16 v19, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_3

    :cond_7
    move/from16 v19, v6

    move-object/from16 v18, v7

    .line 367
    :goto_3
    instance-of v0, v13, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v0, :cond_8

    .line 368
    move-object v4, v13

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v6, :cond_8

    .line 369
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V

    .line 370
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 371
    invoke-virtual {v8, v15, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    .line 372
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, v1

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_8
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v7, v18

    move/from16 v6, v19

    goto/16 :goto_2

    .line 373
    :cond_9
    :goto_4
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_13

    .line 374
    array-length v13, v0

    const/4 v7, 0x0

    :goto_5
    if-lt v7, v13, :cond_a

    goto/16 :goto_b

    .line 375
    :cond_a
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v6, v0, v7

    .line 376
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, v16

    .line 377
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V

    .line 378
    :cond_b
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 379
    invoke-virtual {v8, v15, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    .line 380
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v0, v1

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v20, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    move-object/from16 v0, v20

    goto :goto_6

    :cond_c
    move/from16 v17, v7

    move-object v0, v6

    .line 381
    :goto_6
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v1, :cond_12

    .line 382
    move-object v7, v0

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    .line 383
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_12

    .line 384
    array-length v6, v0

    const/4 v5, 0x0

    :goto_7
    if-lt v5, v6, :cond_d

    goto/16 :goto_a

    .line 385
    :cond_d
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v0, v5

    .line 386
    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v9, v4

    move-object/from16 v4, p5

    move/from16 v18, v5

    move/from16 v5, v16

    .line 387
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V

    goto :goto_8

    :cond_e
    move-object v9, v4

    move/from16 v18, v5

    .line 388
    :goto_8
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 389
    invoke-virtual {v8, v15, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    .line 390
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object v0, v1

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move/from16 v20, v6

    move/from16 v6, v19

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_9

    :cond_f
    move/from16 v20, v6

    move-object/from16 v19, v7

    .line 391
    :goto_9
    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v0, :cond_11

    .line 392
    move-object v4, v9

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v6, :cond_11

    .line 393
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, v16

    .line 394
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportMatching([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V

    .line 395
    :cond_10
    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 396
    invoke-virtual {v8, v15, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createHandle(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    .line 397
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, v1

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_11
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v9, p1

    move-object/from16 v7, v19

    move/from16 v6, v20

    goto/16 :goto_7

    :cond_12
    :goto_a
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v9, p1

    goto/16 :goto_5

    :cond_13
    :goto_b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p1

    goto/16 :goto_0
.end method

.method public reportMatchingSuper(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->findLastTypeArgumentInfo(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)J

    move-result-wide v0

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    long-to-int v0, v0

    invoke-virtual {p4, v2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 p1, p1, 0x2

    const/4 p5, 0x0

    if-nez p1, :cond_3

    array-length p1, v0

    :goto_2
    if-lt p5, p1, :cond_2

    goto :goto_4

    :cond_2
    iget-object p2, p4, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object p3, v0, p5

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    if-eqz p1, :cond_6

    array-length p1, v0

    :goto_3
    if-lt p5, p1, :cond_4

    goto :goto_4

    :cond_4
    aget-object v2, v0, p5

    iget-object v1, p4, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v4, 0x0

    move-object v1, v3

    move-object v3, p2

    move-object v6, p3

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p4, p4, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p4, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v4, 0x0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public typeInHierarchy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->subOrSuperOfFocus(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->allSuperTypeNames:[[[C

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v0, v0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->allSuperTypeNames:[[[C

    aget-object v4, v4, v3

    invoke-static {p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v2
.end method
