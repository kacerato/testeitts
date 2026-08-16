.class public final enum LHf/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LHf/a$b;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "2.0"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LHf/a$b;

.field public static final enum ABSENT:LHf/a$b;

.field public static final enum ABSENT_OPTIONAL:LHf/a$b;

.field public static final enum PRESENT:LHf/a$b;

.field public static final enum PRESENT_OPTIONAL:LHf/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHf/a$b;

    const-string v1, "PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LHf/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHf/a$b;->PRESENT:LHf/a$b;

    new-instance v0, LHf/a$b;

    const-string v1, "ABSENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LHf/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHf/a$b;->ABSENT:LHf/a$b;

    new-instance v0, LHf/a$b;

    const-string v1, "PRESENT_OPTIONAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LHf/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHf/a$b;->PRESENT_OPTIONAL:LHf/a$b;

    new-instance v0, LHf/a$b;

    const-string v1, "ABSENT_OPTIONAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LHf/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHf/a$b;->ABSENT_OPTIONAL:LHf/a$b;

    invoke-static {}, LHf/a$b;->a()[LHf/a$b;

    move-result-object v0

    sput-object v0, LHf/a$b;->$VALUES:[LHf/a$b;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LHf/a$b;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LHf/a$b;
    .locals 4

    sget-object v0, LHf/a$b;->PRESENT:LHf/a$b;

    sget-object v1, LHf/a$b;->ABSENT:LHf/a$b;

    sget-object v2, LHf/a$b;->PRESENT_OPTIONAL:LHf/a$b;

    sget-object v3, LHf/a$b;->ABSENT_OPTIONAL:LHf/a$b;

    filled-new-array {v0, v1, v2, v3}, [LHf/a$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LHf/a$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LHf/a$b;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LHf/a$b;
    .locals 1

    const-class v0, LHf/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHf/a$b;

    return-object p0
.end method

.method public static values()[LHf/a$b;
    .locals 1

    sget-object v0, LHf/a$b;->$VALUES:[LHf/a$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHf/a$b;

    return-object v0
.end method
