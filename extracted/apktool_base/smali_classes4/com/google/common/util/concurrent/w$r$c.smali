.class public Lcom/google/common/util/concurrent/w$r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "Lcom/google/common/util/concurrent/w<",
        "*>;",
        "Lcom/google/common/util/concurrent/F<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w<",
            "*>;)",
            "Lcom/google/common/util/concurrent/F<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/util/concurrent/w;->a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/w;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/w$r$c;->a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    return-object p1
.end method
