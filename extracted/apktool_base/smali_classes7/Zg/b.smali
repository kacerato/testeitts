.class public final enum LZg/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZg/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LZg/b;

.field public static final enum BUTT:LZg/b;

.field public static final enum ROUND:LZg/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LZg/b;

    const-string v1, "ROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LZg/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZg/b;->ROUND:LZg/b;

    new-instance v0, LZg/b;

    const-string v1, "BUTT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LZg/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZg/b;->BUTT:LZg/b;

    invoke-static {}, LZg/b;->a()[LZg/b;

    move-result-object v0

    sput-object v0, LZg/b;->$VALUES:[LZg/b;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LZg/b;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LZg/b;
    .locals 2

    sget-object v0, LZg/b;->ROUND:LZg/b;

    sget-object v1, LZg/b;->BUTT:LZg/b;

    filled-new-array {v0, v1}, [LZg/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LZg/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LZg/b;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LZg/b;
    .locals 1

    const-class v0, LZg/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZg/b;

    return-object p0
.end method

.method public static values()[LZg/b;
    .locals 1

    sget-object v0, LZg/b;->$VALUES:[LZg/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZg/b;

    return-object v0
.end method
