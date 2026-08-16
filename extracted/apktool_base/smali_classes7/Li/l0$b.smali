.class public final enum LLi/l0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLi/l0$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLi/l0$b;

.field public static final enum C1C2C3:LLi/l0$b;

.field public static final enum C1C3C2:LLi/l0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLi/l0$b;

    const-string v1, "C1C2C3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLi/l0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/l0$b;->C1C2C3:LLi/l0$b;

    new-instance v0, LLi/l0$b;

    const-string v1, "C1C3C2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLi/l0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/l0$b;->C1C3C2:LLi/l0$b;

    invoke-static {}, LLi/l0$b;->a()[LLi/l0$b;

    move-result-object v0

    sput-object v0, LLi/l0$b;->$VALUES:[LLi/l0$b;

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

.method public static synthetic a()[LLi/l0$b;
    .locals 2

    sget-object v0, LLi/l0$b;->C1C2C3:LLi/l0$b;

    sget-object v1, LLi/l0$b;->C1C3C2:LLi/l0$b;

    filled-new-array {v0, v1}, [LLi/l0$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLi/l0$b;
    .locals 1

    const-class v0, LLi/l0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLi/l0$b;

    return-object p0
.end method

.method public static values()[LLi/l0$b;
    .locals 1

    sget-object v0, LLi/l0$b;->$VALUES:[LLi/l0$b;

    invoke-virtual {v0}, [LLi/l0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLi/l0$b;

    return-object v0
.end method
