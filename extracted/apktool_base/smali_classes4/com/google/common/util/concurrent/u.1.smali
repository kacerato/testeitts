.class public final synthetic Lcom/google/common/util/concurrent/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lw2/Q;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lw2/Q;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/u;->b:Lw2/Q;

    iput-object p2, p0, Lcom/google/common/util/concurrent/u;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/u;->b:Lw2/Q;

    iget-object v1, p0, Lcom/google/common/util/concurrent/u;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/v;->a(Lw2/Q;Ljava/lang/Runnable;)V

    return-void
.end method
