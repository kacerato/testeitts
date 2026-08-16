.class public final Lorg/eclipse/jdt/core/JavaConventions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOT:C = '.'

.field private static final DOT_DOT:Ljava/util/regex/Pattern;

.field private static final PREFIX_JAVA:Ljava/util/regex/Pattern;

.field private static final SCANNER:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "(\\.)(\\1)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/JavaConventions;->DOT_DOT:Ljava/util/regex/Pattern;

    const-string v0, "java$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/JavaConventions;->PREFIX_JAVA:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/32 v5, 0x2f0000

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    sput-object v0, Lorg/eclipse/jdt/core/JavaConventions;->SCANNER:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOverlappingRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static declared-synchronized scannedIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C
    .locals 7

    const-class v0, Lorg/eclipse/jdt/core/JavaConventions;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lorg/eclipse/jdt/core/JavaConventions;->SCANNER:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const-wide/32 v3, 0x2f0000

    if-nez p1, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    :goto_0
    iput-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v3

    :goto_1
    iput-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifier()I

    move-result p0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0x16

    if-eq p0, p1, :cond_3

    monitor-exit v0

    return-object v1

    :cond_3
    :try_start_2
    iget p0, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget p1, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I
    :try_end_2
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, p1, :cond_4

    :try_start_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    monitor-exit v0

    return-object v1

    :cond_4
    monitor-exit v0

    return-object v1

    :catch_1
    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static validateClassFileName(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 8

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_classFile_nullName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_classFile_notClassFileName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    const/4 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    const/16 v0, 0x2e

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 6
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_classFile_notClassFileName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x4

    const-string v4, "org.eclipse.jdt.core"

    const/4 v5, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_2
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_NAME:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    .line 12
    :cond_3
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lorg/eclipse/core/resources/IWorkspace;->validateName(Ljava/lang/String;I)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result p1

    if-nez p1, :cond_4

    return-object p0

    .line 14
    :cond_4
    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p0
.end method

.method public static validateClasspath(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspath(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateClasspathEntry(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathEntry;Z)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspathEntry(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateCompilationUnitName(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 8

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_unit_nullName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_unit_notJavaName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    const/4 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    const/16 v0, 0x2e

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 6
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_unit_notJavaName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x4

    const-string v4, "org.eclipse.jdt.core"

    const/4 v5, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_2
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_NAME:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    .line 12
    :cond_3
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lorg/eclipse/core/resources/IWorkspace;->validateName(Ljava/lang/String;I)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result p1

    if-nez p1, :cond_4

    return-object p0

    .line 14
    :cond_4
    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p0
.end method

.method public static validateFieldName(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateIdentifier(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 6

    .line 2
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->scannedIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/Status;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_illegalIdentifier:Ljava/lang/String;

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static validateImportDeclaration(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateImportDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateImportDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 6

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_import_unqualifiedImport:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 7
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    :goto_0
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_import_nullImport:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static validateJavaTypeName(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateJavaTypeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateJavaTypeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 10

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_type_nullName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_type_nameWithBlanks:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    const/4 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    const/16 v0, 0x2e

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 7
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->scannedIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    add-int/2addr v0, v2

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->scannedIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 13
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, p2, v2}, Lorg/eclipse/core/resources/IWorkspace;->validateName(Ljava/lang/String;I)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result p2

    if-nez p2, :cond_4

    return-object p0

    :cond_4
    const/16 p0, 0x24

    .line 15
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->contains(C[C)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 16
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_type_dollarName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v5, 0x2

    const-string v6, "org.eclipse.jdt.core"

    const/4 v7, -0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 17
    :cond_5
    array-length p0, p1

    if-lez p0, :cond_6

    aget-char p0, p1, v3

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLowerCase(C)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 18
    new-instance p0, Lorg/eclipse/core/runtime/Status;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_type_lowercaseName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 19
    :cond_6
    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p0

    .line 20
    :cond_7
    new-instance p1, Lorg/eclipse/core/runtime/Status;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_type_invalidName:Ljava/lang/String;

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static validateMethodName(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateModuleName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    new-instance v6, Lorg/eclipse/core/runtime/Status;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_module_nullName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_module_emptyName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x4

    const-string v4, "org.eclipse.jdt.core"

    const/4 v5, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_c

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lorg/eclipse/jdt/core/JavaConventions;->DOT_DOT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_module_consecutiveDotsName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v5, 0x4

    const-string v6, "org.eclipse.jdt.core"

    const/4 v7, -0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_4
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static {v5, v6, v7}, Lorg/eclipse/jdt/core/JavaConventions;->scannedIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v8

    if-nez v8, :cond_7

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_illegalIdentifier:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v10, 0x4

    const-string v11, "org.eclipse.jdt.core"

    const/4 v12, -0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_7
    if-eqz v3, :cond_8

    sget-object v9, Lorg/eclipse/jdt/core/JavaConventions;->PREFIX_JAVA:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_module_javaName:Ljava/lang/String;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v10, 0x2

    const-string v11, "org.eclipse.jdt.core"

    const/4 v12, -0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    const/4 v9, 0x2

    invoke-interface {v1, v5, v9}, Lorg/eclipse/core/resources/IWorkspace;->validateName(Ljava/lang/String;I)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v9

    if-nez v9, :cond_9

    return-object v5

    :cond_9
    if-eqz v3, :cond_a

    array-length v3, v8

    if-lez v3, :cond_a

    aget-char v3, v8, v2

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_a

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v12, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_module_uppercaseName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v9, 0x2

    const-string v10, "org.eclipse.jdt.core"

    const/4 v11, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    move v3, v2

    goto :goto_0

    :cond_b
    :goto_1
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_module_nameWithBlanks:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v6, 0x4

    const-string v7, "org.eclipse.jdt.core"

    const/4 v8, -0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_c
    :goto_2
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v15, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_module_dotName:Ljava/lang/String;

    const/16 v16, 0x0

    const/4 v12, 0x4

    const-string v13, "org.eclipse.jdt.core"

    const/4 v14, -0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static validatePackageName(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    .line 2
    new-instance v6, Lorg/eclipse/core/runtime/Status;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_package_nullName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_package_emptyName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x4

    const-string v4, "org.eclipse.jdt.core"

    const/4 v5, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_b

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    goto/16 :goto_2

    .line 6
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 7
    :cond_3
    sget-object v1, Lorg/eclipse/jdt/core/JavaConventions;->DOT_DOT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_package_consecutiveDotsName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v5, 0x4

    const-string v6, "org.eclipse.jdt.core"

    const/4 v7, -0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 9
    :cond_4
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    .line 10
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v0, :cond_5

    return-object v0

    .line 12
    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    .line 13
    :cond_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 15
    invoke-static {v5, v6, v7}, Lorg/eclipse/jdt/core/JavaConventions;->scannedIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v8

    if-nez v8, :cond_7

    .line 16
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_illegalIdentifier:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v10, 0x4

    const-string v11, "org.eclipse.jdt.core"

    const/4 v12, -0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 17
    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    const/4 v9, 0x2

    invoke-interface {v1, v5, v9}, Lorg/eclipse/core/resources/IWorkspace;->validateName(Ljava/lang/String;I)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v5

    .line 18
    invoke-interface {v5}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v9

    if-nez v9, :cond_8

    return-object v5

    :cond_8
    if-eqz v3, :cond_9

    .line 19
    array-length v3, v8

    if-lez v3, :cond_9

    aget-char v3, v8, v2

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v0, :cond_9

    .line 20
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v12, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_package_uppercaseName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v9, 0x2

    const-string v10, "org.eclipse.jdt.core"

    const/4 v11, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    move v3, v2

    goto :goto_0

    .line 21
    :cond_a
    :goto_1
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_package_nameWithBlanks:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v6, 0x4

    const-string v7, "org.eclipse.jdt.core"

    const/4 v8, -0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 22
    :cond_b
    :goto_2
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v15, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_package_dotName:Ljava/lang/String;

    const/16 v16, 0x0

    const/4 v12, 0x4

    const-string v13, "org.eclipse.jdt.core"

    const/4 v14, -0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static validateTypeVariableName(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    .line 1
    const-string v0, "1.3"

    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method

.method public static validateTypeVariableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    return-object p0
.end method
