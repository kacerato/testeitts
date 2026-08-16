.class public final enum LIf/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LIf/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LIf/k;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.8"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LIf/k;

.field public static final enum SKIP_SUBTREE:LIf/k;

.field public static final enum TERMINATE:LIf/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LIf/k;

    const-string v1, "SKIP_SUBTREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LIf/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIf/k;->SKIP_SUBTREE:LIf/k;

    new-instance v0, LIf/k;

    const-string v1, "TERMINATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LIf/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIf/k;->TERMINATE:LIf/k;

    invoke-static {}, LIf/k;->a()[LIf/k;

    move-result-object v0

    sput-object v0, LIf/k;->$VALUES:[LIf/k;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LIf/k;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LIf/k;
    .locals 2

    sget-object v0, LIf/k;->SKIP_SUBTREE:LIf/k;

    sget-object v1, LIf/k;->TERMINATE:LIf/k;

    filled-new-array {v0, v1}, [LIf/k;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LIf/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LIf/k;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LIf/k;
    .locals 1

    const-class v0, LIf/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LIf/k;

    return-object p0
.end method

.method public static values()[LIf/k;
    .locals 1

    sget-object v0, LIf/k;->$VALUES:[LIf/k;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIf/k;

    return-object v0
.end method
