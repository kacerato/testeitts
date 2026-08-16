.class public Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTOMATIC_MODULE_NAME:Ljava/lang/String; = "Automatic-Module-Name"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineAutomaticModuleName(Ljava/lang/String;)[C
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    const-string v3, "Automatic-Module-Name"

    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_3

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_2

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_2
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_3
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0, v0}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleNameFromFileName(Ljava/lang/String;ZZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static determineAutomaticModuleName(Ljava/lang/String;ZLjava/util/jar/Manifest;)[C
    .locals 1

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object p2

    const-string v0, "Automatic-Module-Name"

    invoke-virtual {p2, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x1

    .line 9
    invoke-static {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleNameFromFileName(Ljava/lang/String;ZZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static determineAutomaticModuleNameFromFileName(Ljava/lang/String;ZZ)[C
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-char p1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p2, :cond_2

    const-string p2, ".jar"

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, ".JAR"

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x4

    :cond_2
    move p2, p1

    :goto_1
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x2e

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-lt p2, v3, :cond_3

    move v8, v0

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2d

    if-ne v3, v7, :cond_e

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v5, :cond_e

    add-int/lit8 v3, p2, 0x2

    :goto_2
    if-lt v3, v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_c

    :goto_3
    move v8, p2

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    sub-int p2, v8, p1

    invoke-direct {v9, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    move p2, v2

    :goto_5
    if-lt p1, v8, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x41

    if-lt v0, v3, :cond_6

    const/16 v3, 0x5a

    if-le v0, v3, :cond_8

    :cond_6
    const/16 v3, 0x61

    if-lt v0, v3, :cond_7

    const/16 v3, 0x7a

    if-le v0, v3, :cond_8

    :cond_7
    if-lt v0, v6, :cond_a

    if-gt v0, v5, :cond_a

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p2, v2

    :cond_9
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    move p2, v1

    :cond_b
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_c
    if-lt v7, v6, :cond_e

    if-le v7, v5, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_e
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public static determineAutomaticModuleNameFromManifest(Ljava/util/jar/Manifest;)[C
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object p0

    const-string v0, "Automatic-Module-Name"

    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
