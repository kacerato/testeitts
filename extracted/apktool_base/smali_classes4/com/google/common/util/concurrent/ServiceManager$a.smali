.class public Lcom/google/common/util/concurrent/ServiceManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/c0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/c0$a<",
        "Lcom/google/common/util/concurrent/ServiceManager$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/ServiceManager$c;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/ServiceManager$c;->b()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/ServiceManager$c;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$a;->a(Lcom/google/common/util/concurrent/ServiceManager$c;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "healthy()"

    return-object v0
.end method
