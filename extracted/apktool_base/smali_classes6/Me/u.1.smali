.class public final LMe/u;
.super LBe/s;
.source "SourceFile"

# interfaces
.implements LIe/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/s<",
        "Ljava/lang/Object;",
        ">;",
        "LIe/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LMe/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LMe/u;

    invoke-direct {v0}, LMe/u;-><init>()V

    sput-object v0, LMe/u;->b:LMe/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/s;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t1(LBe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, LGe/e;->b(LBe/v;)V

    return-void
.end method
