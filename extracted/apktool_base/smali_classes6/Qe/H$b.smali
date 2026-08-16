.class public final enum LQe/H$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LFe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LQe/H$b;",
        ">;",
        "LFe/o<",
        "LBe/Q;",
        "Lhn/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LQe/H$b;

.field public static final enum INSTANCE:LQe/H$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQe/H$b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LQe/H$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQe/H$b;->INSTANCE:LQe/H$b;

    filled-new-array {v0}, [LQe/H$b;

    move-result-object v0

    sput-object v0, LQe/H$b;->$VALUES:[LQe/H$b;

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

.method public static valueOf(Ljava/lang/String;)LQe/H$b;
    .locals 1

    const-class v0, LQe/H$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQe/H$b;

    return-object p0
.end method

.method public static values()[LQe/H$b;
    .locals 1

    sget-object v0, LQe/H$b;->$VALUES:[LQe/H$b;

    invoke-virtual {v0}, [LQe/H$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQe/H$b;

    return-object v0
.end method


# virtual methods
.method public a(LBe/Q;)Lhn/b;
    .locals 1

    new-instance v0, LQe/V;

    invoke-direct {v0, p1}, LQe/V;-><init>(LBe/Q;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LBe/Q;

    invoke-virtual {p0, p1}, LQe/H$b;->a(LBe/Q;)Lhn/b;

    move-result-object p1

    return-object p1
.end method
