.class public final enum Lnf/h0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnf/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnf/h0$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lnf/h0$a;

.field public static final enum ERROR:Lnf/h0$a;

.field public static final enum WARNING:Lnf/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnf/h0$a;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnf/h0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnf/h0$a;->WARNING:Lnf/h0$a;

    new-instance v0, Lnf/h0$a;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnf/h0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnf/h0$a;->ERROR:Lnf/h0$a;

    invoke-static {}, Lnf/h0$a;->a()[Lnf/h0$a;

    move-result-object v0

    sput-object v0, Lnf/h0$a;->$VALUES:[Lnf/h0$a;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lnf/h0$a;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Lnf/h0$a;
    .locals 2

    sget-object v0, Lnf/h0$a;->WARNING:Lnf/h0$a;

    sget-object v1, Lnf/h0$a;->ERROR:Lnf/h0$a;

    filled-new-array {v0, v1}, [Lnf/h0$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lnf/h0$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lnf/h0$a;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnf/h0$a;
    .locals 1

    const-class v0, Lnf/h0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnf/h0$a;

    return-object p0
.end method

.method public static values()[Lnf/h0$a;
    .locals 1

    sget-object v0, Lnf/h0$a;->$VALUES:[Lnf/h0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnf/h0$a;

    return-object v0
.end method
