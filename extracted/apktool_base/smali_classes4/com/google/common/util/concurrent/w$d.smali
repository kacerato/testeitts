.class public Lcom/google/common/util/concurrent/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/P;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w;->t(Lcom/google/common/util/concurrent/Z;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/P<",
        "Ljava/io/Closeable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/w;

.field public final synthetic b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$d;->a:Lcom/google/common/util/concurrent/w;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$d;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/w$d;->c(Ljava/io/Closeable;)V

    return-void
.end method

.method public c(Ljava/io/Closeable;)V
    .locals 2
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$d;->a:Lcom/google/common/util/concurrent/w;

    invoke-static {v0}, Lcom/google/common/util/concurrent/w;->f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/w$o;->a(Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/w$w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$d;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/util/concurrent/w$w;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    return-void
.end method
