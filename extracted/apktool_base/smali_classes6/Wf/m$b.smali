.class public final enum LWf/m$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LWf/m$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LWf/m$b;

.field public static final enum CONTEXT:LWf/m$b;
    .annotation build Lnf/u;
    .end annotation
.end field

.field public static final enum EXTENSION_RECEIVER:LWf/m$b;

.field public static final enum INSTANCE:LWf/m$b;

.field public static final enum VALUE:LWf/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LWf/m$b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LWf/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/m$b;->INSTANCE:LWf/m$b;

    new-instance v0, LWf/m$b;

    const-string v1, "CONTEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LWf/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/m$b;->CONTEXT:LWf/m$b;

    new-instance v0, LWf/m$b;

    const-string v1, "EXTENSION_RECEIVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LWf/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/m$b;->EXTENSION_RECEIVER:LWf/m$b;

    new-instance v0, LWf/m$b;

    const-string v1, "VALUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LWf/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/m$b;->VALUE:LWf/m$b;

    invoke-static {}, LWf/m$b;->a()[LWf/m$b;

    move-result-object v0

    sput-object v0, LWf/m$b;->$VALUES:[LWf/m$b;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LWf/m$b;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LWf/m$b;
    .locals 4

    sget-object v0, LWf/m$b;->INSTANCE:LWf/m$b;

    sget-object v1, LWf/m$b;->CONTEXT:LWf/m$b;

    sget-object v2, LWf/m$b;->EXTENSION_RECEIVER:LWf/m$b;

    sget-object v3, LWf/m$b;->VALUE:LWf/m$b;

    filled-new-array {v0, v1, v2, v3}, [LWf/m$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LWf/m$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LWf/m$b;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LWf/m$b;
    .locals 1

    const-class v0, LWf/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LWf/m$b;

    return-object p0
.end method

.method public static values()[LWf/m$b;
    .locals 1

    sget-object v0, LWf/m$b;->$VALUES:[LWf/m$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWf/m$b;

    return-object v0
.end method
