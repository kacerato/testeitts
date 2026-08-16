.class public final enum Lcom/google/common/cache/d$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/d$d;",
        ">;",
        "Lcom/google/common/cache/r<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/d$d;

.field public static final enum INSTANCE:Lcom/google/common/cache/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/cache/d$d;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/d$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/d$d;->INSTANCE:Lcom/google/common/cache/d$d;

    invoke-static {}, Lcom/google/common/cache/d$d;->b()[Lcom/google/common/cache/d$d;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/d$d;->$VALUES:[Lcom/google/common/cache/d$d;

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

.method public static synthetic b()[Lcom/google/common/cache/d$d;
    .locals 1

    sget-object v0, Lcom/google/common/cache/d$d;->INSTANCE:Lcom/google/common/cache/d$d;

    filled-new-array {v0}, [Lcom/google/common/cache/d$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/d$d;
    .locals 1

    const-class v0, Lcom/google/common/cache/d$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/d$d;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/d$d;
    .locals 1

    sget-object v0, Lcom/google/common/cache/d$d;->$VALUES:[Lcom/google/common/cache/d$d;

    invoke-virtual {v0}, [Lcom/google/common/cache/d$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/d$d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/cache/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/v<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
