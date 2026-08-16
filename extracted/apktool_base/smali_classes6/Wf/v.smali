.class public final enum LWf/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LWf/v;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.1"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LWf/v;

.field public static final enum INTERNAL:LWf/v;

.field public static final enum PRIVATE:LWf/v;

.field public static final enum PROTECTED:LWf/v;

.field public static final enum PUBLIC:LWf/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LWf/v;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LWf/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/v;->PUBLIC:LWf/v;

    new-instance v0, LWf/v;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LWf/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/v;->PROTECTED:LWf/v;

    new-instance v0, LWf/v;

    const-string v1, "INTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LWf/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/v;->INTERNAL:LWf/v;

    new-instance v0, LWf/v;

    const-string v1, "PRIVATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LWf/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/v;->PRIVATE:LWf/v;

    invoke-static {}, LWf/v;->a()[LWf/v;

    move-result-object v0

    sput-object v0, LWf/v;->$VALUES:[LWf/v;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LWf/v;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LWf/v;
    .locals 4

    sget-object v0, LWf/v;->PUBLIC:LWf/v;

    sget-object v1, LWf/v;->PROTECTED:LWf/v;

    sget-object v2, LWf/v;->INTERNAL:LWf/v;

    sget-object v3, LWf/v;->PRIVATE:LWf/v;

    filled-new-array {v0, v1, v2, v3}, [LWf/v;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LWf/v;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LWf/v;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LWf/v;
    .locals 1

    const-class v0, LWf/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LWf/v;

    return-object p0
.end method

.method public static values()[LWf/v;
    .locals 1

    sget-object v0, LWf/v;->$VALUES:[LWf/v;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWf/v;

    return-object v0
.end method
