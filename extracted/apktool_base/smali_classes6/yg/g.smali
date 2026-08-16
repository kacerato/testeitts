.class public final enum Lyg/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyg/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyg/g;

.field public static final enum AES_ENCRYPTED:Lyg/g;

.field public static final enum DEFAULT:Lyg/g;

.field public static final enum DEFLATE_COMPRESSED:Lyg/g;

.field public static final enum ZIP_64_FORMAT:Lyg/g;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyg/g;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lyg/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyg/g;->DEFAULT:Lyg/g;

    new-instance v1, Lyg/g;

    const/4 v2, 0x1

    const/16 v3, 0x14

    const-string v4, "DEFLATE_COMPRESSED"

    invoke-direct {v1, v4, v2, v3}, Lyg/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyg/g;->DEFLATE_COMPRESSED:Lyg/g;

    new-instance v2, Lyg/g;

    const/4 v3, 0x2

    const/16 v4, 0x2d

    const-string v5, "ZIP_64_FORMAT"

    invoke-direct {v2, v5, v3, v4}, Lyg/g;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lyg/g;->ZIP_64_FORMAT:Lyg/g;

    new-instance v3, Lyg/g;

    const/4 v4, 0x3

    const/16 v5, 0x33

    const-string v6, "AES_ENCRYPTED"

    invoke-direct {v3, v6, v4, v5}, Lyg/g;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lyg/g;->AES_ENCRYPTED:Lyg/g;

    filled-new-array {v0, v1, v2, v3}, [Lyg/g;

    move-result-object v0

    sput-object v0, Lyg/g;->$VALUES:[Lyg/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lyg/g;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyg/g;
    .locals 1

    const-class v0, Lyg/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyg/g;

    return-object p0
.end method

.method public static values()[Lyg/g;
    .locals 1

    sget-object v0, Lyg/g;->$VALUES:[Lyg/g;

    invoke-virtual {v0}, [Lyg/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyg/g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lyg/g;->code:I

    return v0
.end method
