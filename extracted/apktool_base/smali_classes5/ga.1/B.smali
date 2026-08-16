.class public final enum Lga/B;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lga/B;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lga/B;

.field public static final enum BOTH:Lga/B;

.field public static final enum FRAGMENT:Lga/B;

.field public static final enum VERTEX:Lga/B;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lga/B;

    const-string v1, "VERTEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lga/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lga/B;->VERTEX:Lga/B;

    new-instance v0, Lga/B;

    const-string v1, "FRAGMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lga/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lga/B;->FRAGMENT:Lga/B;

    new-instance v0, Lga/B;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lga/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lga/B;->BOTH:Lga/B;

    invoke-static {}, Lga/B;->a()[Lga/B;

    move-result-object v0

    sput-object v0, Lga/B;->$VALUES:[Lga/B;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lga/B;
    .locals 3

    sget-object v0, Lga/B;->VERTEX:Lga/B;

    sget-object v1, Lga/B;->FRAGMENT:Lga/B;

    sget-object v2, Lga/B;->BOTH:Lga/B;

    filled-new-array {v0, v1, v2}, [Lga/B;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lga/B;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lga/B;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lga/B;

    return-object p0
.end method

.method public static values()[Lga/B;
    .locals 1

    sget-object v0, Lga/B;->$VALUES:[Lga/B;

    invoke-virtual {v0}, [Lga/B;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lga/B;

    return-object v0
.end method
