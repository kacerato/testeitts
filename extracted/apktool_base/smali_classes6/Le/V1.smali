.class public final LLe/V1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/V1$a;,
        LLe/V1$b;,
        LLe/V1$d;,
        LLe/V1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;",
        "LBe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final e:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TB;+",
            "Lhn/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(LBe/l;Lhn/b;LFe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Lhn/b<",
            "TB;>;",
            "LFe/o<",
            "-TB;+",
            "Lhn/b<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/V1;->d:Lhn/b;

    iput-object p3, p0, LLe/V1;->e:LFe/o;

    iput p4, p0, LLe/V1;->f:I

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/V1$c;

    new-instance v2, Lcf/e;

    invoke-direct {v2, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-object p1, p0, LLe/V1;->d:Lhn/b;

    iget-object v3, p0, LLe/V1;->e:LFe/o;

    iget v4, p0, LLe/V1;->f:I

    invoke-direct {v1, v2, p1, v3, v4}, LLe/V1$c;-><init>(Lhn/c;Lhn/b;LFe/o;I)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
