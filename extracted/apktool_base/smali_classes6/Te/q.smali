.class public LTe/q;
.super LTe/p;
.source "SourceFile"


# instance fields
.field public final G:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LTe/p;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LTe/q;->G:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
