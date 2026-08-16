.class Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Signers"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/apksig/util/DataSource;JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static/range {p0 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signers;->verify(Lcom/android/apksig/util/DataSource;JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    return-void
.end method

.method private static verify(Lcom/android/apksig/util/DataSource;JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/from16 v0, p9

    new-instance v1, Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-direct {v1, v10}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v11, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ".SF"

    const-string v12, "META-INF/"

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    if-nez v11, :cond_2

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v11, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v6, ".RSA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".DSA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".EC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    if-nez v11, :cond_6

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_6
    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    :try_start_0
    invoke-static {v13, v11, v14, v15}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v9
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v5, p4

    invoke-static {v9, v5, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseManifest([BLjava/util/Set;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v5

    invoke-static/range {p9 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    move-result v7

    if-eqz v7, :cond_7

    return-void

    :cond_7
    invoke-virtual {v5}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v24, v7

    check-cast v24, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    invoke-virtual {v5}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Ljava/util/Map;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v19, v10

    check-cast v19, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    if-nez v19, :cond_8

    sget-object v10, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v10, v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$300(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :goto_2
    const/4 v10, 0x1

    goto :goto_1

    :cond_8
    const/16 v7, 0x9

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v7, v5, v3, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V

    new-instance v3, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v21}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;-><init>(Ljava/lang/String;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature block file name does not contain extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    move-object v4, v2

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object v3, v8

    move/from16 v8, p7

    move-object v10, v9

    move/from16 v9, p8

    invoke-virtual/range {v4 .. v9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifySigBlockAgainstSigFile(Lcom/android/apksig/util/DataSource;JII)V

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object v8, v3

    move-object v9, v10

    goto :goto_3

    :cond_d
    move-object v3, v8

    move-object v10, v9

    invoke-static/range {p9 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p8

    invoke-virtual/range {v16 .. v23}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifySigFileAgainstManifest([BLcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;II)V

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->isIgnored()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->ignoredSigners:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    invoke-static/range {p9 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_13
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, v25

    move-object v6, v9

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v10, v9

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->access$700(Lcom/android/apksig/util/DataSource;JLjava/util/Collection;Ljava/util/Map;Ljava/util/List;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Ljava/util/Set;

    move-result-object v1

    invoke-static/range {p9 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    :cond_14
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getSignatureBlockEntryName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getSignatureFileEntryName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNPROTECTED_ZIP_ENTRY:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v5, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$300(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_17
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_18
    iget-object v4, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->ignoredSigners:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_19
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->verified:Z

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed ZIP entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
