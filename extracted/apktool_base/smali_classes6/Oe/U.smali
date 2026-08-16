.class public final LOe/U;
.super LBe/B;
.source "SourceFile"

# interfaces
.implements LIe/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/B<",
        "Ljava/lang/Object;",
        ">;",
        "LIe/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LBe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/B<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LOe/U;

    invoke-direct {v0}, LOe/U;-><init>()V

    sput-object v0, LOe/U;->b:LBe/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/B;-><init>()V

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, LGe/e;->c(LBe/I;)V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
