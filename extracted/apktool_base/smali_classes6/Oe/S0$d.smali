.class public final LOe/S0$d;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final f:J = 0x25dd165f0e0e7417L


# instance fields
.field public final b:LOe/S0$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/S0$j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;

.field public volatile e:Z


# direct methods
.method public constructor <init>(LOe/S0$j;LBe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/S0$j<",
            "TT;>;",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/S0$d;->b:LOe/S0$j;

    iput-object p2, p0, LOe/S0$d;->c:LBe/I;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    iget-object v0, p0, LOe/S0$d;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/S0$d;->e:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LOe/S0$d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/S0$d;->e:Z

    iget-object v0, p0, LOe/S0$d;->b:LOe/S0$j;

    invoke-virtual {v0, p0}, LOe/S0$j;->c(LOe/S0$d;)V

    const/4 v0, 0x0

    iput-object v0, p0, LOe/S0$d;->d:Ljava/lang/Object;

    :cond_0
    return-void
.end method
