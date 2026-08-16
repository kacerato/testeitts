.class public abstract LA2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation runtime LI2/j;
    containerOf = {
        "N"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/u$c;,
        LA2/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LA2/u;->b:Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LA2/u;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;LA2/u$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LA2/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static j(LA2/z;Ljava/lang/Object;Ljava/lang/Object;)LA2/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "*>;TN;TN;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, LA2/z;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, LA2/u;->o(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static k(LA2/T;Ljava/lang/Object;Ljava/lang/Object;)LA2/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "**>;TN;TN;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, LA2/T;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, LA2/u;->o(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(TN;TN;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LA2/u$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;LA2/u$a;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(TN;TN;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/u$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LA2/u$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;LA2/u$a;)V

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TN;"
        }
    .end annotation

    iget-object v0, p0, LA2/u;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LA2/u;->c:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, LA2/u;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LA2/u;->b:Ljava/lang/Object;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "EndpointPair "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not contain node "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract d()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
.end method

.method public final g()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/u;->b:Ljava/lang/Object;

    iget-object v1, p0, LA2/u;->c:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->B([Ljava/lang/Object;)Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, LA2/u;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract hashCode()I
.end method

.method public final i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, LA2/u;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, LA2/u;->g()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public abstract m()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public abstract n()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method
