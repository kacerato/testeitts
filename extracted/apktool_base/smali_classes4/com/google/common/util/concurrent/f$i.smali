.class public final Lcom/google/common/util/concurrent/f$i;
.super Lcom/google/common/util/concurrent/f0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/util/concurrent/f;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/f$i;->e:Lcom/google/common/util/concurrent/f;

    invoke-static {p1}, Lcom/google/common/util/concurrent/f;->i(Lcom/google/common/util/concurrent/f;)Lcom/google/common/util/concurrent/f0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/f0$a;-><init>(Lcom/google/common/util/concurrent/f0;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f$i;->e:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
