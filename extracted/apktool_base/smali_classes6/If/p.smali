.class public final enum LIf/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LIf/p;",
        ">;"
    }
.end annotation

.annotation build Lnf/T0;
    markerClass = {
        LIf/f;
    }
.end annotation

.annotation build Lnf/l0;
    version = "2.1"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LIf/p;

.field public static final enum BREADTH_FIRST:LIf/p;

.field public static final enum FOLLOW_LINKS:LIf/p;

.field public static final enum INCLUDE_DIRECTORIES:LIf/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LIf/p;

    const-string v1, "INCLUDE_DIRECTORIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LIf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIf/p;->INCLUDE_DIRECTORIES:LIf/p;

    new-instance v0, LIf/p;

    const-string v1, "BREADTH_FIRST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LIf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIf/p;->BREADTH_FIRST:LIf/p;

    new-instance v0, LIf/p;

    const-string v1, "FOLLOW_LINKS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LIf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIf/p;->FOLLOW_LINKS:LIf/p;

    invoke-static {}, LIf/p;->a()[LIf/p;

    move-result-object v0

    sput-object v0, LIf/p;->$VALUES:[LIf/p;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LIf/p;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LIf/p;
    .locals 3

    sget-object v0, LIf/p;->INCLUDE_DIRECTORIES:LIf/p;

    sget-object v1, LIf/p;->BREADTH_FIRST:LIf/p;

    sget-object v2, LIf/p;->FOLLOW_LINKS:LIf/p;

    filled-new-array {v0, v1, v2}, [LIf/p;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LIf/p;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LIf/p;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LIf/p;
    .locals 1

    const-class v0, LIf/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LIf/p;

    return-object p0
.end method

.method public static values()[LIf/p;
    .locals 1

    sget-object v0, LIf/p;->$VALUES:[LIf/p;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIf/p;

    return-object v0
.end method
