.class public abstract enum LB2/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LB2/g$c;


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB2/h;",
        ">;",
        "LB2/g$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB2/h;

.field public static final enum MURMUR128_MITZ_32:LB2/h;

.field public static final enum MURMUR128_MITZ_64:LB2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LB2/h$a;

    const-string v1, "MURMUR128_MITZ_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB2/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB2/h;->MURMUR128_MITZ_32:LB2/h;

    new-instance v0, LB2/h$b;

    const-string v1, "MURMUR128_MITZ_64"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LB2/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB2/h;->MURMUR128_MITZ_64:LB2/h;

    invoke-static {}, LB2/h;->a()[LB2/h;

    move-result-object v0

    sput-object v0, LB2/h;->$VALUES:[LB2/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILB2/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LB2/h;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[LB2/h;
    .locals 2

    sget-object v0, LB2/h;->MURMUR128_MITZ_32:LB2/h;

    sget-object v1, LB2/h;->MURMUR128_MITZ_64:LB2/h;

    filled-new-array {v0, v1}, [LB2/h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LB2/h;
    .locals 1

    const-class v0, LB2/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB2/h;

    return-object p0
.end method

.method public static values()[LB2/h;
    .locals 1

    sget-object v0, LB2/h;->$VALUES:[LB2/h;

    invoke-virtual {v0}, [LB2/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB2/h;

    return-object v0
.end method
