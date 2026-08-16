.class public final enum Lorg/bouncycastle/crypto/util/e$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/util/e$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/util/e$c;

.field public static final enum BILATERALU:Lorg/bouncycastle/crypto/util/e$c;

.field public static final enum BILATERALV:Lorg/bouncycastle/crypto/util/e$c;

.field public static final enum UNILATERALU:Lorg/bouncycastle/crypto/util/e$c;

.field public static final enum UNILATERALV:Lorg/bouncycastle/crypto/util/e$c;


# instance fields
.field private final enc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/util/e$c;

    const/4 v1, 0x0

    const-string v2, "KC_1_U"

    const-string v3, "UNILATERALU"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/e$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/e$c;->UNILATERALU:Lorg/bouncycastle/crypto/util/e$c;

    new-instance v0, Lorg/bouncycastle/crypto/util/e$c;

    const/4 v1, 0x1

    const-string v2, "KC_1_V"

    const-string v3, "UNILATERALV"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/e$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/e$c;->UNILATERALV:Lorg/bouncycastle/crypto/util/e$c;

    new-instance v0, Lorg/bouncycastle/crypto/util/e$c;

    const/4 v1, 0x2

    const-string v2, "KC_2_U"

    const-string v3, "BILATERALU"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/e$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/e$c;->BILATERALU:Lorg/bouncycastle/crypto/util/e$c;

    new-instance v0, Lorg/bouncycastle/crypto/util/e$c;

    const/4 v1, 0x3

    const-string v2, "KC_2_V"

    const-string v3, "BILATERALV"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/e$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/e$c;->BILATERALV:Lorg/bouncycastle/crypto/util/e$c;

    invoke-static {}, Lorg/bouncycastle/crypto/util/e$c;->a()[Lorg/bouncycastle/crypto/util/e$c;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/e$c;->$VALUES:[Lorg/bouncycastle/crypto/util/e$c;

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

    iput-object p3, p0, Lorg/bouncycastle/crypto/util/e$c;->enc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lorg/bouncycastle/crypto/util/e$c;
    .locals 4

    sget-object v0, Lorg/bouncycastle/crypto/util/e$c;->UNILATERALU:Lorg/bouncycastle/crypto/util/e$c;

    sget-object v1, Lorg/bouncycastle/crypto/util/e$c;->UNILATERALV:Lorg/bouncycastle/crypto/util/e$c;

    sget-object v2, Lorg/bouncycastle/crypto/util/e$c;->BILATERALU:Lorg/bouncycastle/crypto/util/e$c;

    sget-object v3, Lorg/bouncycastle/crypto/util/e$c;->BILATERALV:Lorg/bouncycastle/crypto/util/e$c;

    filled-new-array {v0, v1, v2, v3}, [Lorg/bouncycastle/crypto/util/e$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/util/e$c;
    .locals 1

    const-class v0, Lorg/bouncycastle/crypto/util/e$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/util/e$c;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/util/e$c;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/util/e$c;->$VALUES:[Lorg/bouncycastle/crypto/util/e$c;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/util/e$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/util/e$c;

    return-object v0
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/e$c;->enc:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
