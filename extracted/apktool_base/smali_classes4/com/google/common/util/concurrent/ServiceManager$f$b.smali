.class public Lcom/google/common/util/concurrent/ServiceManager$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/c0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$f;->h(Lcom/google/common/util/concurrent/p0;)V
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


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/p0;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$f;Lcom/google/common/util/concurrent/p0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f$b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/ServiceManager$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f$b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ServiceManager$c;->a(Lcom/google/common/util/concurrent/p0;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/ServiceManager$c;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$f$b;->a(Lcom/google/common/util/concurrent/ServiceManager$c;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f$b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "failed({service="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "})"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
