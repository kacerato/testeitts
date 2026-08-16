.class public final enum LDg/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDg/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDg/a$a;

.field public static final enum CANCELLED:LDg/a$a;

.field public static final enum ERROR:LDg/a$a;

.field public static final enum SUCCESS:LDg/a$a;

.field public static final enum WORK_IN_PROGRESS:LDg/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LDg/a$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDg/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDg/a$a;->SUCCESS:LDg/a$a;

    new-instance v1, LDg/a$a;

    const-string v2, "WORK_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LDg/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LDg/a$a;->WORK_IN_PROGRESS:LDg/a$a;

    new-instance v2, LDg/a$a;

    const-string v3, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LDg/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LDg/a$a;->ERROR:LDg/a$a;

    new-instance v3, LDg/a$a;

    const-string v4, "CANCELLED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LDg/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, LDg/a$a;->CANCELLED:LDg/a$a;

    filled-new-array {v0, v1, v2, v3}, [LDg/a$a;

    move-result-object v0

    sput-object v0, LDg/a$a;->$VALUES:[LDg/a$a;

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

.method public static valueOf(Ljava/lang/String;)LDg/a$a;
    .locals 1

    const-class v0, LDg/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDg/a$a;

    return-object p0
.end method

.method public static values()[LDg/a$a;
    .locals 1

    sget-object v0, LDg/a$a;->$VALUES:[LDg/a$a;

    invoke-virtual {v0}, [LDg/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDg/a$a;

    return-object v0
.end method
