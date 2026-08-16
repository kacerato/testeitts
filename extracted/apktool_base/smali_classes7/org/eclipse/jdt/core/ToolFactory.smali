.class public Lorg/eclipse/jdt/core/ToolFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final M_FORMAT_EXISTING:I

.field public static final M_FORMAT_NEW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/eclipse/jdt/core/ToolFactory;->M_FORMAT_NEW:I

    const/4 v0, 0x1

    sput v0, Lorg/eclipse/jdt/core/ToolFactory;->M_FORMAT_EXISTING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCodeFormatter()Lorg/eclipse/jdt/core/ICodeFormatter;
    .locals 8

    .line 1
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core"

    const-string v3, "codeFormatter"

    invoke-interface {v0, v2, v3}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v4

    move v5, v2

    .line 6
    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :try_start_0
    aget-object v6, v4, v5

    const-string v7, "class"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->createExecutableExtension(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 8
    instance-of v7, v6, Lorg/eclipse/jdt/core/ICodeFormatter;

    if-eqz v7, :cond_3

    .line 9
    check-cast v6, Lorg/eclipse/jdt/core/ICodeFormatter;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_4
    :goto_2
    invoke-static {v1}, Lorg/eclipse/jdt/core/ToolFactory;->createDefaultCodeFormatter(Ljava/util/Map;)Lorg/eclipse/jdt/core/ICodeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static createCodeFormatter(Ljava/util/Map;)Lorg/eclipse/jdt/core/formatter/CodeFormatter;
    .locals 1

    .line 11
    sget v0, Lorg/eclipse/jdt/core/ToolFactory;->M_FORMAT_NEW:I

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/ToolFactory;->createCodeFormatter(Ljava/util/Map;I)Lorg/eclipse/jdt/core/formatter/CodeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static createCodeFormatter(Ljava/util/Map;I)Lorg/eclipse/jdt/core/formatter/CodeFormatter;
    .locals 7

    if-nez p0, :cond_0

    .line 12
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 14
    sget v1, Lorg/eclipse/jdt/core/ToolFactory;->M_FORMAT_NEW:I

    if-ne p1, v1, :cond_1

    .line 15
    const-string p1, "org.eclipse.jdt.core.formatter.format_line_comment_starting_on_first_column"

    const-string v1, "true"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "org.eclipse.jdt.core.formatter.never_indent_block_comments_on_first_column"

    const-string v1, "false"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "org.eclipse.jdt.core.formatter.never_indent_line_comments_on_first_column"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_1
    const-string p1, "org.eclipse.jdt.core.javaFormatter"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    .line 19
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object p1

    const-string v1, "org.eclipse.jdt.core"

    .line 20
    const-string v2, "javaFormatter"

    .line 21
    invoke-interface {p1, v1, v2}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 22
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 23
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_2

    goto :goto_3

    .line 24
    :cond_2
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v3

    move v4, v1

    .line 25
    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    aget-object v5, v3, v4

    const-string v6, "id"

    invoke-interface {v5, v6}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 27
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 28
    :try_start_0
    aget-object v5, v3, v4

    const-string v6, "class"

    invoke-interface {v5, v6}, Lorg/eclipse/core/runtime/IConfigurationElement;->createExecutableExtension(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 29
    instance-of v6, v5, Lorg/eclipse/jdt/core/formatter/CodeFormatter;

    if-eqz v6, :cond_4

    .line 30
    check-cast v5, Lorg/eclipse/jdt/core/formatter/CodeFormatter;

    .line 31
    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/core/formatter/CodeFormatter;->setOptions(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v3

    .line 32
    invoke-virtual {v3}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 33
    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate formatter extension \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', returning built-in formatter."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 34
    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(ILjava/lang/String;)V

    .line 35
    :cond_6
    new-instance p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createDefaultClassFileBytesDisassembler()Lorg/eclipse/jdt/core/util/ClassFileBytesDisassembler;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/Disassembler;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;-><init>()V

    return-object v0
.end method

.method public static createDefaultClassFileDisassembler()Lorg/eclipse/jdt/core/util/IClassFileDisassembler;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/ToolFactory$1DeprecatedDisassembler;

    invoke-direct {v0}, Lorg/eclipse/jdt/core/ToolFactory$1DeprecatedDisassembler;-><init>()V

    return-object v0
.end method

.method public static createDefaultClassFileReader(Ljava/io/InputStream;I)Lorg/eclipse/jdt/core/util/IClassFileReader;
    .locals 3

    const/4 v0, 0x0

    .line 16
    :try_start_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;

    const/4 v2, -0x1

    invoke-static {p0, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;-><init>([BI)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/util/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static createDefaultClassFileReader(Ljava/lang/String;I)Lorg/eclipse/jdt/core/util/IClassFileReader;
    .locals 3

    const/4 v0, 0x0

    .line 17
    :try_start_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileByteContent(Ljava/io/File;)[B

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;-><init>([BI)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/util/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static createDefaultClassFileReader(Ljava/lang/String;Ljava/lang/String;I)Lorg/eclipse/jdt/core/util/IClassFileReader;
    .locals 4

    const/4 v0, 0x0

    .line 18
    :try_start_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v1, :cond_0

    .line 19
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") [ToolFactory.createDefaultClassFileReader()] Creating ZipFile on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/util/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/util/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_1

    .line 22
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    .line 23
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catch Lorg/eclipse/jdt/core/util/ClassFormatException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_2

    .line 24
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    .line 25
    :cond_2
    :try_start_5
    invoke-static {p0, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object p0

    .line 26
    new-instance p1, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;

    invoke-direct {p1, p0, p2}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;-><init>([BI)V
    :try_end_5
    .catch Lorg/eclipse/jdt/core/util/ClassFormatException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 27
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-object p1

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 28
    :catch_3
    :cond_3
    throw p0

    :catch_4
    move-object v1, v0

    :catch_5
    if-eqz v1, :cond_4

    .line 29
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_4
    return-object v0

    :catch_7
    move-object v1, v0

    :catch_8
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :cond_5
    return-object v0
.end method

.method public static createDefaultClassFileReader(Lorg/eclipse/jdt/core/IClassFile;I)Lorg/eclipse/jdt/core/util/IClassFileReader;
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-interface {p0, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    .line 3
    :try_start_1
    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getJar()Ljava/util/zip/ZipFile;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :try_start_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    .line 6
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    .line 7
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p0

    .line 8
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-static {v0, p0, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {v2, p0, p1}, Lorg/eclipse/jdt/core/ToolFactory;->createDefaultClassFileReader(Ljava/lang/String;Ljava/lang/String;I)Lorg/eclipse/jdt/core/util/IClassFileReader;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v1

    .line 10
    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    .line 11
    throw p0
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_2

    .line 12
    :cond_0
    :try_start_4
    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    check-cast p0, Lorg/eclipse/core/resources/IFile;

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getContents()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 13
    :try_start_5
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/ToolFactory;->createDefaultClassFileReader(Ljava/io/InputStream;I)Lorg/eclipse/jdt/core/util/IClassFileReader;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p0, :cond_1

    .line 14
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_0
    :cond_1
    return-object p1

    :catchall_2
    move-exception p1

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_7 .. :try_end_7} :catch_2

    .line 15
    :catch_1
    :cond_2
    :try_start_8
    throw p1
    :try_end_8
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_3
    return-object v1
.end method

.method public static createDefaultCodeFormatter(Ljava/util/Map;)Lorg/eclipse/jdt/core/ICodeFormatter;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createScanner(ZZZLjava/lang/String;)Lorg/eclipse/jdt/core/compiler/IScanner;
    .locals 15

    .line 4
    const-string v0, "org.eclipse.jdt.core.compiler.compliance"

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/32 v0, 0x300000

    :cond_0
    move-wide v10, v0

    .line 5
    invoke-static/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/32 v0, 0x2f0000

    :cond_1
    move-wide v8, v0

    .line 6
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    move v5, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;-><init>(ZZZJJ[[C[[CZ)V

    move/from16 v1, p2

    .line 7
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    return-object v0
.end method

.method public static createScanner(ZZZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/core/compiler/IScanner;
    .locals 15

    .line 8
    invoke-static/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/32 v0, 0x2f0000

    :cond_0
    move-wide v8, v0

    .line 9
    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/32 v0, 0x300000

    :cond_1
    move-wide v10, v0

    .line 10
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    move v5, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;-><init>(ZZZJJ[[C[[CZ)V

    move/from16 v1, p2

    .line 11
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    return-object v0
.end method

.method public static createScanner(ZZZZ)Lorg/eclipse/jdt/core/compiler/IScanner;
    .locals 16

    .line 1
    const-string v0, "org.eclipse.jdt.core.compiler.compliance"

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/32 v3, 0x300000

    if-nez v2, :cond_0

    move-wide v11, v3

    goto :goto_0

    :cond_0
    move-wide v11, v0

    .line 2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;

    if-eqz p2, :cond_1

    :goto_1
    move-wide v9, v3

    goto :goto_2

    :cond_1
    const-wide/32 v3, 0x2f0000

    goto :goto_1

    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v5, v0

    move/from16 v6, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v15}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;-><init>(ZZZJJ[[C[[CZ)V

    move/from16 v1, p3

    .line 3
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    return-object v0
.end method
