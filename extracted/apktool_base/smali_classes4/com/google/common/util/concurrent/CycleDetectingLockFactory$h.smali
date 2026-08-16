.class public abstract enum Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
        ">;",
        "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

.field public static final enum DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

.field public static final enum THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

.field public static final enum WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h$a;

    const-string v1, "THROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h$b;

    const-string v1, "WARN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h$c;

    const-string v1, "DISABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    invoke-static {}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->b()[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->$VALUES:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;
    .locals 3

    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    sget-object v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    filled-new-array {v0, v1, v2}, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->$VALUES:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    return-object v0
.end method
