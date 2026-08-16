.class public final LOe/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "LVe/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(LBe/B;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/p0$a;->b:LBe/B;

    iput p2, p0, LOe/p0$a;->c:I

    return-void
.end method


# virtual methods
.method public a()LVe/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LOe/p0$a;->b:LBe/B;

    iget v1, p0, LOe/p0$a;->c:I

    invoke-virtual {v0, v1}, LBe/B;->G4(I)LVe/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, LOe/p0$a;->a()LVe/a;

    move-result-object v0

    return-object v0
.end method
