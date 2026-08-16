.class public Lorg/offlineApk/apksigner/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/offlineApk/apksigner/a$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "0.9"

.field public static final b:Ljava/lang/String; = "help.txt"

.field public static final c:Ljava/lang/String; = "help_sign.txt"

.field public static final d:Ljava/lang/String; = "help_verify.txt"

.field public static final e:Ljava/lang/String; = "help_rotate.txt"

.field public static final f:Ljava/lang/String; = "help_lineage.txt"

.field public static final g:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field public static final h:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field public static i:Ljava/security/MessageDigest; = null

.field public static j:Ljava/security/MessageDigest; = null

.field public static k:Ljava/security/MessageDigest; = null

.field public static final l:I = 0x4034b50


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLineageFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/offlineApk/apksigner/ParameterException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    const-string v2, "The input file is not a valid lineage file."

    if-ltz v1, :cond_2

    :try_start_2
    invoke-static {v0}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    invoke-interface {v1, v3, v4, v5}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v3, 0x3eff39d1

    if-ne v1, v3, :cond_0

    invoke-static {p0}, Lcom/android/apksig/SigningCertificateLineage;->readFromFile(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const v3, 0x4034b50

    if-ne v1, v3, :cond_1

    :try_start_4
    invoke-static {p0}, Lcom/android/apksig/SigningCertificateLineage;->readFromApkFile(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    return-object p0

    :cond_1
    :try_start_6
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    invoke-direct {p0, v2}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    invoke-direct {p0, v2}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_2
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Len/c;Len/b;Z)Lcom/android/apksig/ApkSigner$SignerConfig;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signer",
            "passwordRetriever",
            "deterministicDsaSigning"
        }
    .end annotation

    const-string v0, "Failed to load signer \""

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1}, Len/c;->n(Len/b;)V
    :try_end_0
    .catch Lorg/offlineApk/apksigner/ParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Len/c;->j()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Len/c;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Len/c;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Len/c;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Len/c;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Len/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;

    invoke-virtual {p0}, Len/c;->h()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p0}, Len/c;->c()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V

    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;->build()Lcom/android/apksig/ApkSigner$SignerConfig;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Neither KeyStore key alias nor private key file available"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p1

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Len/c;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-object v1

    :catch_1
    move-exception p1

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Len/c;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-object v1
.end method

