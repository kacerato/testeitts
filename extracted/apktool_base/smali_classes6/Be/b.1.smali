.class public final enum LBe/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LBe/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LBe/b;

.field public static final enum BUFFER:LBe/b;

.field public static final enum DROP:LBe/b;

.field public static final enum ERROR:LBe/b;

.field public static final enum LATEST:LBe/b;

.field public static final enum MISSING:LBe/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LBe/b;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LBe/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBe/b;->MISSING:LBe/b;

    new-instance v1, LBe/b;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LBe/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, LBe/b;->ERROR:LBe/b;

    new-instance v2, LBe/b;

    const-string v3, "BUFFER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LBe/b;-><init>(Ljava/lang/String;I)V

    sput-object v2, LBe/b;->BUFFER:LBe/b;

    new-instance v3, LBe/b;

    const-string v4, "DROP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LBe/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, LBe/b;->DROP:LBe/b;

    new-instance v4, LBe/b;

    const-string v5, "LATEST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LBe/b;-><init>(Ljava/lang/String;I)V

    sput-object v4, LBe/b;->LATEST:LBe/b;

    filled-new-array {v0, v1, v2, v3, v4}, [LBe/b;

    move-result-object v0

    sput-object v0, LBe/b;->$VALUES:[LBe/b;

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

.method public static valueOf(Ljava/lang/String;)LBe/b;
    .locals 1

    const-class v0, LBe/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LBe/b;

    return-object p0
.end method

.method public static values()[LBe/b;
    .locals 1

    sget-object v0, LBe/b;->$VALUES:[LBe/b;

    invoke-virtual {v0}, [LBe/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBe/b;

    return-object v0
.end method
