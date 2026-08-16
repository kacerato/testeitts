.class public final enum Ln0/F;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln0/F;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Ln0/F;

.field public static final enum COLOR:Ln0/F;

.field public static final enum DATA:Ln0/F;

.field public static final enum NORMAL:Ln0/F;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln0/F;

    const-string v1, "COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln0/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/F;->COLOR:Ln0/F;

    new-instance v0, Ln0/F;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln0/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/F;->NORMAL:Ln0/F;

    new-instance v0, Ln0/F;

    const-string v1, "DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln0/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/F;->DATA:Ln0/F;

    invoke-static {}, Ln0/F;->a()[Ln0/F;

    move-result-object v0

    sput-object v0, Ln0/F;->$VALUES:[Ln0/F;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Ln0/F;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Ln0/F;
    .locals 3

    sget-object v0, Ln0/F;->COLOR:Ln0/F;

    sget-object v1, Ln0/F;->NORMAL:Ln0/F;

    sget-object v2, Ln0/F;->DATA:Ln0/F;

    filled-new-array {v0, v1, v2}, [Ln0/F;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Ln0/F;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ln0/F;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln0/F;
    .locals 1

    const-class v0, Ln0/F;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln0/F;

    return-object p0
.end method

.method public static values()[Ln0/F;
    .locals 1

    sget-object v0, Ln0/F;->$VALUES:[Ln0/F;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/F;

    return-object v0
.end method
