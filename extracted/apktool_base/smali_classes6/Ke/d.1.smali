.class public final LKe/d;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/d$a;
    }
.end annotation


# instance fields
.field public final b:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Lhn/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/d;->b:Lhn/b;

    iput p2, p0, LKe/d;->c:I

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 3

    iget-object v0, p0, LKe/d;->b:Lhn/b;

    new-instance v1, LKe/d$a;

    iget v2, p0, LKe/d;->c:I

    invoke-direct {v1, p1, v2}, LKe/d$a;-><init>(LBe/f;I)V

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
