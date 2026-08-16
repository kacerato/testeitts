.class public final enum LLj/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLj/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLj/a$a;

.field public static final enum Falcon512_ECDSA_P256_SHA256:LLj/a$a;

.field public static final enum Falcon512_ECDSA_brainpoolP256r1_SHA256:LLj/a$a;

.field public static final enum Falcon512_Ed25519_SHA512:LLj/a$a;

.field public static final enum MLDSA44_ECDSA_P256_SHA256:LLj/a$a;

.field public static final enum MLDSA44_ECDSA_brainpoolP256r1_SHA256:LLj/a$a;

.field public static final enum MLDSA44_Ed25519_SHA512:LLj/a$a;

.field public static final enum MLDSA44_RSA2048_PKCS15_SHA256:LLj/a$a;

.field public static final enum MLDSA44_RSA2048_PSS_SHA256:LLj/a$a;

.field public static final enum MLDSA65_ECDSA_P256_SHA512:LLj/a$a;

.field public static final enum MLDSA65_ECDSA_brainpoolP256r1_SHA512:LLj/a$a;

.field public static final enum MLDSA65_Ed25519_SHA512:LLj/a$a;

.field public static final enum MLDSA65_RSA3072_PKCS15_SHA512:LLj/a$a;

.field public static final enum MLDSA65_RSA3072_PSS_SHA512:LLj/a$a;

.field public static final enum MLDSA87_ECDSA_P384_SHA512:LLj/a$a;

.field public static final enum MLDSA87_ECDSA_brainpoolP384r1_SHA512:LLj/a$a;

