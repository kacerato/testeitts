.class public final LKe/A;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/A$a;
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

.field public final d:Z


# direct methods
.method public constructor <init>(Lhn/b;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/A;->b:Lhn/b;

    iput p2, p0, LKe/A;->c:I

    iput-boolean p3, p0, LKe/A;->d:Z

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 3

    new-instance v0, LKe/A$a;

    iget v1, p0, LKe/A;->c:I

    iget-boolean v2, p0, LKe/A;->d:Z

    invoke-direct {v0, p1, v1, v2}, LKe/A$a;-><init>(LBe/f;IZ)V

    iget-object p1, p0, LKe/A;->b:Lhn/b;

    invoke-interface {p1, v0}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
