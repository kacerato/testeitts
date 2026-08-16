.class public final enum LLe/t0$i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LFe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLe/t0$i;",
        ">;",
        "LFe/g<",
        "Lhn/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLe/t0$i;

.field public static final enum INSTANCE:LLe/t0$i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLe/t0$i;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLe/t0$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLe/t0$i;->INSTANCE:LLe/t0$i;

    filled-new-array {v0}, [LLe/t0$i;

    move-result-object v0

    sput-object v0, LLe/t0$i;->$VALUES:[LLe/t0$i;

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

.method public static valueOf(Ljava/lang/String;)LLe/t0$i;
    .locals 1

    const-class v0, LLe/t0$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLe/t0$i;

    return-object p0
.end method

.method public static values()[LLe/t0$i;
    .locals 1

    sget-object v0, LLe/t0$i;->$VALUES:[LLe/t0$i;

    invoke-virtual {v0}, [LLe/t0$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLe/t0$i;

    return-object v0
.end method


# virtual methods
.method public a(Lhn/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lhn/d;

    invoke-virtual {p0, p1}, LLe/t0$i;->a(Lhn/d;)V

    return-void
.end method
