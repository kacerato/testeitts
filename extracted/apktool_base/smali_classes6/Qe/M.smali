.class public final LQe/M;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/K<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LBe/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/K<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQe/M;

    invoke-direct {v0}, LQe/M;-><init>()V

    sput-object v0, LQe/M;->b:LBe/K;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/K;-><init>()V

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, LGe/e;->NEVER:LGe/e;

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    return-void
.end method
