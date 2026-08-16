.class public final LOe/D0;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/B<",
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

    new-instance v0, LOe/D0;

    invoke-direct {v0}, LOe/D0;-><init>()V

    sput-object v0, LOe/D0;->b:LBe/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/B;-><init>()V

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, LGe/e;->NEVER:LGe/e;

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    return-void
.end method
