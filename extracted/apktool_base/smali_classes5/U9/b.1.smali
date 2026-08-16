.class public final enum LU9/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LU9/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LU9/b;

.field public static final enum Bevel:LU9/b;

.field public static final enum InvertedRound:LU9/b;

.field public static final enum Notch:LU9/b;

.field public static final enum Round:LU9/b;

.field public static final enum Sharp:LU9/b;

.field public static final enum Squircle:LU9/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU9/b;

    const-string v1, "Sharp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU9/b;->Sharp:LU9/b;

    new-instance v0, LU9/b;

    const-string v1, "Round"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LU9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU9/b;->Round:LU9/b;

    new-instance v0, LU9/b;

    const-string v1, "InvertedRound"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LU9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU9/b;->InvertedRound:LU9/b;

    new-instance v0, LU9/b;

    const-string v1, "Bevel"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU9/b;->Bevel:LU9/b;

    new-instance v0, LU9/b;

    const-string v1, "Notch"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LU9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU9/b;->Notch:LU9/b;

    new-instance v0, LU9/b;

    const-string v1, "Squircle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LU9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU9/b;->Squircle:LU9/b;

    invoke-static {}, LU9/b;->a()[LU9/b;

    move-result-object v0

    sput-object v0, LU9/b;->$VALUES:[LU9/b;

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

.method public static synthetic a()[LU9/b;
    .locals 6

    sget-object v0, LU9/b;->Sharp:LU9/b;

    sget-object v1, LU9/b;->Round:LU9/b;

    sget-object v2, LU9/b;->InvertedRound:LU9/b;

    sget-object v3, LU9/b;->Bevel:LU9/b;

    sget-object v4, LU9/b;->Notch:LU9/b;

    sget-object v5, LU9/b;->Squircle:LU9/b;

    filled-new-array/range {v0 .. v5}, [LU9/b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LU9/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LU9/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU9/b;

    return-object p0
.end method

.method public static values()[LU9/b;
    .locals 1

    sget-object v0, LU9/b;->$VALUES:[LU9/b;

    invoke-virtual {v0}, [LU9/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU9/b;

    return-object v0
.end method
