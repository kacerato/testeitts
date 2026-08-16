.class public final enum LB2/o$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LB2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB2/o$b;",
        ">;",
        "LB2/n<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB2/o$b;

.field public static final enum INSTANCE:LB2/o$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LB2/o$b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB2/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB2/o$b;->INSTANCE:LB2/o$b;

    invoke-static {}, LB2/o$b;->a()[LB2/o$b;

    move-result-object v0

    sput-object v0, LB2/o$b;->$VALUES:[LB2/o$b;

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

.method public static synthetic a()[LB2/o$b;
    .locals 1

    sget-object v0, LB2/o$b;->INSTANCE:LB2/o$b;

    filled-new-array {v0}, [LB2/o$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LB2/o$b;
    .locals 1

    const-class v0, LB2/o$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB2/o$b;

    return-object p0
.end method

.method public static values()[LB2/o$b;
    .locals 1

    sget-object v0, LB2/o$b;->$VALUES:[LB2/o$b;

    invoke-virtual {v0}, [LB2/o$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB2/o$b;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Integer;LB2/G;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, LB2/G;->putInt(I)LB2/G;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Funnels.integerFunnel()"

    return-object v0
.end method

.method public bridge synthetic ue(Ljava/lang/Object;LB2/G;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, LB2/o$b;->b(Ljava/lang/Integer;LB2/G;)V

    return-void
.end method
