.class public final enum LHj/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LHj/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LHj/a$d;

.field public static final enum AES256_CCM:LHj/a$d;

.field public static final enum AES256_KWP:LHj/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHj/a$d;

    const-string v1, "AES256_CCM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LHj/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$d;->AES256_CCM:LHj/a$d;

    new-instance v0, LHj/a$d;

    const-string v1, "AES256_KWP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LHj/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$d;->AES256_KWP:LHj/a$d;

    invoke-static {}, LHj/a$d;->a()[LHj/a$d;

    move-result-object v0

    sput-object v0, LHj/a$d;->$VALUES:[LHj/a$d;

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

.method public static synthetic a()[LHj/a$d;
    .locals 2

    sget-object v0, LHj/a$d;->AES256_CCM:LHj/a$d;

    sget-object v1, LHj/a$d;->AES256_KWP:LHj/a$d;

    filled-new-array {v0, v1}, [LHj/a$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LHj/a$d;
    .locals 1

    const-class v0, LHj/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHj/a$d;

    return-object p0
.end method

.method public static values()[LHj/a$d;
    .locals 1

    sget-object v0, LHj/a$d;->$VALUES:[LHj/a$d;

    invoke-virtual {v0}, [LHj/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHj/a$d;

    return-object v0
.end method
