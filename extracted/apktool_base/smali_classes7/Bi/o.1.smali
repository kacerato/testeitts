.class public final enum LBi/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LBi/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LBi/o;

.field public static final enum AGREEMENT:LBi/o;

.field public static final enum ANY:LBi/o;

.field public static final enum AUTHENTICATION:LBi/o;

.field public static final enum DECRYPTION:LBi/o;

.field public static final enum ENCRYPTION:LBi/o;

.field public static final enum KEYGEN:LBi/o;

.field public static final enum PRF:LBi/o;

.field public static final enum SIGNING:LBi/o;

.field public static final enum VERIFICATION:LBi/o;

.field public static final enum VERIFYING:LBi/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LBi/o;

    const-string v1, "AGREEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->AGREEMENT:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "ENCRYPTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->ENCRYPTION:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "DECRYPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->DECRYPTION:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "KEYGEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->KEYGEN:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "SIGNING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->SIGNING:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "VERIFYING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->VERIFYING:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "AUTHENTICATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->AUTHENTICATION:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "VERIFICATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->VERIFICATION:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "PRF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->PRF:LBi/o;

    new-instance v0, LBi/o;

    const-string v1, "ANY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LBi/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/o;->ANY:LBi/o;

    invoke-static {}, LBi/o;->a()[LBi/o;

    move-result-object v0

    sput-object v0, LBi/o;->$VALUES:[LBi/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[LBi/o;
    .locals 10

    sget-object v0, LBi/o;->AGREEMENT:LBi/o;

    sget-object v1, LBi/o;->ENCRYPTION:LBi/o;

    sget-object v2, LBi/o;->DECRYPTION:LBi/o;

    sget-object v3, LBi/o;->KEYGEN:LBi/o;

    sget-object v4, LBi/o;->SIGNING:LBi/o;

    sget-object v5, LBi/o;->VERIFYING:LBi/o;

    sget-object v6, LBi/o;->AUTHENTICATION:LBi/o;

    sget-object v7, LBi/o;->VERIFICATION:LBi/o;

    sget-object v8, LBi/o;->PRF:LBi/o;

    sget-object v9, LBi/o;->ANY:LBi/o;

    filled-new-array/range {v0 .. v9}, [LBi/o;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LBi/o;
    .locals 1

    const-class v0, LBi/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LBi/o;

    return-object p0
.end method

.method public static values()[LBi/o;
    .locals 1

    sget-object v0, LBi/o;->$VALUES:[LBi/o;

    invoke-virtual {v0}, [LBi/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBi/o;

    return-object v0
.end method
