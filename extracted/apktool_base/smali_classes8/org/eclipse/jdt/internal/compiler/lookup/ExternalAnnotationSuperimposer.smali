.class Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;
.source "SourceFile"


# instance fields
.field private currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

.field private environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private isReplacing:Z

.field private typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 5
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    .line 6
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-void
.end method

.method public static annotateFieldBinding(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->genericSignature()[C

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {p1, v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->forField([C[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->go(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const-class p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->superimpose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Class;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    return-void
.end method

.method public static annotateMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericSignature()[C

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p1, v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->forMethod([C[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-eq p1, v0, :cond_6

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p2

    const-class v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->go(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->superimpose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Class;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    array-length p0, v4

    if-lt v1, p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->go(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Z

    move-result p0

    if-eqz p0, :cond_3

    aget-object p0, v4, v1

    invoke-virtual {v0, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->superimpose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Class;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    aput-object p0, v4, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_1

    :cond_4
    invoke-interface {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->go(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v3, p2, v2

    const-class v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->superimpose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Class;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aput-object v3, p2, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public static annotateType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 5

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->forTypeHeader(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-eq v0, v1, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->go(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p2, v2

    const-class v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->superimpose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Class;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aput-object v3, p2, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->externalAnnotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    return-void
.end method

.method public static apply(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".eea"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    :try_start_4
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-direct {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->annotateType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catch_3
    move-object v0, v1

    goto :goto_5

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :goto_3
    :try_start_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_externaAnnotationFile:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, p1, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_2

    :goto_4
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_3
    throw p0

    :catch_5
    :goto_5
    if-eqz v0, :cond_4

    goto :goto_2

    :catch_6
    :cond_4
    :goto_6
    return-void
.end method

.method private goAndSuperimpose(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-ne p1, v0, :cond_0

    return-object p2

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method private restore(Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;)V
    .locals 1

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-void
.end method

.method private snapshot()Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    return-object v0
.end method


# virtual methods
.method public go(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public superimpose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Class;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">(TT;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_0
    return-object p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)Z
    .locals 9

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->snapshot()Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;

    move-result-object v0

    .line 4
    :try_start_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    .line 5
    new-array v2, v1, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->goAndSuperimpose(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 8
    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->flattenedAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {v3, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 10
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->restore(Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;)V

    return v4

    .line 11
    :cond_1
    :try_start_1
    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-interface {v3, v6, v4}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v6

    .line 12
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eq v6, v7, :cond_2

    .line 13
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x1

    .line 14
    iput-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    goto :goto_2

    .line 15
    :cond_2
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    aput-object v6, v2, v5

    .line 16
    :goto_2
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :goto_3
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->restore(Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;)V

    .line 18
    throw p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Z
    .locals 8

    .line 19
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->snapshot()Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;

    move-result-object v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    .line 21
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 22
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eq v1, v4, :cond_0

    .line 23
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 26
    array-length v4, v1

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v5, v3

    .line 27
    :goto_1
    array-length v6, v1

    if-lt v5, v6, :cond_2

    .line 28
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {v1, v5, v4, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->restore(Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;)V

    return v3

    .line 31
    :cond_2
    :try_start_1
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    invoke-interface {v6, v5}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-direct {p0, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->goAndSuperimpose(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 32
    :goto_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->restore(Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;)V

    .line 33
    throw p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Z
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 4

    .line 35
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    .line 36
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eq v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_0
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Z
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;)Z
    .locals 10

    .line 39
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 40
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->snapshot()Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->goAndSuperimpose(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_0
    move-object v5, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 42
    :goto_0
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->currentWalker:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const/4 v2, -0x1

    const/4 v9, 0x0

    invoke-interface {v0, v2, v9}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    .line 43
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->isReplacing:Z

    if-nez v2, :cond_1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eq v0, v2, :cond_3

    .line 44
    :cond_1
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 45
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eq v0, v2, :cond_2

    .line 46
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v8

    .line 47
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    .line 48
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->typeReplacement:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->restore(Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;)V

    return v9

    :goto_2
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->restore(Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;)V

    .line 50
    throw p1
.end method
