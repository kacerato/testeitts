.class public final enum LLi/s0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLi/s0$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLi/s0$b;

.field public static final enum SCHWAEMM128_128:LLi/s0$b;

.field public static final enum SCHWAEMM192_192:LLi/s0$b;

.field public static final enum SCHWAEMM256_128:LLi/s0$b;

.field public static final enum SCHWAEMM256_256:LLi/s0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLi/s0$b;

    const-string v1, "SCHWAEMM128_128"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLi/s0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/s0$b;->SCHWAEMM128_128:LLi/s0$b;

    new-instance v0, LLi/s0$b;

    const-string v1, "SCHWAEMM256_128"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLi/s0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/s0$b;->SCHWAEMM256_128:LLi/s0$b;

    new-instance v0, LLi/s0$b;

    const-string v1, "SCHWAEMM192_192"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LLi/s0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/s0$b;->SCHWAEMM192_192:LLi/s0$b;

    new-instance v0, LLi/s0$b;

    const-string v1, "SCHWAEMM256_256"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LLi/s0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/s0$b;->SCHWAEMM256_256:LLi/s0$b;

    invoke-static {}, LLi/s0$b;->a()[LLi/s0$b;

    move-result-object v0

    sput-object v0, LLi/s0$b;->$VALUES:[LLi/s0$b;

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

.method public static synthetic a()[LLi/s0$b;
    .locals 4

    sget-object v0, LLi/s0$b;->SCHWAEMM128_128:LLi/s0$b;

    sget-object v1, LLi/s0$b;->SCHWAEMM256_128:LLi/s0$b;

    sget-object v2, LLi/s0$b;->SCHWAEMM192_192:LLi/s0$b;

    sget-object v3, LLi/s0$b;->SCHWAEMM256_256:LLi/s0$b;

    filled-new-array {v0, v1, v2, v3}, [LLi/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLi/s0$b;
    .locals 1

    const-class v0, LLi/s0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLi/s0$b;

    return-object p0
.end method

.method public static values()[LLi/s0$b;
    .locals 1

    sget-object v0, LLi/s0$b;->$VALUES:[LLi/s0$b;

    invoke-virtual {v0}, [LLi/s0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLi/s0$b;

    return-object v0
.end method