.method public static c([Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    const-string v1, "help_lineage.txt"

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lorg/offlineApk/apksigner/OptionsParser;

    invoke-direct {v0, p0}, Lorg/offlineApk/apksigner/OptionsParser;-><init>([Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    move v7, v6

    move v8, v7

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/offlineApk/apksigner/OptionsParser;->f()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    const-string v10, "help"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "h"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v10, "in"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v3, Ljava/io/File;

    const-string v9, "Input file name"

    invoke-virtual {v0, v9}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v10, "out"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v5, Ljava/io/File;

    const-string v9, "Output file name"

    invoke-virtual {v0, v9}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v10, "signer"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v0}, Lorg/offlineApk/apksigner/a;->j(Lorg/offlineApk/apksigner/OptionsParser;)Len/c;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v10, "v"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "verbose"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_1

    :cond_6
    const-string v10, "print-certs"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v0, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v6

    goto :goto_0

    :cond_7
    const-string v8, "print-certs-pem"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_8
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/offlineApk/apksigner/OptionsParser;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". See --help for supported options."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    invoke-virtual {v0, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v7

    goto/16 :goto_0

    :cond_a
    :goto_2
    invoke-static {v1}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :cond_b
    if-eqz v3, :cond_13

    invoke-static {v3}, Lorg/offlineApk/apksigner/a;->a(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    new-instance v1, Len/b;

    invoke-direct {v1}, Len/b;-><init>()V

    move v3, v4

    move v9, v3

    :cond_c
    :goto_3
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "."

    if-ge v3, v10, :cond_f

    :try_start_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Len/c;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "signer #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Len/c;->B(Ljava/lang/String;)V

    invoke-static {v10, v1}, Lorg/offlineApk/apksigner/a;->d(Len/c;Len/b;)V

    new-instance v12, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;

    invoke-virtual {v10}, Len/c;->h()Ljava/security/PrivateKey;

    move-result-object v13

    invoke-virtual {v10}, Len/c;->c()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509Certificate;

    invoke-direct {v12, v13, v14}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v12}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerConfig;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v12}, Lcom/android/apksig/SigningCertificateLineage;->getSignerCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v13

    invoke-virtual {v10}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v14

    invoke-virtual {v0, v12, v14}, Lcom/android/apksig/SigningCertificateLineage;->updateSignerCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)V

    invoke-virtual {v0, v12}, Lcom/android/apksig/SigningCertificateLineage;->getSignerCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->equals(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v7, :cond_c

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The provided signer capabilities for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Len/c;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " are unchanged."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_d
    if-eqz v7, :cond_e

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updated signer capabilities for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Len/c;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    move v9, v2

    goto/16 :goto_3

    :catch_0
    :try_start_3
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The signer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Len/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not found in the specified lineage."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    invoke-virtual {v1}, Len/b;->close()V

    if-eqz v6, :cond_10

    invoke-virtual {v0}, Lcom/android/apksig/SigningCertificateLineage;->getCertificatesInLineage()Ljava/util/List;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_10

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Lcom/android/apksig/SigningCertificateLineage;->getSignerCapabilities(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signer #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in lineage"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7, v8}, Lorg/offlineApk/apksigner/a;->h(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZZ)V

    invoke-static {v2}, Lorg/offlineApk/apksigner/a;->f(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)V

    goto :goto_4

    :cond_10
    if-eqz v9, :cond_12

    if-eqz v5, :cond_11

    invoke-virtual {v0, v5}, Lcom/android/apksig/SigningCertificateLineage;->writeToFile(Ljava/io/File;)V

    if-eqz v7, :cond_12

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated lineage saved to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v0, "The lineage was modified but an output file for the lineage was not specified"

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_5
    return-void

    :goto_6
    :try_start_4
    invoke-virtual {v1}, Len/b;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0

    :cond_13
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v0, "Input lineage file parameter not present"

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Len/c;Len/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "passwordRetriever"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/offlineApk/apksigner/ParameterException;
        }
    .end annotation

    const-string v0, "Failed to load signer \""

    :try_start_0
    invoke-virtual {p0, p1}, Len/c;->n(Len/b;)V

    invoke-virtual {p0}, Len/c;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Len/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Len/c;->B(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Len/c;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Len/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Len/c;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Len/c;->B(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Neither KeyStore key alias nor private key file available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Len/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/offlineApk/apksigner/ParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Len/c;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    new-instance v1, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Len/c;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static e([Ljava/lang/String;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    const-string v1, "help.txt"

    if-eqz v0, :cond_8

    const-string v0, "--help"

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "-h"

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "--version"

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "0.9"

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    aget-object v0, p0, v2

    const/4 v2, 0x1

    :try_start_0
    const-string v4, "sign"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v0, p0

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lorg/offlineApk/apksigner/a;->l([Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :cond_2
    const-string v4, "verify"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    array-length v0, p0

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lorg/offlineApk/apksigner/a;->m([Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v4, "rotate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    array-length v0, p0

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lorg/offlineApk/apksigner/a;->k([Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v4, "lineage"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    array-length v0, p0

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lorg/offlineApk/apksigner/a;->c([Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "help"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v1}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". See --help for supported commands"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/offlineApk/apksigner/ParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/offlineApk/apksigner/OptionsParser$OptionsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_8
    :goto_1
    invoke-static {v1}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static f(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has installed data capability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->hasInstalledData()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has shared UID capability    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->hasSharedUid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has permission capability    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->hasPermission()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has rollback capability      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->hasRollback()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has auth capability          : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->hasAuth()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cert",
            "name",
            "verbose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/offlineApk/apksigner/a;->h(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static h(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cert",
            "name",
            "verbose",
            "pemOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    if-eqz p0, :cond_a

    sget-object v0, Lorg/offlineApk/apksigner/a;->i:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/offlineApk/apksigner/a;->j:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/offlineApk/apksigner/a;->k:Ljava/security/MessageDigest;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/offlineApk/apksigner/a;->i:Ljava/security/MessageDigest;

    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/offlineApk/apksigner/a;->j:Ljava/security/MessageDigest;

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/offlineApk/apksigner/a;->k:Ljava/security/MessageDigest;

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " certificate DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " certificate SHA-256 digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/offlineApk/apksigner/a;->i:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Len/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " certificate SHA-1 digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/offlineApk/apksigner/a;->j:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Len/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " certificate MD5 digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/offlineApk/apksigner/a;->k:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Len/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    instance-of v1, p2, Ljava/security/interfaces/RSAKey;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/security/interfaces/RSAKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_0

    :cond_2
    instance-of v1, p2, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_0

    :cond_3
    instance-of v1, p2, Ljava/security/interfaces/DSAKey;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/security/interfaces/DSAKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " key size (bits): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v1, v2, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v1, "n/a"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " public key SHA-256 digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/offlineApk/apksigner/a;->i:Ljava/security/MessageDigest;

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Len/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " public key SHA-1 digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/offlineApk/apksigner/a;->j:Ljava/security/MessageDigest;

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Len/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " public key MD5 digest: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/offlineApk/apksigner/a;->k:Ljava/security/MessageDigest;

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Len/a;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    if-eqz p3, :cond_9

    const-string p1, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_8

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    add-int/lit8 p3, p1, 0x40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, p3

    :goto_3
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move p1, p3

    goto :goto_2

    :cond_8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "-----END CERTIFICATE-----"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "cert == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-class v2, Lorg/offlineApk/apksigner/a;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " resource"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Lorg/offlineApk/apksigner/OptionsParser;)Len/c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optionsParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/offlineApk/apksigner/OptionsParser$OptionsException;,
            Lorg/offlineApk/apksigner/ParameterException;
        }
    .end annotation

    new-instance v0, Len/c;

    invoke-direct {v0}, Len/c;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/offlineApk/apksigner/OptionsParser;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "ks"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "KeyStore file"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "ks-key-alias"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "KeyStore key alias"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "ks-pass"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "KeyStore password"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "key-pass"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Key password"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "pass-encoding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "Password character encoding"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Len/b;->g(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Len/c;->C(Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported password character encoding requested using --pass-encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string v2, "ks-type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "KeyStore type"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->A(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "ks-provider-name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "JCA KeyStore Provider name"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->z(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "ks-provider-class"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "JCA KeyStore Provider class name"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->y(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "ks-provider-arg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, "JCA KeyStore Provider constructor argument"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v1, "Private key file"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "cert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "Certificate file"

    invoke-virtual {p0, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Len/c;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "set-installed-data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->setInstalledData(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    goto/16 :goto_0

    :cond_b
    const-string v2, "set-shared-uid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->setSharedUid(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    goto/16 :goto_0

    :cond_c
    const-string v2, "set-permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->setPermission(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    goto/16 :goto_0

    :cond_d
    const-string v2, "set-rollback"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->setRollback(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    goto/16 :goto_0

    :cond_e
    const-string v2, "set-auth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->setAuth(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lorg/offlineApk/apksigner/OptionsParser;->g()V

    :cond_10
    invoke-virtual {v0}, Len/c;->k()Z

    move-result p0

    if-nez p0, :cond_11

    return-object v0

    :cond_11
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v0, "Signer specified without arguments"

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k([Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    const-string v1, "help_rotate.txt"

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/offlineApk/apksigner/a$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/offlineApk/apksigner/a$b;-><init>(Lorg/offlineApk/apksigner/a$a;)V

    new-instance v4, Lorg/offlineApk/apksigner/OptionsParser;

    invoke-direct {v4, p0}, Lorg/offlineApk/apksigner/OptionsParser;-><init>([Ljava/lang/String;)V

    const/4 p0, 0x0

    move v10, p0

    move v11, v10

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :cond_1
    :goto_0
    invoke-virtual {v4}, Lorg/offlineApk/apksigner/OptionsParser;->f()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-virtual {v4}, Lorg/offlineApk/apksigner/OptionsParser;->a()Ljava/lang/String;

    move-result-object v8

    const-string v13, "help"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "h"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v13, "out"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v7, Ljava/io/File;

    const-string v12, "Output file name"

    invoke-virtual {v4, v12}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v13, "in"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v9, Ljava/io/File;

    const-string v12, "Input file name"

    invoke-virtual {v4, v12}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v13, "old-signer"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v4}, Lorg/offlineApk/apksigner/a;->j(Lorg/offlineApk/apksigner/OptionsParser;)Len/c;

    move-result-object v5

    goto :goto_0

    :cond_5
    const-string v13, "new-signer"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v4}, Lorg/offlineApk/apksigner/a;->j(Lorg/offlineApk/apksigner/OptionsParser;)Len/c;

    move-result-object v6

    goto :goto_0

    :cond_6
    const-string v13, "min-sdk-version"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v10, "Mininimum API Level"

    invoke-virtual {v4, v10}, Lorg/offlineApk/apksigner/OptionsParser;->d(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    :cond_7
    const-string v13, "v"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "verbose"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_1

    :cond_8
    const-string v13, "next-provider"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {v2}, Lorg/offlineApk/apksigner/a$b;->a(Lorg/offlineApk/apksigner/a$b;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/offlineApk/apksigner/a$b;

    invoke-direct {v2, v3}, Lorg/offlineApk/apksigner/a$b;-><init>(Lorg/offlineApk/apksigner/a$a;)V

    goto/16 :goto_0

    :cond_9
    const-string v13, "provider-class"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v12, "JCA Provider class name"

    invoke-virtual {v4, v12}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/offlineApk/apksigner/a$b;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v13, "provider-arg"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v12, "JCA Provider constructor argument"

    invoke-virtual {v4, v12}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/offlineApk/apksigner/a$b;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v13, "provider-pos"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "JCA Provider position"

    invoke-virtual {v4, v12}, Lorg/offlineApk/apksigner/OptionsParser;->d(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v2, Lorg/offlineApk/apksigner/a$b;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_c
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". See --help for supported options."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_1
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v11

    goto/16 :goto_0

    :cond_e
    :goto_2
    invoke-static {v1}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-static {v2}, Lorg/offlineApk/apksigner/a$b;->a(Lorg/offlineApk/apksigner/a$b;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v5}, Len/c;->k()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v6}, Len/c;->k()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz v7, :cond_15

    invoke-virtual {v4}, Lorg/offlineApk/apksigner/OptionsParser;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-gtz v2, :cond_14

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/offlineApk/apksigner/a$b;

    invoke-static {v1}, Lorg/offlineApk/apksigner/a$b;->b(Lorg/offlineApk/apksigner/a$b;)V

    goto :goto_3

    :cond_11
    new-instance v0, Len/b;

    invoke-direct {v0}, Len/b;-><init>()V

    :try_start_0
    const-string v1, "old signer"

    invoke-virtual {v5, v1}, Len/c;->B(Ljava/lang/String;)V

    invoke-static {v5, v0}, Lorg/offlineApk/apksigner/a;->d(Len/c;Len/b;)V

    new-instance v1, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;

    invoke-virtual {v5}, Len/c;->h()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v5}, Len/c;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-direct {v1, v2, v3}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerConfig;

    move-result-object v1

    const-string v2, "new signer"

    invoke-virtual {v6, v2}, Len/c;->B(Ljava/lang/String;)V

    invoke-static {v6, v0}, Lorg/offlineApk/apksigner/a;->d(Len/c;Len/b;)V

    new-instance v2, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;

    invoke-virtual {v6}, Len/c;->h()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v6}, Len/c;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-direct {v2, v3, p0}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v2}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerConfig;

    move-result-object p0

    if-eqz v9, :cond_12

    invoke-static {v9}, Lorg/offlineApk/apksigner/a;->a(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    invoke-virtual {v5}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/apksig/SigningCertificateLineage;->updateSignerCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)V

    invoke-virtual {v6}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v3

    invoke-virtual {v2, v1, p0, v3}, Lcom/android/apksig/SigningCertificateLineage;->spawnDescendant(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_12
    new-instance v2, Lcom/android/apksig/SigningCertificateLineage$Builder;

    invoke-direct {v2, v1, p0}, Lcom/android/apksig/SigningCertificateLineage$Builder;-><init>(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)V

    invoke-virtual {v2, v10}, Lcom/android/apksig/SigningCertificateLineage$Builder;->setMinSdkVersion(I)Lcom/android/apksig/SigningCertificateLineage$Builder;

    move-result-object p0

    invoke-virtual {v5}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/apksig/SigningCertificateLineage$Builder;->setOriginalCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage$Builder;

    move-result-object p0

    invoke-virtual {v6}, Len/c;->i()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/apksig/SigningCertificateLineage$Builder;->setNewCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/apksig/SigningCertificateLineage$Builder;->build()Lcom/android/apksig/SigningCertificateLineage;

    move-result-object p0

    :goto_4
    invoke-virtual {p0, v7}, Lcom/android/apksig/SigningCertificateLineage;->writeToFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Len/b;->close()V

    if-eqz v11, :cond_13

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Rotation entry generated."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    return-void

    :goto_5
    :try_start_1
    invoke-virtual {v0}, Len/b;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_14
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected parameter(s) after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v1, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v0, "Output lineage file parameter not present"

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v0, "Signer parameters for new signer not present"

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v0, "Signer parameters for old signer not present"

    invoke-direct {p0, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l([Ljava/lang/String;)V
    .locals 33
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x1

    array-length v3, v0

    const-string v4, "help_sign.txt"

    if-nez v3, :cond_0

    invoke-static {v4}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Len/c;

    invoke-direct {v5}, Len/c;-><init>()V

    new-instance v6, Len/c;

    invoke-direct {v6}, Len/c;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lorg/offlineApk/apksigner/a$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lorg/offlineApk/apksigner/a$b;-><init>(Lorg/offlineApk/apksigner/a$a;)V

    new-instance v10, Lorg/offlineApk/apksigner/OptionsParser;

    invoke-direct {v10, v0}, Lorg/offlineApk/apksigner/OptionsParser;-><init>([Ljava/lang/String;)V

    const v0, 0x7fffffff

    const/16 v11, 0x21

    move v15, v2

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v24, v20

    move-object v12, v9

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v26, v16

    move-object/from16 v27, v26

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_0
    invoke-virtual {v10}, Lorg/offlineApk/apksigner/OptionsParser;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v10}, Lorg/offlineApk/apksigner/OptionsParser;->a()Ljava/lang/String;

    move-result-object v13

    const-string v9, "help"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    const-string v9, "h"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v9, "out"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v1, Ljava/io/File;

    const-string v9, "Output file name"

    invoke-virtual {v10, v9}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v1

    :cond_2
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const-string v9, "in"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v12, Ljava/io/File;

    const-string v1, "Input file name"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v9, "min-sdk-version"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v1, "Mininimum API Level"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->d(Ljava/lang/String;)I

    move-result v15

    move v14, v2

    goto :goto_1

    :cond_5
    const-string v9, "max-sdk-version"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v0, "Maximum API Level"

    invoke-virtual {v10, v0}, Lorg/offlineApk/apksigner/OptionsParser;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_6
    const-string v9, "rotation-min-sdk-version"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v1, "Minimum API Level for Rotation"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->d(Ljava/lang/String;)I

    move-result v11

    goto :goto_1

    :cond_7
    const-string v9, "rotation-targets-dev-release"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v25

    goto :goto_1

    :cond_8
    const-string v9, "v1-signing-enabled"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v17

    goto :goto_1

    :cond_9
    const-string v9, "v2-signing-enabled"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v18

    goto :goto_1

    :cond_a
    const-string v9, "v3-signing-enabled"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v19

    goto :goto_1

    :cond_b
    const-string v9, "v4-signing-enabled"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v20

    move/from16 v28, v2

    goto/16 :goto_1

    :cond_c
    const-string v9, "force-stamp-overwrite"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v21

    goto/16 :goto_1

    :cond_d
    const-string v9, "align-file-size"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    move/from16 v22, v2

    goto/16 :goto_1

    :cond_e
    const-string v9, "verity-enabled"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v23

    goto/16 :goto_1

    :cond_f
    const-string v9, "debuggable-apk-permitted"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v24

    goto/16 :goto_1

    :cond_10
    const-string v9, "next-signer"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v5}, Len/c;->k()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Len/c;

    invoke-direct {v5}, Len/c;-><init>()V

    goto/16 :goto_1

    :cond_11
    const-string v9, "ks"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v1, "KeyStore file"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->u(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v9, "ks-key-alias"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v1, "KeyStore key alias"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->v(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    const-string v9, "ks-pass"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v1, "KeyStore password"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const-string v9, "key-pass"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v1, "Key password"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->t(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    const-string v9, "pass-encoding"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v1, "Password character encoding"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Len/b;->g(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v5, v9}, Len/c;->C(Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported password character encoding requested using --pass-encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-string v9, "v1-signer-name"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    const-string v1, "JAR signature file basename"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->D(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    const-string v9, "ks-type"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const-string v1, "KeyStore type"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->A(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    const-string v9, "ks-provider-name"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const-string v1, "JCA KeyStore Provider name"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_19
    const-string v9, "ks-provider-class"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    const-string v1, "JCA KeyStore Provider class name"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->y(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1a
    const-string v9, "ks-provider-arg"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v1, "JCA KeyStore Provider constructor argument"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->x(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1b
    const-string v9, "key"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const-string v1, "Private key file"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1c
    const-string v9, "cert"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v1, "Certificate file"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Len/c;->r(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    const-string v9, "lineage"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    new-instance v1, Ljava/io/File;

    const-string v9, "Lineage File"

    invoke-virtual {v10, v9}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/offlineApk/apksigner/a;->a(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v26

    goto/16 :goto_1

    :cond_1e
    const-string v9, "v"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    const-string v9, "verbose"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto/16 :goto_2

    :cond_1f
    const-string v9, "next-provider"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-static {v8}, Lorg/offlineApk/apksigner/a$b;->a(Lorg/offlineApk/apksigner/a$b;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/offlineApk/apksigner/a$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lorg/offlineApk/apksigner/a$b;-><init>(Lorg/offlineApk/apksigner/a$a;)V

    goto/16 :goto_0

    :cond_20
    const-string v9, "provider-class"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    const-string v1, "JCA Provider class name"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lorg/offlineApk/apksigner/a$b;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_21
    const-string v9, "provider-arg"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    const-string v1, "JCA Provider constructor argument"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lorg/offlineApk/apksigner/a$b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_22
    const-string v9, "provider-pos"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    const-string v1, "JCA Provider position"

    invoke-virtual {v10, v1}, Lorg/offlineApk/apksigner/OptionsParser;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lorg/offlineApk/apksigner/a$b;->c:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_23
    const-string v9, "stamp-signer"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-static {v10}, Lorg/offlineApk/apksigner/a;->j(Lorg/offlineApk/apksigner/OptionsParser;)Len/c;

    move-result-object v6

    move/from16 v29, v2

    goto/16 :goto_1

    :cond_24
    const-string v9, "stamp-lineage"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    new-instance v1, Ljava/io/File;

    const-string v9, "Stamp Lineage File"

    invoke-virtual {v10, v9}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/offlineApk/apksigner/a;->a(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v27

    goto/16 :goto_1

    :cond_25
    const-string v9, "deterministic-dsa-signing"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v30

    goto/16 :goto_1

    :cond_26
    const-string v9, "append-signature"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v31

    goto/16 :goto_1

    :cond_27
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". See --help for supported options."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_2
    invoke-virtual {v10, v2}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v32

    goto/16 :goto_1

    :cond_29
    :goto_3
    invoke-static {v4}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-virtual {v5}, Len/c;->k()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-static {v8}, Lorg/offlineApk/apksigner/a$b;->a(Lorg/offlineApk/apksigner/a$b;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v10}, Lorg/offlineApk/apksigner/OptionsParser;->c()[Ljava/lang/String;

    move-result-object v1

    const-string v4, ")"

    if-eqz v12, :cond_2e

    array-length v5, v1

    if-gtz v5, :cond_2d

    goto :goto_4

    :cond_2d
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected parameter(s) after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v5, 0x0

    array-length v8, v1

    if-lt v8, v2, :cond_3f

    array-length v8, v1

    if-gt v8, v2, :cond_3e

    new-instance v12, Ljava/io/File;

    aget-object v1, v1, v5

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4
    if-eqz v14, :cond_30

    if-gt v15, v0, :cond_2f

    goto :goto_5

    :cond_2f
    new-instance v1, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min API Level ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") > max API Level ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/offlineApk/apksigner/a$b;

    invoke-static {v1}, Lorg/offlineApk/apksigner/a$b;->b(Lorg/offlineApk/apksigner/a$b;)V

    goto :goto_6

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Len/b;

    invoke-direct {v1}, Len/b;-><init>()V

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v9, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Len/c;

    add-int/2addr v9, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signer #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Len/c;->B(Ljava/lang/String;)V

    move/from16 v5, v30

    invoke-static {v4, v1, v5}, Lorg/offlineApk/apksigner/a;->b(Len/c;Len/b;Z)Lcom/android/apksig/ApkSigner$SignerConfig;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_32

    invoke-virtual {v1}, Len/b;->close()V

    return-void

    :cond_32
    :try_start_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v30, v5

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_a

    :cond_33
    move/from16 v5, v30

    if-eqz v29, :cond_34

    const-string v3, "stamp signer"

    invoke-virtual {v6, v3}, Len/c;->B(Ljava/lang/String;)V

    invoke-static {v6, v1, v5}, Lorg/offlineApk/apksigner/a;->b(Len/c;Len/b;Z)Lcom/android/apksig/ApkSigner$SignerConfig;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_35

    invoke-virtual {v1}, Len/b;->close()V

    return-void

    :cond_34
    const/4 v9, 0x0

    :cond_35
    invoke-virtual {v1}, Len/b;->close()V

    if-nez v16, :cond_36

    move-object/from16 v16, v12

    :cond_36
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "apksigner"

    const-string v3, ".apk"

    invoke-static {v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    goto :goto_8

    :cond_37
    move-object/from16 v1, v16

    :goto_8
    new-instance v3, Lcom/android/apksig/ApkSigner$Builder;

    invoke-direct {v3, v0}, Lcom/android/apksig/ApkSigner$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v12}, Lcom/android/apksig/ApkSigner$Builder;->setInputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/apksig/ApkSigner$Builder;->setOutputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v3, v31

    invoke-virtual {v0, v3}, Lcom/android/apksig/ApkSigner$Builder;->setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v3, v17

    invoke-virtual {v0, v3}, Lcom/android/apksig/ApkSigner$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v3, v18

    invoke-virtual {v0, v3}, Lcom/android/apksig/ApkSigner$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v3, v19

    invoke-virtual {v0, v3}, Lcom/android/apksig/ApkSigner$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v3, v20

    invoke-virtual {v0, v3}, Lcom/android/apksig/ApkSigner$Builder;->setV4SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v4, v21

    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setForceSourceStampOverwrite(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v4, v22

    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setAlignFileSize(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v4, v23

    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setVerityEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    if-eqz v3, :cond_38

    if-eqz v28, :cond_38

    move v4, v2

    goto :goto_9

    :cond_38
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setV4ErrorReportingEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v4, v24

    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setDebuggableApkPermitted(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move-object/from16 v4, v26

    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/apksig/ApkSigner$Builder;->setMinSdkVersionForRotation(I)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    move/from16 v4, v25

    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setRotationTargetsDevRelease(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    if-eqz v14, :cond_39

    invoke-virtual {v0, v15}, Lcom/android/apksig/ApkSigner$Builder;->setMinSdkVersion(I)Lcom/android/apksig/ApkSigner$Builder;

    :cond_39
    if-eqz v3, :cond_3a

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".idsig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    invoke-virtual {v0, v3}, Lcom/android/apksig/ApkSigner$Builder;->setV4SignatureOutputFile(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    :cond_3a
    if-eqz v9, :cond_3b

    invoke-virtual {v0, v9}, Lcom/android/apksig/ApkSigner$Builder;->setSourceStampSignerConfig(Lcom/android/apksig/ApkSigner$SignerConfig;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v3

    move-object/from16 v9, v27

    invoke-virtual {v3, v9}, Lcom/android/apksig/ApkSigner$Builder;->setSourceStampSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/ApkSigner$Builder;

    :cond_3b
    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner$Builder;->build()Lcom/android/apksig/ApkSigner;

    move-result-object v0

    :try_start_3
    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner;->sign()V
    :try_end_3
    .catch Lcom/android/apksig/apk/MinSdkVersionException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    :cond_3c
    if-eqz v32, :cond_3d

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Signed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3d
    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    new-instance v0, Lcom/android/apksig/apk/MinSdkVersionException;

    const-string v2, "Failed to determine APK\'s minimum supported platform version. Use --min-sdk-version to override"

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_a
    :try_start_4
    invoke-virtual {v1}, Len/b;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v2

    :cond_3e
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected parameter(s) after input APK ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v1, "Missing input APK"

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v1, "At least one signer must be specified"

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m([Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    array-length v1, v0

    const-string v2, "help_verify.txt"

    if-nez v1, :cond_0

    invoke-static {v2}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lorg/offlineApk/apksigner/OptionsParser;

    invoke-direct {v1, v0}, Lorg/offlineApk/apksigner/OptionsParser;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x0

    const v5, 0x7fffffff

    move-object v6, v0

    move-object v7, v6

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v5, v7

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/offlineApk/apksigner/OptionsParser;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Lorg/offlineApk/apksigner/OptionsParser;->a()Ljava/lang/String;

    move-result-object v5

    const-string v4, "min-sdk-version"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "Mininimum API Level"

    invoke-virtual {v1, v3}, Lorg/offlineApk/apksigner/OptionsParser;->d(Ljava/lang/String;)I

    move-result v11

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "max-sdk-version"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "Maximum API Level"

    invoke-virtual {v1, v3}, Lorg/offlineApk/apksigner/OptionsParser;->d(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "print-certs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v12

    goto :goto_0

    :cond_4
    const-string v4, "print-certs-pem"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_1

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_5
    const-string v4, "v"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "verbose"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_7
    const-string v4, "Werr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v15

    goto :goto_0

    :cond_8
    const-string v4, "help"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    const-string v4, "v4-signature-file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v6, Ljava/io/File;

    const-string v3, "Input V4 Signature File"

    invoke-virtual {v1, v3}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v4, "in"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v0, Ljava/io/File;

    const-string v3, "Input APK file"

    invoke-virtual {v1, v3}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "verify-source-stamp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v13

    goto/16 :goto_0

    :cond_c
    const-string v4, "stamp-cert-digest"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "Expected source stamp certificate digest"

    invoke-virtual {v1, v3}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". See --help for supported options."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_1
    invoke-static {v2}, Lorg/offlineApk/apksigner/a;->i(Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-virtual {v1, v3}, Lorg/offlineApk/apksigner/OptionsParser;->b(Z)Z

    move-result v14

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1}, Lorg/offlineApk/apksigner/OptionsParser;->c()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    const-string v3, ": "

    if-eqz v0, :cond_11

    array-length v4, v1

    if-gtz v4, :cond_10

    const/4 v4, 0x0

    goto :goto_3

    :cond_10
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected parameter(s) after "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v4, 0x0

    array-length v0, v1

    const/4 v5, 0x1

    if-lt v0, v5, :cond_34

    array-length v0, v1

    if-gt v0, v5, :cond_33

    new-instance v0, Ljava/io/File;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    if-eqz v9, :cond_13

    if-eqz v10, :cond_13

    if-gt v11, v8, :cond_12

    goto :goto_4

    :cond_12
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min API Level ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") > max API Level ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_4
    new-instance v1, Lcom/android/apksig/ApkVerifier$Builder;

    invoke-direct {v1, v0}, Lcom/android/apksig/ApkVerifier$Builder;-><init>(Ljava/io/File;)V

    if-eqz v9, :cond_14

    invoke-virtual {v1, v11}, Lcom/android/apksig/ApkVerifier$Builder;->setMinCheckedPlatformVersion(I)Lcom/android/apksig/ApkVerifier$Builder;

    :cond_14
    if-eqz v10, :cond_15

    invoke-virtual {v1, v8}, Lcom/android/apksig/ApkVerifier$Builder;->setMaxCheckedPlatformVersion(I)Lcom/android/apksig/ApkVerifier$Builder;

    :cond_15
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v1, v6}, Lcom/android/apksig/ApkVerifier$Builder;->setV4SignatureFile(Ljava/io/File;)Lcom/android/apksig/ApkVerifier$Builder;

    goto :goto_5

    :cond_16
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V4 signature file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_5
    invoke-virtual {v1}, Lcom/android/apksig/ApkVerifier$Builder;->build()Lcom/android/apksig/ApkVerifier;

    move-result-object v0

    if-eqz v13, :cond_18

    :try_start_0
    invoke-virtual {v0, v7}, Lcom/android/apksig/ApkVerifier;->verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_1c

    :cond_18
    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier;->verify()Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/apksig/apk/MinSdkVersionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->isVerified()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getSourceStampInfo()Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    move-result-object v5

    const-string v6, ", maxSdkVersion="

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getSignerCertificates()Ljava/util/List;

    move-result-object v7

    if-eqz v14, :cond_19

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Verifies"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Verified using v1 scheme (JAR signing): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Verified using v2 scheme (APK Signature Scheme v2): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Verified using v3 scheme (APK Signature Scheme v3): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Verified using v3.1 scheme (APK Signature Scheme v3.1): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Verified using v4 scheme (APK Signature Scheme v4): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV4Scheme()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Verified for SourceStamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->isSourceStampVerified()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v13, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of signers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_19
    if-eqz v12, :cond_1f

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getV31SchemeSigners()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "Signer (minSdkVersion="

    if-eqz v8, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v8}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getMinSdkVersion()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getRotationTargetsDevRelease()Z

    move-result v9

    if-eqz v9, :cond_1a

    const-string v9, " (dev release=true)"

    goto :goto_8

    :cond_1a
    const-string v9, ""

    :goto_8
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getMaxSdkVersion()I

    move-result v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v11, v16

    invoke-static {v10, v8, v14, v11}, Lorg/offlineApk/apksigner/a;->h(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZZ)V

    goto :goto_7

    :cond_1b
    move/from16 v11, v16

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v8}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getMinSdkVersion()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getMaxSdkVersion()I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v14, v11}, Lorg/offlineApk/apksigner/a;->h(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZZ)V

    goto :goto_9

    :cond_1c
    move/from16 v11, v16

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v4

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    const/4 v10, 0x1

    add-int/2addr v8, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Signer #"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v14, v11}, Lorg/offlineApk/apksigner/a;->h(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZZ)V

    goto :goto_a

    :cond_1d
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    const-string v8, "Source Stamp Signer"

    invoke-static {v7, v8, v14, v11}, Lorg/offlineApk/apksigner/a;->h(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZZ)V

    goto :goto_b

    :cond_1e
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "DOES NOT VERIFY"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f
    :goto_b
    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getErrors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_20
    if-eqz v15, :cond_21

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_d

    :cond_21
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_d
    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getWarnings()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_e

    :cond_22
    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getErrors()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p0, v4

    const-string v4, "ERROR: JAR signer "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move/from16 v4, p0

    goto :goto_10

    :cond_23
    move/from16 p0, v4

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v9, p0

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING: JAR signer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_11

    :cond_24
    move v4, v9

    goto :goto_f

    :cond_25
    move/from16 p0, v4

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v8, p0

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "signer #"

    if-eqz v9, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getIndex()I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getErrors()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v4

    const-string v4, "ERROR: APK Signature Scheme v2 "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v4, p0

    goto :goto_13

    :cond_26
    move-object/from16 p0, v4

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WARNING: APK Signature Scheme v2 "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_14

    :cond_27
    move-object/from16 v4, p0

    goto/16 :goto_12

    :cond_28
    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getIndex()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getErrors()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v8

    const-string v8, "ERROR: APK Signature Scheme v3 "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v4, p0

    move/from16 v8, v16

    goto :goto_16

    :cond_29
    move-object/from16 p0, v4

    move/from16 v16, v8

    invoke-virtual {v9}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING: APK Signature Scheme v3 "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_17

    :cond_2a
    move-object/from16 v4, p0

    goto/16 :goto_15

    :cond_2b
    move/from16 v16, v8

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result;->getV31SchemeSigners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getIndex()I

    move-result v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "(minSdkVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getMinSdkVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getMaxSdkVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getErrors()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERROR: APK Signature Scheme v3.1 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_2d
    invoke-virtual {v4}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING: APK Signature Scheme v3.1 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    goto :goto_19

    :cond_2e
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR: SourceStamp: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1a

    :cond_2f
    invoke-virtual {v5}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getWarnings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: SourceStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1b

    :cond_30
    if-nez v1, :cond_31

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_31
    const/4 v0, 0x1

    if-eqz v15, :cond_32

    if-eqz v16, :cond_32

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_32
    return-void

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    new-instance v1, Lcom/android/apksig/apk/MinSdkVersionException;

    const-string v2, "Failed to determine APK\'s minimum supported platform version. Use --min-sdk-version to override"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_33
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected parameter(s) after APK ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Lorg/offlineApk/apksigner/ParameterException;

    const-string v1, "Missing APK"

    invoke-direct {v0, v1}, Lorg/offlineApk/apksigner/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
