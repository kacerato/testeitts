.class public final LLe/X;
.super LBe/l;
.source "SourceFile"

# interfaces
.implements LIe/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/l<",
        "Ljava/lang/Object;",
        ">;",
        "LIe/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LLe/X;

    invoke-direct {v0}, LLe/X;-><init>()V

    sput-object v0, LLe/X;->c:LBe/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m6(Lhn/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, LUe/g;->a(Lhn/c;)V

    return-void
.end method
