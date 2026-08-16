.class public final enum Lcom/google/common/util/concurrent/D$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/D$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/D$c;

.field public static final enum CANCELLED:Lcom/google/common/util/concurrent/D$c;

.field public static final enum NOT_RUN:Lcom/google/common/util/concurrent/D$c;

.field public static final enum STARTED:Lcom/google/common/util/concurrent/D$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/D$c;

    const-string v1, "NOT_RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/D$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/D$c;->NOT_RUN:Lcom/google/common/util/concurrent/D$c;

    new-instance v0, Lcom/google/common/util/concurrent/D$c;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/D$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/D$c;->CANCELLED:Lcom/google/common/util/concurrent/D$c;

    new-instance v0, Lcom/google/common/util/concurrent/D$c;

    const-string v1, "STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/D$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/D$c;->STARTED:Lcom/google/common/util/concurrent/D$c;

    invoke-static {}, Lcom/google/common/util/concurrent/D$c;->a()[Lcom/google/common/util/concurrent/D$c;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/D$c;->$VALUES:[Lcom/google/common/util/concurrent/D$c;

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

.method public static synthetic a()[Lcom/google/common/util/concurrent/D$c;
    .locals 3

    sget-object v0, Lcom/google/common/util/concurrent/D$c;->NOT_RUN:Lcom/google/common/util/concurrent/D$c;

    sget-object v1, Lcom/google/common/util/concurrent/D$c;->CANCELLED:Lcom/google/common/util/concurrent/D$c;

    sget-object v2, Lcom/google/common/util/concurrent/D$c;->STARTED:Lcom/google/common/util/concurrent/D$c;

    filled-new-array {v0, v1, v2}, [Lcom/google/common/util/concurrent/D$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/D$c;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/D$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/D$c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/D$c;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/D$c;->$VALUES:[Lcom/google/common/util/concurrent/D$c;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/D$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/D$c;

    return-object v0
.end method
