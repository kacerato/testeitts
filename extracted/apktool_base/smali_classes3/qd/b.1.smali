.class public final Lqd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/i;
.implements Lqd/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lqd/i<",
        "TT;>;",
        "Lqd/t;"
    }
.end annotation


# instance fields
.field public final a:[Lqd/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lqd/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lqd/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/i<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd/b;->a:[Lqd/i;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lqd/b;->a:[Lqd/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3, p4}, Lqd/i;->b(Ljava/lang/Object;JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lqd/b;->a:[Lqd/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lqd/t;

    if-eqz v4, :cond_0

    check-cast v3, Lqd/t;

    invoke-interface {v3}, Lqd/t;->c()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    iget-object v0, p0, Lqd/b;->a:[Lqd/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lqd/t;

    if-eqz v4, :cond_0

    check-cast v3, Lqd/t;

    invoke-interface {v3}, Lqd/t;->onStart()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
