.class public Lcom/google/common/util/concurrent/w$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w;->u()Lcom/google/common/util/concurrent/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/w;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$l;->b:Lcom/google/common/util/concurrent/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$l;->b:Lcom/google/common/util/concurrent/w;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->WILL_CLOSE:Lcom/google/common/util/concurrent/w$y;

    sget-object v2, Lcom/google/common/util/concurrent/w$y;->CLOSING:Lcom/google/common/util/concurrent/w$y;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/w;->d(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$l;->b:Lcom/google/common/util/concurrent/w;

    invoke-static {v0}, Lcom/google/common/util/concurrent/w;->b(Lcom/google/common/util/concurrent/w;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$l;->b:Lcom/google/common/util/concurrent/w;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->CLOSED:Lcom/google/common/util/concurrent/w$y;

    invoke-static {v0, v2, v1}, Lcom/google/common/util/concurrent/w;->d(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)V

    return-void
.end method
