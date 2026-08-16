.class public final enum Lsd/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsd/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsd/g;

.field public static final enum MULTI:Lsd/g;

.field public static final enum SINGLE:Lsd/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsd/g;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsd/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsd/g;->SINGLE:Lsd/g;

    new-instance v1, Lsd/g;

    const-string v2, "MULTI"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsd/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsd/g;->MULTI:Lsd/g;

    filled-new-array {v0, v1}, [Lsd/g;

    move-result-object v0

    sput-object v0, Lsd/g;->$VALUES:[Lsd/g;

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

.method public static valueOf(Ljava/lang/String;)Lsd/g;
    .locals 1

    const-class v0, Lsd/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsd/g;

    return-object p0
.end method

.method public static values()[Lsd/g;
    .locals 1

    sget-object v0, Lsd/g;->$VALUES:[Lsd/g;

    invoke-virtual {v0}, [Lsd/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsd/g;

    return-object v0
.end method
