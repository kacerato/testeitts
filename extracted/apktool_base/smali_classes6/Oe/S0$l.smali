.class public final LOe/S0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOe/S0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LOe/S0$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:LBe/J;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOe/S0$l;->a:I

    iput-wide p2, p0, LOe/S0$l;->b:J

    iput-object p4, p0, LOe/S0$l;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/S0$l;->d:LBe/J;

    return-void
.end method


# virtual methods
.method public call()LOe/S0$h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOe/S0$h<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, LOe/S0$m;

    iget v1, p0, LOe/S0$l;->a:I

    iget-wide v2, p0, LOe/S0$l;->b:J

    iget-object v4, p0, LOe/S0$l;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LOe/S0$l;->d:LBe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LOe/S0$m;-><init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    return-object v6
.end method
