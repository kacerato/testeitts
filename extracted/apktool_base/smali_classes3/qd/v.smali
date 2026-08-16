.class public final Lqd/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqd/v$b;
    }
.end annotation


# instance fields
.field public final b:Lqd/v$b;


# direct methods
.method public constructor <init>(Lqd/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/y<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqd/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lqd/v$b;-><init>(Lqd/y;Lqd/v$a;)V

    iput-object v0, p0, Lqd/v;->b:Lqd/v$b;

    return-void
.end method


# virtual methods
.method public R()Lqd/z;
    .locals 1

    iget-object v0, p0, Lqd/v;->b:Lqd/v$b;

    return-object v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
