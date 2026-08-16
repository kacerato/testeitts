.class public final Lcom/google/common/collect/C1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/C1$c;,
        Lcom/google/common/collect/C1$d;,
        Lcom/google/common/collect/C1$b;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/collect/B1;)Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/B1<",
            "TE;>;)",
            "Lw2/t<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/C1$c;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/B1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/C1$c;-><init>(Lcom/google/common/collect/B1;)V

    return-object v0
.end method

.method public static b()Lcom/google/common/collect/C1$b;
    .locals 2

    new-instance v0, Lcom/google/common/collect/C1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/C1$b;-><init>(Lcom/google/common/collect/C1$a;)V

    return-object v0
.end method

.method public static c()Lcom/google/common/collect/B1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/B1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/C1;->b()Lcom/google/common/collect/C1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/C1$b;->c()Lcom/google/common/collect/C1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/C1$b;->a()Lcom/google/common/collect/B1;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/google/common/collect/B1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/B1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/c;
        value = "java.lang.ref.WeakReference"
    .end annotation

    invoke-static {}, Lcom/google/common/collect/C1;->b()Lcom/google/common/collect/C1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/C1$b;->d()Lcom/google/common/collect/C1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/C1$b;->a()Lcom/google/common/collect/B1;

    move-result-object v0

    return-object v0
.end method
