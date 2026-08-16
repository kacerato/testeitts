.class public final enum Lof/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lof/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lof/a;

.field public static final enum BINARY:Lof/a;

.field public static final enum RUNTIME:Lof/a;

.field public static final enum SOURCE:Lof/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lof/a;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lof/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/a;->SOURCE:Lof/a;

    new-instance v0, Lof/a;

    const-string v1, "BINARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lof/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/a;->BINARY:Lof/a;

    new-instance v0, Lof/a;

    const-string v1, "RUNTIME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lof/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/a;->RUNTIME:Lof/a;

    invoke-static {}, Lof/a;->a()[Lof/a;

    move-result-object v0

    sput-object v0, Lof/a;->$VALUES:[Lof/a;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lof/a;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Lof/a;
    .locals 3

    sget-object v0, Lof/a;->SOURCE:Lof/a;

    sget-object v1, Lof/a;->BINARY:Lof/a;

    sget-object v2, Lof/a;->RUNTIME:Lof/a;

    filled-new-array {v0, v1, v2}, [Lof/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lof/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lof/a;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lof/a;
    .locals 1

    const-class v0, Lof/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lof/a;

    return-object p0
.end method

.method public static values()[Lof/a;
    .locals 1

    sget-object v0, Lof/a;->$VALUES:[Lof/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lof/a;

    return-object v0
.end method
