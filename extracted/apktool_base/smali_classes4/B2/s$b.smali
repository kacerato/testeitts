.class public abstract enum LB2/s$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LB2/v;


# annotations
.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB2/s$b;",
        ">;",
        "LB2/v<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB2/s$b;

.field public static final enum ADLER_32:LB2/s$b;

.field public static final enum CRC_32:LB2/s$b;


# instance fields
.field public final hashFunction:LB2/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LB2/s$b$a;

    const/4 v1, 0x0

    const-string v2, "Hashing.crc32()"

    const-string v3, "CRC_32"

    invoke-direct {v0, v3, v1, v2}, LB2/s$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LB2/s$b;->CRC_32:LB2/s$b;

    new-instance v0, LB2/s$b$b;

    const/4 v1, 0x1

    const-string v2, "Hashing.adler32()"

    const-string v3, "ADLER_32"

    invoke-direct {v0, v3, v1, v2}, LB2/s$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LB2/s$b;->ADLER_32:LB2/s$b;

    invoke-static {}, LB2/s$b;->a()[LB2/s$b;

    move-result-object v0

    sput-object v0, LB2/s$b;->$VALUES:[LB2/s$b;

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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance p1, LB2/i;

    const/16 p2, 0x20

    invoke-direct {p1, p0, p2, p3}, LB2/i;-><init>(LB2/v;ILjava/lang/String;)V

    iput-object p1, p0, LB2/s$b;->hashFunction:LB2/q;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;LB2/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LB2/s$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a()[LB2/s$b;
    .locals 2

    sget-object v0, LB2/s$b;->CRC_32:LB2/s$b;

    sget-object v1, LB2/s$b;->ADLER_32:LB2/s$b;

    filled-new-array {v0, v1}, [LB2/s$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LB2/s$b;
    .locals 1

    const-class v0, LB2/s$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB2/s$b;

    return-object p0
.end method

.method public static values()[LB2/s$b;
    .locals 1

    sget-object v0, LB2/s$b;->$VALUES:[LB2/s$b;

    invoke-virtual {v0}, [LB2/s$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB2/s$b;

    return-object v0
.end method
