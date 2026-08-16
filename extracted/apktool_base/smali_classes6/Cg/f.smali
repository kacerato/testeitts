.class public final enum LCg/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LCg/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LCg/f;

.field public static final enum READ:LCg/f;

.field public static final enum WRITE:LCg/f;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LCg/f;

    const/4 v1, 0x0

    const-string v2, "r"

    const-string v3, "READ"

    invoke-direct {v0, v3, v1, v2}, LCg/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LCg/f;->READ:LCg/f;

    new-instance v1, LCg/f;

    const/4 v2, 0x1

    const-string v3, "rw"

    const-string v4, "WRITE"

    invoke-direct {v1, v4, v2, v3}, LCg/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LCg/f;->WRITE:LCg/f;

    filled-new-array {v0, v1}, [LCg/f;

    move-result-object v0

    sput-object v0, LCg/f;->$VALUES:[LCg/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LCg/f;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCg/f;
    .locals 1

    const-class v0, LCg/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LCg/f;

    return-object p0
.end method

.method public static values()[LCg/f;
    .locals 1

    sget-object v0, LCg/f;->$VALUES:[LCg/f;

    invoke-virtual {v0}, [LCg/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCg/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LCg/f;->value:Ljava/lang/String;

    return-object v0
.end method
