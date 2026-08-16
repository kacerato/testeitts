.class public final enum Lyg/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyg/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyg/f;

.field public static final enum SPECIFICATION_VERSION:Lyg/f;

.field public static final enum UNIX:Lyg/f;

.field public static final enum WINDOWS:Lyg/f;


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyg/f;

    const/16 v1, 0x33

    const-string v2, "SPECIFICATION_VERSION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lyg/f;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lyg/f;->SPECIFICATION_VERSION:Lyg/f;

    new-instance v1, Lyg/f;

    const-string v2, "WINDOWS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lyg/f;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lyg/f;->WINDOWS:Lyg/f;

    new-instance v2, Lyg/f;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "UNIX"

    invoke-direct {v2, v5, v3, v4}, Lyg/f;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lyg/f;->UNIX:Lyg/f;

    filled-new-array {v0, v1, v2}, [Lyg/f;

    move-result-object v0

    sput-object v0, Lyg/f;->$VALUES:[Lyg/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lyg/f;->code:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyg/f;
    .locals 1

    const-class v0, Lyg/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyg/f;

    return-object p0
.end method

.method public static values()[Lyg/f;
    .locals 1

    sget-object v0, Lyg/f;->$VALUES:[Lyg/f;

    invoke-virtual {v0}, [Lyg/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyg/f;

    return-object v0
.end method


# virtual methods
.method public a()B
    .locals 1

    iget-byte v0, p0, Lyg/f;->code:B

    return v0
.end method
