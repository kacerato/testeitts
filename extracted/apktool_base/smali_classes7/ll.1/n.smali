.class public final enum Lll/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lll/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lll/n;

.field public static final enum CIRCUMZENITHAL:Lll/n;

.field public static final enum CLASSIC:Lll/n;

.field public static final enum COMPRESSED:Lll/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lll/n;

    const-string v1, "CLASSIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lll/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lll/n;->CLASSIC:Lll/n;

    new-instance v0, Lll/n;

    const-string v1, "CIRCUMZENITHAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lll/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lll/n;->CIRCUMZENITHAL:Lll/n;

    new-instance v0, Lll/n;

    const-string v1, "COMPRESSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lll/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lll/n;->COMPRESSED:Lll/n;

    invoke-static {}, Lll/n;->a()[Lll/n;

    move-result-object v0

    sput-object v0, Lll/n;->$VALUES:[Lll/n;

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

.method public static synthetic a()[Lll/n;
    .locals 3

    sget-object v0, Lll/n;->CLASSIC:Lll/n;

    sget-object v1, Lll/n;->CIRCUMZENITHAL:Lll/n;

    sget-object v2, Lll/n;->COMPRESSED:Lll/n;

    filled-new-array {v0, v1, v2}, [Lll/n;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lll/n;
    .locals 1

    const-class v0, Lll/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lll/n;

    return-object p0
.end method

.method public static values()[Lll/n;
    .locals 1

    sget-object v0, Lll/n;->$VALUES:[Lll/n;

    invoke-virtual {v0}, [Lll/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lll/n;

    return-object v0
.end method
