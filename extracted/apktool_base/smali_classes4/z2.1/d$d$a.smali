.class public Lz2/d$d$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Queue<",
        "Lz2/d$d$c;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lz2/d$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lz2/d$d$c;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i2;->d()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz2/d$d$a;->a()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
