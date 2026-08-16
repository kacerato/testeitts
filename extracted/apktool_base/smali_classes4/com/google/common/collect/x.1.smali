.class public final enum Lcom/google/common/collect/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/x;",
        ">;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/x;

.field public static final enum CLOSED:Lcom/google/common/collect/x;

.field public static final enum OPEN:Lcom/google/common/collect/x;


# instance fields
.field final inclusive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/x;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/common/collect/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    new-instance v0, Lcom/google/common/collect/x;

    const-string v1, "CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/common/collect/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    invoke-static {}, Lcom/google/common/collect/x;->a()[Lcom/google/common/collect/x;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/x;->$VALUES:[Lcom/google/common/collect/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/common/collect/x;->inclusive:Z

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/collect/x;
    .locals 2

    sget-object v0, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    sget-object v1, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    filled-new-array {v0, v1}, [Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0
.end method

.method public static b(Z)Lcom/google/common/collect/x;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/x;
    .locals 1

    const-class v0, Lcom/google/common/collect/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/x;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/x;
    .locals 1

    sget-object v0, Lcom/google/common/collect/x;->$VALUES:[Lcom/google/common/collect/x;

    invoke-virtual {v0}, [Lcom/google/common/collect/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/x;

    return-object v0
.end method
