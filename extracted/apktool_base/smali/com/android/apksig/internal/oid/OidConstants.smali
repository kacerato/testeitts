.class public Lcom/android/apksig/internal/oid/OidConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/oid/OidConstants$OidToUserFriendlyNameMapper;
    }
.end annotation


# static fields
.field public static final OID_DIGEST_MD5:Ljava/lang/String; = "1.2.840.113549.2.5"

.field public static final OID_DIGEST_SHA1:Ljava/lang/String; = "1.3.14.3.2.26"

.field public static final OID_DIGEST_SHA224:Ljava/lang/String; = "2.16.840.1.101.3.4.2.4"

.field public static final OID_DIGEST_SHA256:Ljava/lang/String; = "2.16.840.1.101.3.4.2.1"

.field public static final OID_DIGEST_SHA384:Ljava/lang/String; = "2.16.840.1.101.3.4.2.2"

.field public static final OID_DIGEST_SHA512:Ljava/lang/String; = "2.16.840.1.101.3.4.2.3"

.field public static final OID_SIG_DSA:Ljava/lang/String; = "1.2.840.10040.4.1"

.field public static final OID_SIG_EC_PUBLIC_KEY:Ljava/lang/String; = "1.2.840.10045.2.1"

.field public static final OID_SIG_MD5_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.4"

.field public static final OID_SIG_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.1"

.field public static final OID_SIG_SHA1_WITH_DSA:Ljava/lang/String; = "1.2.840.10040.4.3"

.field public static final OID_SIG_SHA1_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.1"

.field public static final OID_SIG_SHA1_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.5"

.field public static final OID_SIG_SHA224_WITH_DSA:Ljava/lang/String; = "2.16.840.1.101.3.4.3.1"

.field public static final OID_SIG_SHA224_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.3.1"

.field public static final OID_SIG_SHA224_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.14"

.field public static final OID_SIG_SHA256_WITH_DSA:Ljava/lang/String; = "2.16.840.1.101.3.4.3.2"

.field public static final OID_SIG_SHA256_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.3.2"

.field public static final OID_SIG_SHA256_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.11"

.field public static final OID_SIG_SHA384_WITH_DSA:Ljava/lang/String; = "2.16.840.1.101.3.4.3.3"

.field public static final OID_SIG_SHA384_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.3.3"

.field public static final OID_SIG_SHA384_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.12"

.field public static final OID_SIG_SHA512_WITH_DSA:Ljava/lang/String; = "2.16.840.1.101.3.4.3.4"

.field public static final OID_SIG_SHA512_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.3.4"

.field public static final OID_SIG_SHA512_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.13"

