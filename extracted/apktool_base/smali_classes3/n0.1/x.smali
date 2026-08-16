.class public final enum Ln0/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln0/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Ln0/x;

.field public static final enum W:Ln0/x;

.field public static final enum X:Ln0/x;

.field public static final enum Y:Ln0/x;

.field public static final enum Z:Ln0/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln0/x;

    const-string v1, "X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln0/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/x;->X:Ln0/x;

    new-instance v0, Ln0/x;

    const-string v1, "Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln0/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/x;->Y:Ln0/x;

    new-instance v0, Ln0/x;

    const-string v1, "Z"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln0/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/x;->Z:Ln0/x;

    new-instance v0, Ln0/x;

    const-string v1, "W"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ln0/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/x;->W:Ln0/x;

    invoke-static {}, Ln0/x;->a()[Ln0/x;

    move-result-object v0

    sput-object v0, Ln0/x;->$VALUES:[Ln0/x;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Ln0/x;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Ln0/x;
    .locals 4

    sget-object v0, Ln0/x;->X:Ln0/x;

    sget-object v1, Ln0/x;->Y:Ln0/x;

    sget-object v2, Ln0/x;->Z:Ln0/x;

    sget-object v3, Ln0/x;->W:Ln0/x;

    filled-new-array {v0, v1, v2, v3}, [Ln0/x;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Ln0/x;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ln0/x;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln0/x;
    .locals 1

    const-class v0, Ln0/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln0/x;

    return-object p0
.end method

.method public static values()[Ln0/x;
    .locals 1

    sget-object v0, Ln0/x;->$VALUES:[Ln0/x;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/x;

    return-object v0
.end method
