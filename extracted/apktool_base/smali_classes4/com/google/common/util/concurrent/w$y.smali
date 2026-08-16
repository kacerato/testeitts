.class public final enum Lcom/google/common/util/concurrent/w$y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/w$y;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/w$y;

.field public static final enum CLOSED:Lcom/google/common/util/concurrent/w$y;

.field public static final enum CLOSING:Lcom/google/common/util/concurrent/w$y;

.field public static final enum OPEN:Lcom/google/common/util/concurrent/w$y;

.field public static final enum SUBSUMED:Lcom/google/common/util/concurrent/w$y;

.field public static final enum WILL_CLOSE:Lcom/google/common/util/concurrent/w$y;

.field public static final enum WILL_CREATE_VALUE_AND_CLOSER:Lcom/google/common/util/concurrent/w$y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/w$y;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/w$y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    new-instance v0, Lcom/google/common/util/concurrent/w$y;

    const-string v1, "SUBSUMED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/w$y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/w$y;->SUBSUMED:Lcom/google/common/util/concurrent/w$y;

    new-instance v0, Lcom/google/common/util/concurrent/w$y;

    const-string v1, "WILL_CLOSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/w$y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/w$y;->WILL_CLOSE:Lcom/google/common/util/concurrent/w$y;

    new-instance v0, Lcom/google/common/util/concurrent/w$y;

    const-string v1, "CLOSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/w$y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/w$y;->CLOSING:Lcom/google/common/util/concurrent/w$y;

    new-instance v0, Lcom/google/common/util/concurrent/w$y;

    const-string v1, "CLOSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/w$y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/w$y;->CLOSED:Lcom/google/common/util/concurrent/w$y;

    new-instance v0, Lcom/google/common/util/concurrent/w$y;

    const-string v1, "WILL_CREATE_VALUE_AND_CLOSER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/w$y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/w$y;->WILL_CREATE_VALUE_AND_CLOSER:Lcom/google/common/util/concurrent/w$y;

    invoke-static {}, Lcom/google/common/util/concurrent/w$y;->a()[Lcom/google/common/util/concurrent/w$y;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/w$y;->$VALUES:[Lcom/google/common/util/concurrent/w$y;

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

.method public static synthetic a()[Lcom/google/common/util/concurrent/w$y;
    .locals 6

    sget-object v0, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->SUBSUMED:Lcom/google/common/util/concurrent/w$y;

    sget-object v2, Lcom/google/common/util/concurrent/w$y;->WILL_CLOSE:Lcom/google/common/util/concurrent/w$y;

    sget-object v3, Lcom/google/common/util/concurrent/w$y;->CLOSING:Lcom/google/common/util/concurrent/w$y;

    sget-object v4, Lcom/google/common/util/concurrent/w$y;->CLOSED:Lcom/google/common/util/concurrent/w$y;

    sget-object v5, Lcom/google/common/util/concurrent/w$y;->WILL_CREATE_VALUE_AND_CLOSER:Lcom/google/common/util/concurrent/w$y;

    filled-new-array/range {v0 .. v5}, [Lcom/google/common/util/concurrent/w$y;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/w$y;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/w$y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/w$y;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/w$y;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/w$y;->$VALUES:[Lcom/google/common/util/concurrent/w$y;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/w$y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/w$y;

    return-object v0
.end method
