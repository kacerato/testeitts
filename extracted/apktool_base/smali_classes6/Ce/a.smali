.class public final enum LCe/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LCe/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LCe/a;

.field public static final enum ERROR:LCe/a;

.field public static final enum FULL:LCe/a;

.field public static final enum NONE:LCe/a;

.field public static final enum PASS_THROUGH:LCe/a;

.field public static final enum SPECIAL:LCe/a;

.field public static final enum UNBOUNDED_IN:LCe/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LCe/a;

    const-string v1, "PASS_THROUGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LCe/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCe/a;->PASS_THROUGH:LCe/a;

    new-instance v1, LCe/a;

    const-string v2, "FULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LCe/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LCe/a;->FULL:LCe/a;

    new-instance v2, LCe/a;

    const-string v3, "SPECIAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LCe/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LCe/a;->SPECIAL:LCe/a;

    new-instance v3, LCe/a;

    const-string v4, "UNBOUNDED_IN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LCe/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, LCe/a;->UNBOUNDED_IN:LCe/a;

    new-instance v4, LCe/a;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LCe/a;-><init>(Ljava/lang/String;I)V

    sput-object v4, LCe/a;->ERROR:LCe/a;

    new-instance v5, LCe/a;

    const-string v6, "NONE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LCe/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, LCe/a;->NONE:LCe/a;

    filled-new-array/range {v0 .. v5}, [LCe/a;

    move-result-object v0

    sput-object v0, LCe/a;->$VALUES:[LCe/a;

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

.method public static valueOf(Ljava/lang/String;)LCe/a;
    .locals 1

    const-class v0, LCe/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LCe/a;

    return-object p0
.end method

.method public static values()[LCe/a;
    .locals 1

    sget-object v0, LCe/a;->$VALUES:[LCe/a;

    invoke-virtual {v0}, [LCe/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCe/a;

    return-object v0
.end method