.field public static final OID_TO_JCA_DIGEST_ALG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OID_TO_JCA_SIGNATURE_ALG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_SIG_ALG_OIDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/util/InclusiveIntRange;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/oid/OidConstants;->SUPPORTED_SIG_ALG_OIDS:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v1

    filled-new-array {v1}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v1

    const-string v2, "1.2.840.113549.2.5"

    const-string v3, "1.2.840.113549.1.1.1"

    invoke-static {v2, v3, v1}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v1

    const/16 v3, 0x15

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v4

    filled-new-array {v1, v4}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v1

    const-string v4, "1.2.840.113549.1.1.4"

    invoke-static {v2, v4, v1}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v1, 0x17

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v6, "1.2.840.113549.1.1.5"

    invoke-static {v2, v6, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v7, "1.2.840.113549.1.1.14"

    invoke-static {v2, v7, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v8, "1.2.840.113549.1.1.11"

    invoke-static {v2, v8, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v9, "1.2.840.113549.1.1.12"

    invoke-static {v2, v9, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v10, "1.2.840.113549.1.1.13"

    invoke-static {v2, v10, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v11, "1.3.14.3.2.26"

    const-string v12, "1.2.840.113549.1.1.1"

    invoke-static {v11, v12, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v11, v4, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v11, v6, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v11, v7, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v11, v8, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v11, v9, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v11, v10, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v12

    filled-new-array {v5, v12}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v12, "2.16.840.1.101.3.4.2.4"

    const-string v13, "1.2.840.113549.1.1.1"

    invoke-static {v12, v13, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v12, v4, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v12, v6, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v13

    filled-new-array {v5, v13}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v12, v7, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v12, v8, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v12, v9, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v12, v10, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const/16 v13, 0x12

    invoke-static {v13}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v14

    filled-new-array {v5, v14}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v14, "2.16.840.1.101.3.4.2.1"

    const-string v15, "1.2.840.113549.1.1.1"

    invoke-static {v14, v15, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v14, v4, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v14, v6, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v14, v7, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v13}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v15

    filled-new-array {v5, v15}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v14, v8, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v14, v9, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    invoke-static {v14, v10, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v13}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v5

    const-string v15, "2.16.840.1.101.3.4.2.2"

    const-string v0, "1.2.840.113549.1.1.1"

    invoke-static {v15, v0, v5}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v15, v4, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v15, v6, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v15, v7, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v15, v8, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v15, v9, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v15, v10, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v13}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v5, "2.16.840.1.101.3.4.2.3"

    const-string v13, "1.2.840.113549.1.1.1"

    invoke-static {v5, v13, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v5, v7, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v5, v8, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v5, v9, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v5, v10, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v13, "1.2.840.10040.4.3"

    invoke-static {v2, v13, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    move-object/from16 v17, v10

    const-string v10, "2.16.840.1.101.3.4.3.1"

    invoke-static {v2, v10, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v1, "2.16.840.1.101.3.4.3.2"

    invoke-static {v2, v1, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v3, "1.2.840.10040.4.1"

    invoke-static {v11, v3, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-static {v11, v13, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v0, 0x15

    const/16 v3, 0x17

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v16

    move-object/from16 v19, v9

    filled-new-array/range {v16 .. v16}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v9

    invoke-static {v11, v10, v9}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v9

    filled-new-array {v9}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v9

    invoke-static {v11, v1, v9}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v9, 0x16

    invoke-static {v9}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v9

    filled-new-array {v9}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v9

    move-object/from16 v20, v8

    const-string v8, "1.2.840.10040.4.1"

    invoke-static {v12, v8, v9}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v12, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v12, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v12, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v8, 0x16

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v9, "1.2.840.10040.4.1"

    invoke-static {v14, v9, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v14, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v14, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v14, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v15, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v15, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v15, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v5, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v5, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    invoke-static {v5, v1, v3}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v9, "1.2.840.10045.2.1"

    invoke-static {v11, v9, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v8, "1.2.840.10045.2.1"

    invoke-static {v12, v8, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v8, "1.2.840.10045.2.1"

    invoke-static {v14, v8, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v8, "1.2.840.10045.2.1"

    invoke-static {v15, v8, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v3, "1.2.840.10045.2.1"

    invoke-static {v5, v3, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v0, 0x15

    const/16 v3, 0x17

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v9, "1.2.840.10045.4.1"

    invoke-static {v2, v9, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    move-object/from16 v16, v1

    const-string v1, "1.2.840.10045.4.3.1"

    invoke-static {v2, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    move-object/from16 v18, v10

    const-string v10, "1.2.840.10045.4.3.2"

    invoke-static {v2, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    move-object/from16 v21, v13

    const-string v13, "1.2.840.10045.4.3.3"

    invoke-static {v2, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.4"

    invoke-static {v2, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const/16 v8, 0x12

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v11, v9, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v11, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v11, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.3"

    invoke-static {v11, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.4"

    invoke-static {v11, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v12, v9, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v12, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v12, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.3"

    invoke-static {v12, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.4"

    invoke-static {v12, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v14, v9, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v14, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v14, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.3"

    invoke-static {v14, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.4"

    invoke-static {v14, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v15, v9, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v15, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v15, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.3"

    invoke-static {v15, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    const-string v13, "1.2.840.10045.4.3.4"

    invoke-static {v15, v13, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v5, v9, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v5, v1, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    filled-new-array {v8}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v8

    invoke-static {v5, v10, v8}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    filled-new-array {v3}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    const-string v8, "1.2.840.10045.4.3.3"

    invoke-static {v5, v8, v3}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    invoke-static {v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    const-string v3, "1.2.840.10045.4.3.4"

    invoke-static {v5, v3, v0}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/oid/OidConstants;->OID_TO_JCA_DIGEST_ALG:Ljava/util/Map;

    const-string v3, "MD5"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-1"

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-224"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-256"

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-384"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-512"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/oid/OidConstants;->OID_TO_JCA_SIGNATURE_ALG:Ljava/util/Map;

    const-string v2, "MD5withRSA"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withRSA"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA224withRSA"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA256withRSA"

    move-object/from16 v3, v20

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA384withRSA"

    move-object/from16 v3, v19

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA512withRSA"

    move-object/from16 v3, v17

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withDSA"

    move-object/from16 v3, v21

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA224withDSA"

    move-object/from16 v3, v18

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA256withDSA"

    move-object/from16 v3, v16

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withECDSA"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA224withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA256withECDSA"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10045.4.3.3"

    const-string v2, "SHA384withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10045.4.3.4"

    const-string v2, "SHA512withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V
    .locals 2

    sget-object v0, Lcom/android/apksig/internal/oid/OidConstants;->SUPPORTED_SIG_ALG_OIDS:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "with"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSigAlgSupportedApiLevels(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/util/InclusiveIntRange;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/apksig/internal/oid/OidConstants;->SUPPORTED_SIG_ALG_OIDS:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "with"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
