.class public final enum LHj/a$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LHj/a$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LHj/a$f;

.field public static final enum SHA3_512withDSA:LHj/a$f;

.field public static final enum SHA3_512withECDSA:LHj/a$f;

.field public static final enum SHA3_512withRSA:LHj/a$f;

.field public static final enum SHA512withDSA:LHj/a$f;

.field public static final enum SHA512withECDSA:LHj/a$f;

.field public static final enum SHA512withRSA:LHj/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHj/a$f;

    const-string v1, "SHA512withDSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LHj/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$f;->SHA512withDSA:LHj/a$f;

    new-instance v0, LHj/a$f;

    const-string v1, "SHA3_512withDSA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LHj/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$f;->SHA3_512withDSA:LHj/a$f;

    new-instance v0, LHj/a$f;

    const-string v1, "SHA512withECDSA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LHj/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$f;->SHA512withECDSA:LHj/a$f;

    new-instance v0, LHj/a$f;

    const-string v1, "SHA3_512withECDSA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LHj/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$f;->SHA3_512withECDSA:LHj/a$f;

    new-instance v0, LHj/a$f;

    const-string v1, "SHA512withRSA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LHj/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$f;->SHA512withRSA:LHj/a$f;

    new-instance v0, LHj/a$f;

    const-string v1, "SHA3_512withRSA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LHj/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$f;->SHA3_512withRSA:LHj/a$f;

    invoke-static {}, LHj/a$f;->a()[LHj/a$f;

    move-result-object v0

    sput-object v0, LHj/a$f;->$VALUES:[LHj/a$f;

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

.method public static synthetic a()[LHj/a$f;
    .locals 6

    sget-object v0, LHj/a$f;->SHA512withDSA:LHj/a$f;

    sget-object v1, LHj/a$f;->SHA3_512withDSA:LHj/a$f;

    sget-object v2, LHj/a$f;->SHA512withECDSA:LHj/a$f;

    sget-object v3, LHj/a$f;->SHA3_512withECDSA:LHj/a$f;

    sget-object v4, LHj/a$f;->SHA512withRSA:LHj/a$f;

    sget-object v5, LHj/a$f;->SHA3_512withRSA:LHj/a$f;

    filled-new-array/range {v0 .. v5}, [LHj/a$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LHj/a$f;
    .locals 1

    const-class v0, LHj/a$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHj/a$f;

    return-object p0
.end method

.method public static values()[LHj/a$f;
    .locals 1

    sget-object v0, LHj/a$f;->$VALUES:[LHj/a$f;

    invoke-virtual {v0}, [LHj/a$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHj/a$f;

    return-object v0
.end method
