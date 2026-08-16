.class public abstract enum Lcom/google/common/collect/Q1$r;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/Q1$r;",
        ">;",
        "Lw2/t<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/Q1$r;

.field public static final enum KEY:Lcom/google/common/collect/Q1$r;

.field public static final enum VALUE:Lcom/google/common/collect/Q1$r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/Q1$r$a;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Q1$r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Q1$r;->KEY:Lcom/google/common/collect/Q1$r;

    new-instance v0, Lcom/google/common/collect/Q1$r$b;

    const-string v1, "VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Q1$r$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Q1$r;->VALUE:Lcom/google/common/collect/Q1$r;

    invoke-static {}, Lcom/google/common/collect/Q1$r;->a()[Lcom/google/common/collect/Q1$r;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Q1$r;->$VALUES:[Lcom/google/common/collect/Q1$r;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/Q1$e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Q1$r;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/collect/Q1$r;
    .locals 2

    sget-object v0, Lcom/google/common/collect/Q1$r;->KEY:Lcom/google/common/collect/Q1$r;

    sget-object v1, Lcom/google/common/collect/Q1$r;->VALUE:Lcom/google/common/collect/Q1$r;

    filled-new-array {v0, v1}, [Lcom/google/common/collect/Q1$r;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Q1$r;
    .locals 1

    const-class v0, Lcom/google/common/collect/Q1$r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Q1$r;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/Q1$r;
    .locals 1

    sget-object v0, Lcom/google/common/collect/Q1$r;->$VALUES:[Lcom/google/common/collect/Q1$r;

    invoke-virtual {v0}, [Lcom/google/common/collect/Q1$r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Q1$r;

    return-object v0
.end method
