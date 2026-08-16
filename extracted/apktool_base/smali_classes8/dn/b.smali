.class public final enum Ldn/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldn/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Ldn/b;

.field public static final enum BOTTOM_TO_TOP:Ldn/b;

.field public static final enum LEFT_TO_RIGHT:Ldn/b;

.field public static final enum RIGHT_TO_LEFT:Ldn/b;

.field public static final enum TOP_TO_BOTTOM:Ldn/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldn/b;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldn/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldn/b;->RIGHT_TO_LEFT:Ldn/b;

    new-instance v0, Ldn/b;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldn/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldn/b;->LEFT_TO_RIGHT:Ldn/b;

    new-instance v0, Ldn/b;

    const-string v1, "TOP_TO_BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldn/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldn/b;->TOP_TO_BOTTOM:Ldn/b;

    new-instance v0, Ldn/b;

    const-string v1, "BOTTOM_TO_TOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldn/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldn/b;->BOTTOM_TO_TOP:Ldn/b;

    invoke-static {}, Ldn/b;->a()[Ldn/b;

    move-result-object v0

    sput-object v0, Ldn/b;->$VALUES:[Ldn/b;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Ldn/b;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Ldn/b;
    .locals 4

    sget-object v0, Ldn/b;->RIGHT_TO_LEFT:Ldn/b;

    sget-object v1, Ldn/b;->LEFT_TO_RIGHT:Ldn/b;

    sget-object v2, Ldn/b;->TOP_TO_BOTTOM:Ldn/b;

    sget-object v3, Ldn/b;->BOTTOM_TO_TOP:Ldn/b;

    filled-new-array {v0, v1, v2, v3}, [Ldn/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Ldn/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ldn/b;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldn/b;
    .locals 1

    const-class v0, Ldn/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldn/b;

    return-object p0
.end method

.method public static values()[Ldn/b;
    .locals 1

    sget-object v0, Ldn/b;->$VALUES:[Ldn/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldn/b;

    return-object v0
.end method
