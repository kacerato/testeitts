.class public LYl/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LYl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "LYl/h;",
        ">;"
    }
.end annotation


# instance fields
.field public b:LYl/h;

.field public c:LYl/h;


# direct methods
.method public constructor <init>(LYl/h;LYl/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYl/e$b;->b:LYl/h;

    iput-object p2, p0, LYl/e$b;->c:LYl/h;

    return-void
.end method

.method public synthetic constructor <init>(LYl/h;LYl/h;LYl/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LYl/e$b;-><init>(LYl/h;LYl/h;)V

    return-void
.end method


# virtual methods
.method public a()LYl/h;
    .locals 2

    iget-object v0, p0, LYl/e$b;->b:LYl/h;

    iget-object v1, p0, LYl/e$b;->c:LYl/h;

    invoke-static {v0, v1}, LYl/h;->a(LYl/h;LYl/h;)LYl/h;

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

    invoke-virtual {p0}, LYl/e$b;->a()LYl/h;

    move-result-object v0

    return-object v0
.end method
