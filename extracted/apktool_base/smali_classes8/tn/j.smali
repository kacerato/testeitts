.class public final synthetic Ltn/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ltn/r;

.field public final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Ltn/r;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/j;->b:Ltn/r;

    iput-object p2, p0, Ltn/j;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ltn/j;->b:Ltn/r;

    iget-object v1, p0, Ltn/j;->c:Ljava/util/concurrent/ExecutorService;

    check-cast p1, Ltn/u;

    invoke-static {v0, v1, p1}, Ltn/r;->h(Ltn/r;Ljava/util/concurrent/ExecutorService;Ltn/u;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
