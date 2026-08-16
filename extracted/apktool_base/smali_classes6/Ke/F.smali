.class public final LKe/F;
.super LBe/c;
.source "SourceFile"


# static fields
.field public static final b:LBe/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LKe/F;

    invoke-direct {v0}, LKe/F;-><init>()V

    sput-object v0, LKe/F;->b:LBe/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 1

    sget-object v0, LGe/e;->NEVER:LGe/e;

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    return-void
.end method
