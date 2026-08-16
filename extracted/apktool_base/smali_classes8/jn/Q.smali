.class public final enum Ljn/Q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljn/Q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljn/Q;

.field public static final enum FAILURE:Ljn/Q;

.field public static final enum FAILURE_INVALID_PARAM:Ljn/Q;

.field public static final enum IN_PROGRESS:Ljn/Q;

.field public static final enum PARTIAL_RESULT:Ljn/Q;

.field public static final enum SUCCSESS:Ljn/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljn/Q;

    const-string v1, "FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljn/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljn/Q;->FAILURE:Ljn/Q;

    new-instance v0, Ljn/Q;

    const-string v1, "SUCCSESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljn/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljn/Q;->SUCCSESS:Ljn/Q;

    new-instance v0, Ljn/Q;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljn/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljn/Q;->IN_PROGRESS:Ljn/Q;

    new-instance v0, Ljn/Q;

    const-string v1, "PARTIAL_RESULT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljn/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    new-instance v0, Ljn/Q;

    const-string v1, "FAILURE_INVALID_PARAM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljn/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    invoke-static {}, Ljn/Q;->a()[Ljn/Q;

    move-result-object v0

    sput-object v0, Ljn/Q;->$VALUES:[Ljn/Q;

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

.method public static synthetic a()[Ljn/Q;
    .locals 5

    sget-object v0, Ljn/Q;->FAILURE:Ljn/Q;

    sget-object v1, Ljn/Q;->SUCCSESS:Ljn/Q;

    sget-object v2, Ljn/Q;->IN_PROGRESS:Ljn/Q;

    sget-object v3, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    sget-object v4, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljn/Q;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljn/Q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Ljn/Q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljn/Q;

    return-object p0
.end method

.method public static values()[Ljn/Q;
    .locals 1

    sget-object v0, Ljn/Q;->$VALUES:[Ljn/Q;

    invoke-virtual {v0}, [Ljn/Q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljn/Q;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    sget-object v0, Ljn/Q;->FAILURE:Ljn/Q;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 1

    sget-object v0, Ljn/Q;->IN_PROGRESS:Ljn/Q;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    sget-object v0, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    sget-object v0, Ljn/Q;->SUCCSESS:Ljn/Q;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
