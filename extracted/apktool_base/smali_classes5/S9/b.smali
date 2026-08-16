.class public final enum LS9/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LS9/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LS9/b;

.field public static final enum MySelf:LS9/b;

.field public static final enum Other:LS9/b;

.field public static final enum Parent:LS9/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LS9/b;

    const-string v1, "MySelf"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LS9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LS9/b;->MySelf:LS9/b;

    new-instance v0, LS9/b;

    const-string v1, "Parent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LS9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LS9/b;->Parent:LS9/b;

    new-instance v0, LS9/b;

    const-string v1, "Other"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LS9/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LS9/b;->Other:LS9/b;

    invoke-static {}, LS9/b;->a()[LS9/b;

    move-result-object v0

    sput-object v0, LS9/b;->$VALUES:[LS9/b;

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

.method public static synthetic a()[LS9/b;
    .locals 3

    sget-object v0, LS9/b;->MySelf:LS9/b;

    sget-object v1, LS9/b;->Parent:LS9/b;

    sget-object v2, LS9/b;->Other:LS9/b;

    filled-new-array {v0, v1, v2}, [LS9/b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LS9/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LS9/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS9/b;

    return-object p0
.end method

.method public static values()[LS9/b;
    .locals 1

    sget-object v0, LS9/b;->$VALUES:[LS9/b;

    invoke-virtual {v0}, [LS9/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS9/b;

    return-object v0
.end method
