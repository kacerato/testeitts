.class public final enum Lcom/google/common/util/concurrent/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/j$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/j$a;

.field public static final enum ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/j$a;

.field public static final enum OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/j$a;

    const-string v1, "OUTPUT_FUTURE_DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/j$a;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/j$a;

    new-instance v0, Lcom/google/common/util/concurrent/j$a;

    const-string v1, "ALL_INPUT_FUTURES_PROCESSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/j$a;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/j$a;

    invoke-static {}, Lcom/google/common/util/concurrent/j$a;->a()[Lcom/google/common/util/concurrent/j$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/j$a;->$VALUES:[Lcom/google/common/util/concurrent/j$a;

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

.method public static synthetic a()[Lcom/google/common/util/concurrent/j$a;
    .locals 2

    sget-object v0, Lcom/google/common/util/concurrent/j$a;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/j$a;

    sget-object v1, Lcom/google/common/util/concurrent/j$a;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/j$a;

    filled-new-array {v0, v1}, [Lcom/google/common/util/concurrent/j$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/j$a;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/j$a;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/j$a;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/j$a;->$VALUES:[Lcom/google/common/util/concurrent/j$a;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/j$a;

    return-object v0
.end method
