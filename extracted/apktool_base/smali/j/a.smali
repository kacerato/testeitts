.class public final enum Lj/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj/a;

.field public static final enum ALL:Lj/a;

.field public static final enum ALL_EXCEPT_LOCALS:Lj/a;

.field public static final enum UPPER_BOUNDS:Lj/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj/a;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/a;->ALL:Lj/a;

    new-instance v0, Lj/a;

    const-string v1, "ALL_EXCEPT_LOCALS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/a;->ALL_EXCEPT_LOCALS:Lj/a;

    new-instance v0, Lj/a;

    const-string v1, "UPPER_BOUNDS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/a;->UPPER_BOUNDS:Lj/a;

    invoke-static {}, Lj/a;->a()[Lj/a;

    move-result-object v0

    sput-object v0, Lj/a;->$VALUES:[Lj/a;

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
            null,
            null
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

.method public static synthetic a()[Lj/a;
    .locals 3

    sget-object v0, Lj/a;->ALL:Lj/a;

    sget-object v1, Lj/a;->ALL_EXCEPT_LOCALS:Lj/a;

    sget-object v2, Lj/a;->UPPER_BOUNDS:Lj/a;

    filled-new-array {v0, v1, v2}, [Lj/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lj/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj/a;

    return-object p0
.end method

.method public static values()[Lj/a;
    .locals 1

    sget-object v0, Lj/a;->$VALUES:[Lj/a;

    invoke-virtual {v0}, [Lj/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/a;

    return-object v0
.end method
