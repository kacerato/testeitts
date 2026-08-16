.class public final enum Lcom/android/apksig/internal/apk/SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/apksig/internal/apk/SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum DETDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PSS_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PSS_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;


# instance fields
.field private final mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field private final mId:I

.field private final mJcaKeyAlgorithm:Ljava/lang/String;

.field private final mJcaSigAlgMinSdkVersion:I

.field private final mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinSdkVersion:I


# direct methods
.method private static synthetic $values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .locals 11

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v2, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v3, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v4, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v5, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v6, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v7, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DETDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v8, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v10, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    filled-new-array/range {v0 .. v10}, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 24

    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v10, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    new-instance v6, Ljava/security/spec/PSSParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x20

    const/4 v5, 0x1

    const-string v1, "SHA-256"

    const-string v2, "MGF1"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA256withRSA/PSS"

    invoke-static {v0, v6}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v6

    const/16 v7, 0x18

    const/16 v8, 0x17

    const-string v1, "RSA_PSS_WITH_SHA256"

    const/4 v2, 0x0

    const/16 v3, 0x101

    const-string v5, "RSA"

    move-object v0, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v20, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    new-instance v7, Ljava/security/spec/PSSParameterSpec;

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x40

    const/4 v6, 0x1

    const-string v2, "SHA-512"

    const-string v3, "MGF1"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v1, "SHA512withRSA/PSS"

    invoke-static {v1, v7}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v17

    const/16 v18, 0x18

    const/16 v19, 0x17

    const-string v12, "RSA_PSS_WITH_SHA512"

    const/4 v13, 0x1

    const/16 v14, 0x102

    const-string v16, "RSA"

    move-object v11, v0

    move-object/from16 v15, v20

    invoke-direct/range {v11 .. v19}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v11, "SHA256withRSA"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v6

    const/16 v7, 0x18

    const/4 v8, 0x1

    const-string v1, "RSA_PKCS1_V1_5_WITH_SHA256"

    const/4 v2, 0x2

    const/16 v3, 0x103

    const-string v5, "RSA"

    move-object v0, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v1, "SHA512withRSA"

    invoke-static {v1, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v7

    const/16 v8, 0x18

    const/4 v9, 0x1

    const-string v2, "RSA_PKCS1_V1_5_WITH_SHA512"

    const/4 v3, 0x3

    const/16 v4, 0x104

    const-string v6, "RSA"

    move-object v1, v0

    move-object/from16 v5, v20

    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v13, "SHA256withECDSA"

    invoke-static {v13, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v6

    const/16 v7, 0x18

    const/16 v8, 0xb

    const-string v1, "ECDSA_WITH_SHA256"

    const/4 v2, 0x4

    const/16 v3, 0x201

    const-string v5, "EC"

    move-object v0, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v1, "SHA512withECDSA"

    invoke-static {v1, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v7

    const/16 v8, 0x18

    const/16 v9, 0xb

    const-string v2, "ECDSA_WITH_SHA512"

    const/4 v3, 0x5

    const/16 v4, 0x202

    const-string v6, "EC"

    move-object v1, v0

    move-object/from16 v5, v20

    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v14, "SHA256withDSA"

    invoke-static {v14, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v6

    const/16 v7, 0x18

    const/4 v8, 0x1

    const-string v1, "DSA_WITH_SHA256"

    const/4 v2, 0x6

    const/16 v3, 0x301

    const-string v5, "DSA"

    move-object v0, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v0, "SHA256withDetDSA"

    invoke-static {v0, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v6

    const-string v1, "DETDSA_WITH_SHA256"

    const/4 v2, 0x7

    const-string v5, "DSA"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DETDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    sget-object v10, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-static {v11, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v21

    const/16 v22, 0x1c

    const/16 v23, 0x1

    const-string v16, "VERITY_RSA_PKCS1_V1_5_WITH_SHA256"

    const/16 v17, 0x8

    const/16 v18, 0x421

    const-string v20, "RSA"

    move-object v15, v0

    move-object/from16 v19, v10

    invoke-direct/range {v15 .. v23}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {v13, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v7

    const/16 v8, 0x1c

    const/16 v9, 0xb

    const-string v2, "VERITY_ECDSA_WITH_SHA256"

    const/16 v3, 0x9

    const/16 v4, 0x423

    const-string v6, "EC"

    move-object v1, v0

    move-object v5, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {v14, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v7

    const/4 v9, 0x1

    const-string v2, "VERITY_DSA_WITH_SHA256"

    const/16 v3, 0xa

    const/16 v4, 0x425

    const-string v6, "DSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->$values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "Ljava/lang/String;",
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mId:I

    iput-object p4, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    iput-object p5, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaKeyAlgorithm:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;

    iput p7, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mMinSdkVersion:I

    iput p8, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSigAlgMinSdkVersion:I

    return-void
.end method

.method public static findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .locals 5

    invoke-static {}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .locals 1

    const-class v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .locals 1

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mId:I

    return v0
.end method

.method public getJcaKeyAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaKeyAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getJcaSigAlgMinSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSigAlgMinSdkVersion:I

    return v0
.end method

.method public getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;

    return-object v0
.end method

.method public getMinSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mMinSdkVersion:I

    return v0
.end method
