.class public final Lcom/google/common/util/concurrent/w$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/w$o;
    .annotation build Lq3/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w$o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$w;->a:Lcom/google/common/util/concurrent/w$o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/io/Closeable;",
            ">(TC;",
            "Ljava/util/concurrent/Executor;",
            ")TC;"
        }
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$w;->a:Lcom/google/common/util/concurrent/w$o;

    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    invoke-virtual {v0, v1, p2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p1
.end method
