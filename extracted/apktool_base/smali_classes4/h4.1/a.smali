.class public final enum Lh4/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh4/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lh4/a;

.field public static final enum DONT_SAVE_DONT_NOTIFY:Lh4/a;

.field public static final enum SAVE_DATE_BUT_DONT_NOTIFY:Lh4/a;

.field public static final enum SAVE_NOTIFY:Lh4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh4/a;

    const-string v1, "DONT_SAVE_DONT_NOTIFY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh4/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh4/a;->DONT_SAVE_DONT_NOTIFY:Lh4/a;

    new-instance v0, Lh4/a;

    const-string v1, "SAVE_DATE_BUT_DONT_NOTIFY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lh4/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh4/a;->SAVE_DATE_BUT_DONT_NOTIFY:Lh4/a;

    new-instance v0, Lh4/a;

    const-string v1, "SAVE_NOTIFY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lh4/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh4/a;->SAVE_NOTIFY:Lh4/a;

    invoke-static {}, Lh4/a;->a()[Lh4/a;

    move-result-object v0

    sput-object v0, Lh4/a;->$VALUES:[Lh4/a;

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

.method public static synthetic a()[Lh4/a;
    .locals 3

    sget-object v0, Lh4/a;->DONT_SAVE_DONT_NOTIFY:Lh4/a;

    sget-object v1, Lh4/a;->SAVE_DATE_BUT_DONT_NOTIFY:Lh4/a;

    sget-object v2, Lh4/a;->SAVE_NOTIFY:Lh4/a;

    filled-new-array {v0, v1, v2}, [Lh4/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lh4/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lh4/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh4/a;

    return-object p0
.end method

.method public static values()[Lh4/a;
    .locals 1

    sget-object v0, Lh4/a;->$VALUES:[Lh4/a;

    invoke-virtual {v0}, [Lh4/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh4/a;

    return-object v0
.end method
