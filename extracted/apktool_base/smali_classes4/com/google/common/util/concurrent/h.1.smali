.class public final synthetic Lcom/google/common/util/concurrent/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/j;

.field public final synthetic c:Lcom/google/common/util/concurrent/Z;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/j;Lcom/google/common/util/concurrent/Z;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/h;->b:Lcom/google/common/util/concurrent/j;

    iput-object p2, p0, Lcom/google/common/util/concurrent/h;->c:Lcom/google/common/util/concurrent/Z;

    iput p3, p0, Lcom/google/common/util/concurrent/h;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->b:Lcom/google/common/util/concurrent/j;

    iget-object v1, p0, Lcom/google/common/util/concurrent/h;->c:Lcom/google/common/util/concurrent/Z;

    iget v2, p0, Lcom/google/common/util/concurrent/h;->d:I

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/j;->O(Lcom/google/common/util/concurrent/j;Lcom/google/common/util/concurrent/Z;I)V

    return-void
.end method
