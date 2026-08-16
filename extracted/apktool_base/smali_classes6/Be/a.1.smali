.class public final enum LBe/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LBe/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LBe/a;

.field public static final enum DROP_LATEST:LBe/a;

.field public static final enum DROP_OLDEST:LBe/a;

.field public static final enum ERROR:LBe/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LBe/a;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LBe/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBe/a;->ERROR:LBe/a;

    new-instance v1, LBe/a;

    const-string v2, "DROP_OLDEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LBe/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LBe/a;->DROP_OLDEST:LBe/a;

    new-instance v2, LBe/a;

    const-string v3, "DROP_LATEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LBe/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LBe/a;->DROP_LATEST:LBe/a;

    filled-new-array {v0, v1, v2}, [LBe/a;

    move-result-object v0

    sput-object v0, LBe/a;->$VALUES:[LBe/a;

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

.method public static valueOf(Ljava/lang/String;)LBe/a;
    .locals 1

    const-class v0, LBe/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LBe/a;

    return-object p0
.end method

.method public static values()[LBe/a;
    .locals 1

    sget-object v0, LBe/a;->$VALUES:[LBe/a;

    invoke-virtual {v0}, [LBe/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBe/a;

    return-object v0
.end method
