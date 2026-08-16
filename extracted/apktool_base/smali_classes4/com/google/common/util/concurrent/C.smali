.class public final synthetic Lcom/google/common/util/concurrent/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/F0;

.field public final synthetic c:Lcom/google/common/util/concurrent/r0;

.field public final synthetic d:Lcom/google/common/util/concurrent/Z;

.field public final synthetic e:Lcom/google/common/util/concurrent/Z;

.field public final synthetic f:Lcom/google/common/util/concurrent/D$d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/F0;Lcom/google/common/util/concurrent/r0;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/D$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/C;->b:Lcom/google/common/util/concurrent/F0;

    iput-object p2, p0, Lcom/google/common/util/concurrent/C;->c:Lcom/google/common/util/concurrent/r0;

    iput-object p3, p0, Lcom/google/common/util/concurrent/C;->d:Lcom/google/common/util/concurrent/Z;

    iput-object p4, p0, Lcom/google/common/util/concurrent/C;->e:Lcom/google/common/util/concurrent/Z;

    iput-object p5, p0, Lcom/google/common/util/concurrent/C;->f:Lcom/google/common/util/concurrent/D$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/C;->b:Lcom/google/common/util/concurrent/F0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/C;->c:Lcom/google/common/util/concurrent/r0;

    iget-object v2, p0, Lcom/google/common/util/concurrent/C;->d:Lcom/google/common/util/concurrent/Z;

    iget-object v3, p0, Lcom/google/common/util/concurrent/C;->e:Lcom/google/common/util/concurrent/Z;

    iget-object v4, p0, Lcom/google/common/util/concurrent/C;->f:Lcom/google/common/util/concurrent/D$d;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/util/concurrent/D;->a(Lcom/google/common/util/concurrent/F0;Lcom/google/common/util/concurrent/r0;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/D$d;)V

    return-void
.end method
