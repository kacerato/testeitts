.class public final enum Lga/G;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lga/G;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lga/G;

.field public static final enum ALERT:Lga/G;

.field public static final enum ERROR:Lga/G;

.field public static final enum PROGRESS:Lga/G;

.field public static final enum SUCCESS:Lga/G;


# instance fields
.field private final runtimeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lga/G;

    const/4 v1, 0x0

    const/16 v2, 0x30

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lga/G;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lga/G;->SUCCESS:Lga/G;

    new-instance v0, Lga/G;

    const/4 v1, 0x1

    const/16 v2, 0x31

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lga/G;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lga/G;->ERROR:Lga/G;

    new-instance v0, Lga/G;

    const/4 v1, 0x2

    const/16 v2, 0x32

    const-string v3, "ALERT"

    invoke-direct {v0, v3, v1, v2}, Lga/G;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lga/G;->ALERT:Lga/G;

    new-instance v0, Lga/G;

    const/4 v1, 0x3

    const/16 v2, 0x33

    const-string v3, "PROGRESS"

    invoke-direct {v0, v3, v1, v2}, Lga/G;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lga/G;->PROGRESS:Lga/G;

    invoke-static {}, Lga/G;->a()[Lga/G;

    move-result-object v0

    sput-object v0, Lga/G;->$VALUES:[Lga/G;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "runtimeValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lga/G;->runtimeValue:I

    return-void
.end method

.method public static synthetic a()[Lga/G;
    .locals 4

    sget-object v0, Lga/G;->SUCCESS:Lga/G;

    sget-object v1, Lga/G;->ERROR:Lga/G;

    sget-object v2, Lga/G;->ALERT:Lga/G;

    sget-object v3, Lga/G;->PROGRESS:Lga/G;

    filled-new-array {v0, v1, v2, v3}, [Lga/G;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lga/G;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lga/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lga/G;

    return-object p0
.end method

.method public static values()[Lga/G;
    .locals 1

    sget-object v0, Lga/G;->$VALUES:[Lga/G;

    invoke-virtual {v0}, [Lga/G;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lga/G;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lga/G;->runtimeValue:I

    return v0
.end method
