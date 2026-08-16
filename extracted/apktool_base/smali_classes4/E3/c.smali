.class public final enum LE3/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LE3/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LE3/c;

.field public static final enum Download:LE3/c;

.field public static final enum Upload:LE3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LE3/c;

    const-string v1, "Upload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LE3/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE3/c;->Upload:LE3/c;

    new-instance v0, LE3/c;

    const-string v1, "Download"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LE3/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE3/c;->Download:LE3/c;

    invoke-static {}, LE3/c;->a()[LE3/c;

    move-result-object v0

    sput-object v0, LE3/c;->$VALUES:[LE3/c;

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

.method public static synthetic a()[LE3/c;
    .locals 2

    sget-object v0, LE3/c;->Upload:LE3/c;

    sget-object v1, LE3/c;->Download:LE3/c;

    filled-new-array {v0, v1}, [LE3/c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LE3/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LE3/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LE3/c;

    return-object p0
.end method

.method public static values()[LE3/c;
    .locals 1

    sget-object v0, LE3/c;->$VALUES:[LE3/c;

    invoke-virtual {v0}, [LE3/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE3/c;

    return-object v0
.end method