.field public static final enum MLDSA87_Ed448_SHA512:LLj/a$a;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LLj/a$a;

    const/4 v1, 0x0

    const-string v2, "MLDSA44-RSA2048-PSS-SHA256"

    const-string v3, "MLDSA44_RSA2048_PSS_SHA256"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA44_RSA2048_PSS_SHA256:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/4 v1, 0x1

    const-string v2, "MLDSA44-RSA2048-PKCS15-SHA256"

    const-string v3, "MLDSA44_RSA2048_PKCS15_SHA256"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA44_RSA2048_PKCS15_SHA256:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/4 v1, 0x2

    const-string v2, "MLDSA44-Ed25519-SHA512"

    const-string v3, "MLDSA44_Ed25519_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA44_Ed25519_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/4 v1, 0x3

    const-string v2, "MLDSA44-ECDSA-P256-SHA256"

    const-string v3, "MLDSA44_ECDSA_P256_SHA256"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA44_ECDSA_P256_SHA256:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/4 v1, 0x4

    const-string v2, "MLDSA44-ECDSA-brainpoolP256r1-SHA256"

    const-string v3, "MLDSA44_ECDSA_brainpoolP256r1_SHA256"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA44_ECDSA_brainpoolP256r1_SHA256:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/4 v1, 0x5

    const-string v2, "MLDSA65-RSA3072-PSS-SHA512"

    const-string v3, "MLDSA65_RSA3072_PSS_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA65_RSA3072_PSS_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/4 v1, 0x6

    const-string v2, "MLDSA65-RSA3072-PKCS15-SHA512"

    const-string v3, "MLDSA65_RSA3072_PKCS15_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA65_RSA3072_PKCS15_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/4 v1, 0x7

    const-string v2, "MLDSA65-ECDSA-brainpoolP256r1-SHA512"

    const-string v3, "MLDSA65_ECDSA_brainpoolP256r1_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA65_ECDSA_brainpoolP256r1_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/16 v1, 0x8

    const-string v2, "MLDSA65-ECDSA-P256-SHA512"

    const-string v3, "MLDSA65_ECDSA_P256_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA65_ECDSA_P256_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/16 v1, 0x9

    const-string v2, "MLDSA65-Ed25519-SHA512"

    const-string v3, "MLDSA65_Ed25519_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA65_Ed25519_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/16 v1, 0xa

    const-string v2, "MLDSA87-ECDSA-P384-SHA512"

    const-string v3, "MLDSA87_ECDSA_P384_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA87_ECDSA_P384_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/16 v1, 0xb

    const-string v2, "MLDSA87-ECDSA-brainpoolP384r1-SHA512"

    const-string v3, "MLDSA87_ECDSA_brainpoolP384r1_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA87_ECDSA_brainpoolP384r1_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/16 v1, 0xc

    const-string v2, "MLDSA87-Ed448-SHA512"

    const-string v3, "MLDSA87_Ed448_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->MLDSA87_Ed448_SHA512:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/16 v1, 0xd

    const-string v2, "Falcon512-ECDSA-P256-SHA256"

    const-string v3, "Falcon512_ECDSA_P256_SHA256"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->Falcon512_ECDSA_P256_SHA256:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/16 v1, 0xe

    const-string v2, "Falcon512-ECDSA-brainpoolP256r1-SHA256"

    const-string v3, "Falcon512_ECDSA_brainpoolP256r1_SHA256"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->Falcon512_ECDSA_brainpoolP256r1_SHA256:LLj/a$a;

    new-instance v0, LLj/a$a;

    const/16 v1, 0xf

    const-string v2, "Falcon512-Ed25519-SHA512"

    const-string v3, "Falcon512_Ed25519_SHA512"

    invoke-direct {v0, v3, v1, v2}, LLj/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LLj/a$a;->Falcon512_Ed25519_SHA512:LLj/a$a;

    invoke-static {}, LLj/a$a;->a()[LLj/a$a;

    move-result-object v0

    sput-object v0, LLj/a$a;->$VALUES:[LLj/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LLj/a$a;->id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[LLj/a$a;
    .locals 16

    sget-object v0, LLj/a$a;->MLDSA44_RSA2048_PSS_SHA256:LLj/a$a;

    sget-object v1, LLj/a$a;->MLDSA44_RSA2048_PKCS15_SHA256:LLj/a$a;

    sget-object v2, LLj/a$a;->MLDSA44_Ed25519_SHA512:LLj/a$a;

    sget-object v3, LLj/a$a;->MLDSA44_ECDSA_P256_SHA256:LLj/a$a;

    sget-object v4, LLj/a$a;->MLDSA44_ECDSA_brainpoolP256r1_SHA256:LLj/a$a;

    sget-object v5, LLj/a$a;->MLDSA65_RSA3072_PSS_SHA512:LLj/a$a;

    sget-object v6, LLj/a$a;->MLDSA65_RSA3072_PKCS15_SHA512:LLj/a$a;

    sget-object v7, LLj/a$a;->MLDSA65_ECDSA_brainpoolP256r1_SHA512:LLj/a$a;

    sget-object v8, LLj/a$a;->MLDSA65_ECDSA_P256_SHA512:LLj/a$a;

    sget-object v9, LLj/a$a;->MLDSA65_Ed25519_SHA512:LLj/a$a;

    sget-object v10, LLj/a$a;->MLDSA87_ECDSA_P384_SHA512:LLj/a$a;

    sget-object v11, LLj/a$a;->MLDSA87_ECDSA_brainpoolP384r1_SHA512:LLj/a$a;

    sget-object v12, LLj/a$a;->MLDSA87_Ed448_SHA512:LLj/a$a;

    sget-object v13, LLj/a$a;->Falcon512_ECDSA_P256_SHA256:LLj/a$a;

    sget-object v14, LLj/a$a;->Falcon512_ECDSA_brainpoolP256r1_SHA256:LLj/a$a;

    sget-object v15, LLj/a$a;->Falcon512_Ed25519_SHA512:LLj/a$a;

    filled-new-array/range {v0 .. v15}, [LLj/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLj/a$a;
    .locals 1

    const-class v0, LLj/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLj/a$a;

    return-object p0
.end method

.method public static values()[LLj/a$a;
    .locals 1

    sget-object v0, LLj/a$a;->$VALUES:[LLj/a$a;

    invoke-virtual {v0}, [LLj/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLj/a$a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLj/a$a;->id:Ljava/lang/String;

    return-object v0
.end method
