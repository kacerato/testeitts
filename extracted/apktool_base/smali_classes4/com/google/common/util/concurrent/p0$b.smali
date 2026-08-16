.class public final enum Lcom/google/common/util/concurrent/p0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/p0$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/p0$b;

.field public static final enum FAILED:Lcom/google/common/util/concurrent/p0$b;

.field public static final enum NEW:Lcom/google/common/util/concurrent/p0$b;

.field public static final enum RUNNING:Lcom/google/common/util/concurrent/p0$b;

.field public static final enum STARTING:Lcom/google/common/util/concurrent/p0$b;

.field public static final enum STOPPING:Lcom/google/common/util/concurrent/p0$b;

.field public static final enum TERMINATED:Lcom/google/common/util/concurrent/p0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/p0$b;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/p0$b;->NEW:Lcom/google/common/util/concurrent/p0$b;

    new-instance v0, Lcom/google/common/util/concurrent/p0$b;

    const-string v1, "STARTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/p0$b;->STARTING:Lcom/google/common/util/concurrent/p0$b;

    new-instance v0, Lcom/google/common/util/concurrent/p0$b;

    const-string v1, "RUNNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    new-instance v0, Lcom/google/common/util/concurrent/p0$b;

    const-string v1, "STOPPING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/p0$b;->STOPPING:Lcom/google/common/util/concurrent/p0$b;

    new-instance v0, Lcom/google/common/util/concurrent/p0$b;

    const-string v1, "TERMINATED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    new-instance v0, Lcom/google/common/util/concurrent/p0$b;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/p0$b;->FAILED:Lcom/google/common/util/concurrent/p0$b;

    invoke-static {}, Lcom/google/common/util/concurrent/p0$b;->a()[Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/p0$b;->$VALUES:[Lcom/google/common/util/concurrent/p0$b;

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

.method public static synthetic a()[Lcom/google/common/util/concurrent/p0$b;
    .locals 6

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->NEW:Lcom/google/common/util/concurrent/p0$b;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->STARTING:Lcom/google/common/util/concurrent/p0$b;

    sget-object v2, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    sget-object v3, Lcom/google/common/util/concurrent/p0$b;->STOPPING:Lcom/google/common/util/concurrent/p0$b;

    sget-object v4, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    sget-object v5, Lcom/google/common/util/concurrent/p0$b;->FAILED:Lcom/google/common/util/concurrent/p0$b;

    filled-new-array/range {v0 .. v5}, [Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/p0$b;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/p0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/p0$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/p0$b;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->$VALUES:[Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/p0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/p0$b;

    return-object v0
.end method
