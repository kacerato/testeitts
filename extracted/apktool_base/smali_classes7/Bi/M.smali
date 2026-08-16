.class public abstract enum LBi/M;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LBi/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LBi/M;",
        ">;",
        "LBi/i;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LBi/M;

.field public static final enum ASCII:LBi/M;

.field public static final enum PKCS12:LBi/M;

.field public static final enum UTF8:LBi/M;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LBi/M$a;

    const-string v1, "ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LBi/M$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/M;->ASCII:LBi/M;

    new-instance v0, LBi/M$b;

    const-string v1, "UTF8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LBi/M$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/M;->UTF8:LBi/M;

    new-instance v0, LBi/M$c;

    const-string v1, "PKCS12"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LBi/M$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBi/M;->PKCS12:LBi/M;

    invoke-static {}, LBi/M;->b()[LBi/M;

    move-result-object v0

    sput-object v0, LBi/M;->$VALUES:[LBi/M;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILBi/M$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LBi/M;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[LBi/M;
    .locals 3

    sget-object v0, LBi/M;->ASCII:LBi/M;

    sget-object v1, LBi/M;->UTF8:LBi/M;

    sget-object v2, LBi/M;->PKCS12:LBi/M;

    filled-new-array {v0, v1, v2}, [LBi/M;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LBi/M;
    .locals 1

    const-class v0, LBi/M;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LBi/M;

    return-object p0
.end method

.method public static values()[LBi/M;
    .locals 1

    sget-object v0, LBi/M;->$VALUES:[LBi/M;

    invoke-virtual {v0}, [LBi/M;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBi/M;

    return-object v0
.end method
