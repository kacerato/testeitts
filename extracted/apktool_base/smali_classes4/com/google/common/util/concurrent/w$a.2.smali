.class public Lcom/google/common/util/concurrent/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w;->v(Lcom/google/common/util/concurrent/w$A;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/w$A;

.field public final synthetic c:Lcom/google/common/util/concurrent/w;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$A;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$a;->c:Lcom/google/common/util/concurrent/w;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$a;->b:Lcom/google/common/util/concurrent/w$A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$a;->b:Lcom/google/common/util/concurrent/w$A;

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$a;->c:Lcom/google/common/util/concurrent/w;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/w;->e(Lcom/google/common/util/concurrent/w$A;Lcom/google/common/util/concurrent/w;)V

    return-void
.end method
