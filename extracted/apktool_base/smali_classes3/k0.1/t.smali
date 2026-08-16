.class public final enum Lk0/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk0/t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lk0/t;

.field public static final enum MODEL:Lk0/t;

.field public static final enum SYSTEM:Lk0/t;

.field public static final enum TOOL:Lk0/t;

.field public static final enum USER:Lk0/t;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lk0/t;

    const/4 v1, 0x0

    const-string v2, "system"

    const-string v3, "SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lk0/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lk0/t;->SYSTEM:Lk0/t;

    new-instance v0, Lk0/t;

    const/4 v1, 0x1

    const-string v2, "user"

    const-string v3, "USER"

    invoke-direct {v0, v3, v1, v2}, Lk0/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lk0/t;->USER:Lk0/t;

    new-instance v0, Lk0/t;

    const/4 v1, 0x2

    const-string v2, "model"

    const-string v3, "MODEL"

    invoke-direct {v0, v3, v1, v2}, Lk0/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lk0/t;->MODEL:Lk0/t;

    new-instance v0, Lk0/t;

    const/4 v1, 0x3

    const-string v2, "tool"

    const-string v3, "TOOL"

    invoke-direct {v0, v3, v1, v2}, Lk0/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lk0/t;->TOOL:Lk0/t;

    invoke-static {}, Lk0/t;->a()[Lk0/t;

    move-result-object v0

    sput-object v0, Lk0/t;->$VALUES:[Lk0/t;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lk0/t;->$ENTRIES:LCf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lk0/t;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lk0/t;
    .locals 4

    sget-object v0, Lk0/t;->SYSTEM:Lk0/t;

    sget-object v1, Lk0/t;->USER:Lk0/t;

    sget-object v2, Lk0/t;->MODEL:Lk0/t;

    sget-object v3, Lk0/t;->TOOL:Lk0/t;

    filled-new-array {v0, v1, v2, v3}, [Lk0/t;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lk0/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lk0/t;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lk0/t;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-class v0, Lk0/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk0/t;

    return-object p0
.end method

.method public static values()[Lk0/t;
    .locals 1

    sget-object v0, Lk0/t;->$VALUES:[Lk0/t;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk0/t;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/t;->value:Ljava/lang/String;

    return-object v0
.end method
