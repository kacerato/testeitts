.class public abstract enum Lcom/google/common/cache/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/q;",
        ">;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/q;

.field public static final enum COLLECTED:Lcom/google/common/cache/q;

.field public static final enum EXPIRED:Lcom/google/common/cache/q;

.field public static final enum EXPLICIT:Lcom/google/common/cache/q;

.field public static final enum REPLACED:Lcom/google/common/cache/q;

.field public static final enum SIZE:Lcom/google/common/cache/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/cache/q$a;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/q;->EXPLICIT:Lcom/google/common/cache/q;

    new-instance v0, Lcom/google/common/cache/q$b;

    const-string v1, "REPLACED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/q;->REPLACED:Lcom/google/common/cache/q;

    new-instance v0, Lcom/google/common/cache/q$c;

    const-string v1, "COLLECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/q$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    new-instance v0, Lcom/google/common/cache/q$d;

    const-string v1, "EXPIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/q$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/q;->EXPIRED:Lcom/google/common/cache/q;

    new-instance v0, Lcom/google/common/cache/q$e;

    const-string v1, "SIZE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/q$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/q;->SIZE:Lcom/google/common/cache/q;

    invoke-static {}, Lcom/google/common/cache/q;->a()[Lcom/google/common/cache/q;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/q;->$VALUES:[Lcom/google/common/cache/q;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/q$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/q;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/cache/q;
    .locals 5

    sget-object v0, Lcom/google/common/cache/q;->EXPLICIT:Lcom/google/common/cache/q;

    sget-object v1, Lcom/google/common/cache/q;->REPLACED:Lcom/google/common/cache/q;

    sget-object v2, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    sget-object v3, Lcom/google/common/cache/q;->EXPIRED:Lcom/google/common/cache/q;

    sget-object v4, Lcom/google/common/cache/q;->SIZE:Lcom/google/common/cache/q;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/common/cache/q;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/q;
    .locals 1

    const-class v0, Lcom/google/common/cache/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/q;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/q;
    .locals 1

    sget-object v0, Lcom/google/common/cache/q;->$VALUES:[Lcom/google/common/cache/q;

    invoke-virtual {v0}, [Lcom/google/common/cache/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/q;

    return-object v0
.end method


# virtual methods
.method public abstract b()Z
.end method
