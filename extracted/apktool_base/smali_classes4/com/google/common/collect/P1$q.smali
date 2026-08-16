.class public abstract enum Lcom/google/common/collect/P1$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/P1$q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/P1$q;

.field public static final enum STRONG:Lcom/google/common/collect/P1$q;

.field public static final enum WEAK:Lcom/google/common/collect/P1$q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/P1$q$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/P1$q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    new-instance v0, Lcom/google/common/collect/P1$q$b;

    const-string v1, "WEAK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/P1$q$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    invoke-static {}, Lcom/google/common/collect/P1$q;->a()[Lcom/google/common/collect/P1$q;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/P1$q;->$VALUES:[Lcom/google/common/collect/P1$q;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/P1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/P1$q;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/collect/P1$q;
    .locals 2

    sget-object v0, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    sget-object v1, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    filled-new-array {v0, v1}, [Lcom/google/common/collect/P1$q;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/P1$q;
    .locals 1

    const-class v0, Lcom/google/common/collect/P1$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/P1$q;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/P1$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/P1$q;->$VALUES:[Lcom/google/common/collect/P1$q;

    invoke-virtual {v0}, [Lcom/google/common/collect/P1$q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/P1$q;

    return-object v0
.end method


# virtual methods
.method public abstract b()Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
