.class public final LOe/M1;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/M1$b;,
        LOe/M1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:[LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LBe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>([LBe/G;Ljava/lang/Iterable;LFe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LBe/G<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/M1;->b:[LBe/G;

    iput-object p2, p0, LOe/M1;->c:Ljava/lang/Iterable;

    iput-object p3, p0, LOe/M1;->d:LFe/o;

    iput p4, p0, LOe/M1;->e:I

    iput-boolean p5, p0, LOe/M1;->f:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/M1;->b:[LBe/G;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [LBe/B;

    iget-object v1, p0, LOe/M1;->c:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LBe/G;

    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [LBe/G;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    array-length v3, v0

    :cond_2
    if-nez v3, :cond_3

    invoke-static {p1}, LGe/e;->c(LBe/I;)V

    return-void

    :cond_3
    new-instance v1, LOe/M1$a;

    iget-object v2, p0, LOe/M1;->d:LFe/o;

    iget-boolean v4, p0, LOe/M1;->f:Z

    invoke-direct {v1, p1, v2, v3, v4}, LOe/M1$a;-><init>(LBe/I;LFe/o;IZ)V

    iget p1, p0, LOe/M1;->e:I

    invoke-virtual {v1, v0, p1}, LOe/M1$a;->g([LBe/G;I)V

    return-void
.end method
