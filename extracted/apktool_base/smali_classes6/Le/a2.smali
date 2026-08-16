.class public final LLe/a2;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/a2$b;,
        LLe/a2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:[Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final e:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>([Lhn/b;Ljava/lang/Iterable;LFe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/b<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/a2;->c:[Lhn/b;

    iput-object p2, p0, LLe/a2;->d:Ljava/lang/Iterable;

    iput-object p3, p0, LLe/a2;->e:LFe/o;

    iput p4, p0, LLe/a2;->f:I

    iput-boolean p5, p0, LLe/a2;->g:Z

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a2;->c:[Lhn/b;

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [Lhn/b;

    iget-object v1, p0, LLe/a2;->d:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhn/b;

    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [Lhn/b;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    :goto_1
    move v7, v3

    goto :goto_2

    :cond_2
    array-length v3, v0

    goto :goto_1

    :goto_2
    if-nez v7, :cond_3

    invoke-static {p1}, LUe/g;->a(Lhn/c;)V

    return-void

    :cond_3
    new-instance v8, LLe/a2$a;

    iget-object v3, p0, LLe/a2;->e:LFe/o;

    iget v5, p0, LLe/a2;->f:I

    iget-boolean v6, p0, LLe/a2;->g:Z

    move-object v1, v8

    move-object v2, p1

    move v4, v7

    invoke-direct/range {v1 .. v6}, LLe/a2$a;-><init>(Lhn/c;LFe/o;IIZ)V

    invoke-interface {p1, v8}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {v8, v0, v7}, LLe/a2$a;->d([Lhn/b;I)V

    return-void
.end method
