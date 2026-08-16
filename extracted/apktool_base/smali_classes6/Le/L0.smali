.class public final LLe/L0;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/L0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:LFe/a;


# direct methods
.method public constructor <init>(LBe/l;IZZLFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;IZZ",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput p2, p0, LLe/L0;->d:I

    iput-boolean p3, p0, LLe/L0;->e:Z

    iput-boolean p4, p0, LLe/L0;->f:Z

    iput-object p5, p0, LLe/L0;->g:LFe/a;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v7, LLe/L0$a;

    iget v3, p0, LLe/L0;->d:I

    iget-boolean v4, p0, LLe/L0;->e:Z

    iget-boolean v5, p0, LLe/L0;->f:Z

    iget-object v6, p0, LLe/L0;->g:LFe/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LLe/L0$a;-><init>(Lhn/c;IZZLFe/a;)V

    invoke-virtual {v0, v7}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
