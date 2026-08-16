.class public final synthetic Lwn/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Lwn/N;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method
