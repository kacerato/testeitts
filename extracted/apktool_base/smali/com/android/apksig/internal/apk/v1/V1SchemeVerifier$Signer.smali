.class Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Signer"
.end annotation


# instance fields
.field private mIgnored:Z

.field private final mName:Ljava/lang/String;

.field private final mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

.field private mSigFileBytes:[B

.field private mSigFileEntryNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

.field private final mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mName:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 5
    iput-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 6
    iput-object p3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;-><init>(Ljava/lang/String;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)V

    return-void
.end method

.method private checkForStrippedApkSignatures(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/util/Map;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "X-Android-APK-Signed"

    invoke-virtual {p1, v0}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_APK_SIG_STRIP_PROTECTION:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$900(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNKNOWN_APK_SIG_SCHEME_ID:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$900(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_APK_SIG_REFERENCED:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static getCertificateChain(Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    move-object p1, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v3, :cond_0

    :cond_3
    return-object p0
.end method

.method private verifyManifestDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;Z[BII)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p2, "-Digest"

    goto :goto_0

    :cond_0
    const-string p2, "-Digest-Manifest"

    :goto_0
    invoke-static {p1, p2, p4, p5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_MANIFEST_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$900(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return p4

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v0, p5, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->access$1000(Ljava/lang/String;[B)[B

    move-result-object v1

    iget-object p5, p5, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-static {p5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_ZIP_ENTRY_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p5

    const-string v4, "META-INF/MANIFEST.MF"

    filled-new-array {v4, v0, v3, v1, p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p2, v2, p5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$900(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    move p2, p4

    goto :goto_1

    :cond_3
    return p2
.end method

.method private verifyManifestIndividualSectionDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;ZLcom/android/apksig/internal/jar/ManifestParser$Section;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Digest"

    invoke-static {p1, v1, p5, p6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getStartOffset()I

    move-result p5

    invoke-virtual {p3}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getSizeBytes()I

    move-result p3

    const/4 p6, 0x2

    if-eqz p2, :cond_1

    add-int p2, p5, p3

    add-int/lit8 v1, p2, -0x1

    aget-byte v1, p4, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    sub-int/2addr p2, p6

    aget-byte p2, p4, p2

    if-ne p2, v2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v1, p2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-static {v1, p4, p5, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->access$1100(Ljava/lang/String;[BII)[B

    move-result-object v2

    iget-object p2, p2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MANIFEST_SECTION_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, v1, v5, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, v4, p2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private verifyManifestMainSectionDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;Lcom/android/apksig/internal/jar/ManifestParser$Section;[BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "-Digest-Manifest-Main-Attributes"

    invoke-static {p1, v0, p4, p5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object p5, p4, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getStartOffset()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getSizeBytes()I

    move-result v1

    invoke-static {p5, p3, v0, v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->access$1100(Ljava/lang/String;[BII)[B

    move-result-object v0

    iget-object p4, p4, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-static {p4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MANIFEST_MAIN_SECTION_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p5, v3, v0, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v1, v2, p4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private verifySignerInfoAgainstSigFile(Lcom/android/apksig/internal/pkcs7/SignedData;Ljava/util/Collection;Lcom/android/apksig/internal/pkcs7/SignerInfo;[BII)Ljava/security/cert/X509Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/pkcs7/SignedData;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lcom/android/apksig/internal/pkcs7/SignerInfo;",
            "[BII)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->digestAlgorithm:Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;

    iget-object v0, v0, Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signatureAlgorithm:Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;

    iget-object v1, v1, Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-static {p5, p6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/android/apksig/internal/oid/OidConstants;->getSigAlgSupportedApiLevels(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getValuesNotIn(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/android/apksig/internal/oid/OidConstants$OidToUserFriendlyNameMapper;->getUserFriendlyNameForOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p5, v0

    goto :goto_0

    :cond_0
    move-object p5, p1

    :goto_0
    invoke-static {v1}, Lcom/android/apksig/internal/oid/OidConstants$OidToUserFriendlyNameMapper;->getUserFriendlyNameForOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p6, v1

    goto :goto_1

    :cond_1
    move-object p6, p1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-lez p4, :cond_2

    const-string p4, ", "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMin()I

    move-result p4

    invoke-virtual {p3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMax()I

    move-result v2

    if-ne p4, v2, :cond_3

    invoke-virtual {p3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMin()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMax()I

    move-result p4

    const v2, 0x7fffffff

    if-ne p4, v2, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMin()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "+"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMin()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMax()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNSUPPORTED_SIG_ALG:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    move-object p1, p2

    move-object p2, v0

    move-object p3, v1

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v4

    :cond_6
    iget-object v2, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->sid:Lcom/android/apksig/internal/pkcs7/SignerIdentifier;

    invoke-static {p2, v2}, Lcom/android/apksig/internal/x509/Certificate;->findCertificate(Ljava/util/Collection;Lcom/android/apksig/internal/pkcs7/SignerIdentifier;)Ljava/security/cert/X509Certificate;

    move-result-object p2

    if-eqz p2, :cond_13

    invoke-interface {p2}, Ljava/security/cert/X509Extension;->hasUnsupportedCriticalExtension()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    array-length v5, v2

    const/4 v6, 0x0

    if-lt v5, v3, :cond_7

    aget-boolean v5, v2, v6

    if-eqz v5, :cond_7

    move v5, v3

    goto :goto_3

    :cond_7
    move v5, v6

    :goto_3
    array-length v7, v2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_8

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_8

    move v6, v3

    :cond_8
    if-nez v5, :cond_a

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "Signing certificate not authorized for use in digital signatures: keyUsage extension missing digitalSignature and nonRepudiation"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    invoke-static {v0, v1}, Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;->getJcaSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v6

    invoke-interface {v5}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    move-object v2, v1

    :goto_5
    iget-object v1, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signedAttrs:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    if-eqz v1, :cond_10

    const/16 v5, 0x13

    if-lt p5, v5, :cond_f

    :try_start_2
    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object p5

    const-class v1, Lcom/android/apksig/internal/pkcs7/Attribute;

    invoke-static {p5, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseImplicitSetOf(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p5

    new-instance v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;

    invoke-direct {v1, p5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;-><init>(Ljava/util/Collection;)V

    const/16 p5, 0x18

    if-lt p6, p5, :cond_c

    const-string p5, "1.2.840.113549.1.9.3"

    invoke-virtual {v1, p5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;->getSingleObjectIdentifierValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_b

    iget-object p1, p1, Lcom/android/apksig/internal/pkcs7/SignedData;->encapContentInfo:Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;

    iget-object p1, p1, Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return-object v4

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "No Content Type in signed attributes"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string p1, "1.2.840.113549.1.9.4"

    invoke-virtual {v1, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;->getSingleOctetStringValue(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-static {v0}, Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;->getJcaDigestAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p4

    invoke-static {p1, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_2
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p1, :cond_d

    return-object v4

    :cond_d
    iget-object p1, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signedAttrs:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 p4, 0x31

    invoke-virtual {v2, p4}, Ljava/security/Signature;->update(B)V

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, p1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    goto :goto_7

    :cond_e
    :try_start_3
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "No content digest in signed attributes"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_6
    new-instance p2, Ljava/security/SignatureException;

    const-string p3, "Failed to parse signed attributes"

    invoke-direct {p2, p3, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_f
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "APKs with Signed Attributes broken on platforms with API Level < 19"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-virtual {v2, p4}, Ljava/security/Signature;->update([B)V

    :goto_7
    iget-object p1, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signature:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-nez p1, :cond_11

    return-object v4

    :cond_11
    return-object p2

    :catch_2
    throw v2

    :cond_12
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "Signing certificate has unsupported critical extensions"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "Signing certificate referenced in SignerInfo not found in SignedData"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    return-object v0
.end method

.method public getSigFileEntryNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileEntryNames:Ljava/util/Set;

    return-object v0
.end method

.method public getSignatureBlockEntryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureFileEntryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIgnored()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mIgnored:Z

    return v0
.end method

.method public setIgnored()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mIgnored:Z

    return-void
.end method

.method public verifySigBlockAgainstSigFile(Lcom/android/apksig/util/DataSource;JII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "Malformed ZIP entry: "

    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-static {p1, v1, p2, p3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-static {p1, v2, p2, p3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileBytes:[B
    :try_end_1
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-class p2, Lcom/android/apksig/internal/pkcs7/ContentInfo;

    invoke-static {p1, p2}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/pkcs7/ContentInfo;

    const-string p2, "1.2.840.113549.1.7.2"

    iget-object p3, p1, Lcom/android/apksig/internal/pkcs7/ContentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/android/apksig/internal/pkcs7/ContentInfo;->content:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object p1

    const-class p2, Lcom/android/apksig/internal/pkcs7/SignedData;

    invoke-static {p1, p2}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/pkcs7/SignedData;
    :try_end_2
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_2 .. :try_end_2} :catch_4

    iget-object p2, p1, Lcom/android/apksig/internal/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 p2, 0x18

    if-ge p4, p2, :cond_1

    iget-object p2, p1, Lcom/android/apksig/internal/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/apksig/internal/pkcs7/SignerInfo;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/android/apksig/internal/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    move-object v0, p3

    move-object v7, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/apksig/internal/pkcs7/SignerInfo;

    if-nez v0, :cond_2

    :try_start_3
    iget-object v0, p1, Lcom/android/apksig/internal/pkcs7/SignedData;->certificates:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/x509/Certificate;->parseCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v9, v0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_PARSE_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :goto_2
    :try_start_4
    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileBytes:[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v3, v8

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifySignerInfoAgainstSigFile(Lcom/android/apksig/internal/pkcs7/SignedData;Ljava/util/Collection;Lcom/android/apksig/internal/pkcs7/SignerInfo;[BII)Ljava/security/cert/X509Certificate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    move-result v1
    :try_end_4
    .catch Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    move-object v7, v0

    move-object p3, v8

    :cond_4
    move-object v0, v9

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p5

    filled-new-array {p4, p5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :goto_4
    iget-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_PARSE_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_5
    if-nez p3, :cond_6

    iget-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-static {v0, v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getCertificateChain(Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    iget-object p2, p2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->certChain:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    iget-object p2, p2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->certChain:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :catch_4
    move-exception p1

    goto :goto_5

    :cond_7
    :try_start_5
    new-instance p2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported ContentInfo.contentType: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/apksig/internal/pkcs7/ContentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object p3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_PARSE_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :catch_5
    move-exception p1

    new-instance p2, Lcom/android/apksig/apk/ApkFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_6
    move-exception p1

    new-instance p2, Lcom/android/apksig/apk/ApkFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public verifySigFileAgainstManifest([BLcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/from16 v7, p0

    new-instance v6, Lcom/android/apksig/internal/jar/ManifestParser;

    iget-object v0, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileBytes:[B

    invoke-direct {v6, v0}, Lcom/android/apksig/internal/jar/ManifestParser;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/apksig/internal/jar/ManifestParser;->readSection()Lcom/android/apksig/internal/jar/ManifestParser$Section;

    move-result-object v8

    sget-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v8, v0}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_VERSION_ATTR_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v2, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->setIgnored()V

    return-void

    :cond_0
    const/16 v0, 0x18

    move/from16 v9, p7

    if-lt v9, v0, :cond_1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v7, v8, v0, v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->checkForStrippedApkSignatures(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/util/Map;Ljava/util/Set;)V

    iget-object v0, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Created-By"

    invoke-virtual {v8, v0}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    const-string v1, "signtool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    move v0, v10

    goto :goto_0

    :cond_2
    move v0, v11

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_3
    move v12, v11

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v12

    move-object/from16 v3, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifyManifestDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;Z[BII)Z

    move-result v13

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifyManifestMainSectionDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;Lcom/android/apksig/internal/jar/ManifestParser$Section;[BII)V

    :cond_4
    iget-object v0, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v6}, Lcom/android/apksig/internal/jar/ManifestParser;->readAllSections()Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    add-int/2addr v11, v10

    invoke-virtual {v1}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNNNAMED_SIG_FILE_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v2, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->setIgnored()V

    return-void

    :cond_6
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v1, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DUPLICATE_SIG_FILE_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v3, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->setIgnored()V

    return-void

    :cond_7
    if-eqz v13, :cond_8

    move-object/from16 v15, p3

    goto :goto_2

    :cond_8
    move-object/from16 v15, p3

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    if-nez v3, :cond_9

    iget-object v1, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object v3, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->setIgnored()V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    move v2, v12

    move-object/from16 v4, p1

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifyManifestIndividualSectionDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;ZLcom/android/apksig/internal/jar/ManifestParser$Section;[BII)V

    goto :goto_2

    :cond_a
    iput-object v8, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileEntryNames:Ljava/util/Set;

    return-void
.end method
