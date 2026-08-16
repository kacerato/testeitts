.class public final enum LDd/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDd/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDd/a$b;

.field public static final enum RATE_0_25:LDd/a$b;

.field public static final enum RATE_0_5:LDd/a$b;

.field public static final enum RATE_1:LDd/a$b;

.field public static final enum RATE_1_5:LDd/a$b;

.field public static final enum RATE_2:LDd/a$b;

.field public static final enum UNKNOWN:LDd/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LDd/a$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDd/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDd/a$b;->UNKNOWN:LDd/a$b;

    new-instance v1, LDd/a$b;

    const-string v2, "RATE_0_25"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LDd/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, LDd/a$b;->RATE_0_25:LDd/a$b;

    new-instance v2, LDd/a$b;

    const-string v3, "RATE_0_5"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LDd/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, LDd/a$b;->RATE_0_5:LDd/a$b;

    new-instance v3, LDd/a$b;

    const-string v4, "RATE_1"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LDd/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, LDd/a$b;->RATE_1:LDd/a$b;

    new-instance v4, LDd/a$b;

    const-string v5, "RATE_1_5"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LDd/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, LDd/a$b;->RATE_1_5:LDd/a$b;

    new-instance v5, LDd/a$b;

    const-string v6, "RATE_2"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LDd/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, LDd/a$b;->RATE_2:LDd/a$b;

    filled-new-array/range {v0 .. v5}, [LDd/a$b;

    move-result-object v0

    sput-object v0, LDd/a$b;->$VALUES:[LDd/a$b;

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

.method public static valueOf(Ljava/lang/String;)LDd/a$b;
    .locals 1

    const-class v0, LDd/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDd/a$b;

    return-object p0
.end method

.method public static values()[LDd/a$b;
    .locals 1

    sget-object v0, LDd/a$b;->$VALUES:[LDd/a$b;

    invoke-virtual {v0}, [LDd/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDd/a$b;

    return-object v0
.end method
