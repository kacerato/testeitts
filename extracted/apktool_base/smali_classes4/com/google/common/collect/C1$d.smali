.class public final Lcom/google/common/collect/C1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/B1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/C1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/B1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/d;
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/P1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1<",
            "TE;",
            "Lcom/google/common/collect/O1$a;",
            "**>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/O1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lw2/m;->c()Lw2/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/O1;->h(Lw2/m;)Lcom/google/common/collect/O1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/P1;->e(Lcom/google/common/collect/O1;)Lcom/google/common/collect/P1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/C1$d;->a:Lcom/google/common/collect/P1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/C1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/C1$d;-><init>(Lcom/google/common/collect/O1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/C1$d;->a:Lcom/google/common/collect/P1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/P1;->f(Ljava/lang/Object;)Lcom/google/common/collect/P1$j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/common/collect/P1$j;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/C1$d;->a:Lcom/google/common/collect/P1;

    sget-object v1, Lcom/google/common/collect/O1$a;->VALUE:Lcom/google/common/collect/O1$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/P1;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/O1$a;

    if-nez v0, :cond_0

    return-object p1
.end method
