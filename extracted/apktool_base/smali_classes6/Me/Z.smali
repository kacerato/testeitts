.class public final LMe/Z;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/s<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LMe/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LMe/Z;

    invoke-direct {v0}, LMe/Z;-><init>()V

    sput-object v0, LMe/Z;->b:LMe/Z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/s;-><init>()V

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, LGe/e;->NEVER:LGe/e;

    invoke-interface {p1, v0}, LBe/v;->e(LDe/c;)V

    return-void
.end method
