.class public LYl/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LYl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
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
.field public b:I

.field public final synthetic c:LYl/e;


# direct methods
.method public constructor <init>(LYl/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LYl/e$c;->c:LYl/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LYl/e$c;->b:I

    return-void
.end method

.method public synthetic constructor <init>(LYl/e;ILYl/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LYl/e$c;-><init>(LYl/e;I)V

    return-void
.end method


# virtual methods
.method public a()LYl/h;
    .locals 2

    iget-object v0, p0, LYl/e$c;->c:LYl/e;

    iget v1, p0, LYl/e$c;->b:I

    invoke-virtual {v0, v1}, LYl/e;->J(I)LYl/h;

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

    invoke-virtual {p0}, LYl/e$c;->a()LYl/h;

    move-result-object v0

    return-object v0
.end method
