.class public abstract enum Lcom/google/common/cache/k$t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/k$t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/k$t;

.field public static final enum SOFT:Lcom/google/common/cache/k$t;

.field public static final enum STRONG:Lcom/google/common/cache/k$t;

.field public static final enum WEAK:Lcom/google/common/cache/k$t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/cache/k$t$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/k$t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/k$t;->STRONG:Lcom/google/common/cache/k$t;

    new-instance v0, Lcom/google/common/cache/k$t$b;

    const-string v1, "SOFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/k$t$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/k$t;->SOFT:Lcom/google/common/cache/k$t;

    new-instance v0, Lcom/google/common/cache/k$t$c;

    const-string v1, "WEAK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/k$t$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/k$t;->WEAK:Lcom/google/common/cache/k$t;

    invoke-static {}, Lcom/google/common/cache/k$t;->a()[Lcom/google/common/cache/k$t;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/k$t;->$VALUES:[Lcom/google/common/cache/k$t;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/k$t;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/cache/k$t;
    .locals 3

    sget-object v0, Lcom/google/common/cache/k$t;->STRONG:Lcom/google/common/cache/k$t;

    sget-object v1, Lcom/google/common/cache/k$t;->SOFT:Lcom/google/common/cache/k$t;

    sget-object v2, Lcom/google/common/cache/k$t;->WEAK:Lcom/google/common/cache/k$t;

    filled-new-array {v0, v1, v2}, [Lcom/google/common/cache/k$t;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/k$t;
    .locals 1

    const-class v0, Lcom/google/common/cache/k$t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/k$t;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/k$t;
    .locals 1

    sget-object v0, Lcom/google/common/cache/k$t;->$VALUES:[Lcom/google/common/cache/k$t;

    invoke-virtual {v0}, [Lcom/google/common/cache/k$t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/k$t;

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

.method public abstract c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Ljava/lang/Object;I)Lcom/google/common/cache/k$A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation
.end method
