.class public final enum Lec/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lec/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lec/a;

.field public static final enum ADD:Lec/a;

.field public static final enum FADE:Lec/a;

.field public static final enum MASKED:Lec/a;

.field public static final enum MULTIPLY:Lec/a;

.field public static final enum OPAQUE:Lec/a;

.field public static final enum TRANSPARENT:Lec/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lec/a;

    const-string v1, "OPAQUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lec/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/a;->OPAQUE:Lec/a;

    new-instance v0, Lec/a;

    const-string v1, "TRANSPARENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lec/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/a;->TRANSPARENT:Lec/a;

    new-instance v0, Lec/a;

    const-string v1, "ADD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lec/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/a;->ADD:Lec/a;

    new-instance v0, Lec/a;

    const-string v1, "MASKED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lec/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/a;->MASKED:Lec/a;

    new-instance v0, Lec/a;

    const-string v1, "FADE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lec/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/a;->FADE:Lec/a;

    new-instance v0, Lec/a;

    const-string v1, "MULTIPLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lec/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/a;->MULTIPLY:Lec/a;

    invoke-static {}, Lec/a;->a()[Lec/a;

    move-result-object v0

    sput-object v0, Lec/a;->$VALUES:[Lec/a;

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

.method public static synthetic a()[Lec/a;
    .locals 6

    sget-object v0, Lec/a;->OPAQUE:Lec/a;

    sget-object v1, Lec/a;->TRANSPARENT:Lec/a;

    sget-object v2, Lec/a;->ADD:Lec/a;

    sget-object v3, Lec/a;->MASKED:Lec/a;

    sget-object v4, Lec/a;->FADE:Lec/a;

    sget-object v5, Lec/a;->MULTIPLY:Lec/a;

    filled-new-array/range {v0 .. v5}, [Lec/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lec/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lec/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lec/a;

    return-object p0
.end method

.method public static values()[Lec/a;
    .locals 1

    sget-object v0, Lec/a;->$VALUES:[Lec/a;

    invoke-virtual {v0}, [Lec/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lec/a;

    return-object v0
.end method
