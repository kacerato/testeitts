.class public final enum Lcom/google/common/cache/d$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/d$e;",
        ">;",
        "Lcom/google/common/cache/x<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/d$e;

.field public static final enum INSTANCE:Lcom/google/common/cache/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/cache/d$e;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/d$e;->INSTANCE:Lcom/google/common/cache/d$e;

    invoke-static {}, Lcom/google/common/cache/d$e;->b()[Lcom/google/common/cache/d$e;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/d$e;->$VALUES:[Lcom/google/common/cache/d$e;

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

.method public static synthetic b()[Lcom/google/common/cache/d$e;
    .locals 1

    sget-object v0, Lcom/google/common/cache/d$e;->INSTANCE:Lcom/google/common/cache/d$e;

    filled-new-array {v0}, [Lcom/google/common/cache/d$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/d$e;
    .locals 1

    const-class v0, Lcom/google/common/cache/d$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/d$e;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/d$e;
    .locals 1

    sget-object v0, Lcom/google/common/cache/d$e;->$VALUES:[Lcom/google/common/cache/d$e;

    invoke-virtual {v0}, [Lcom/google/common/cache/d$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/d$e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
