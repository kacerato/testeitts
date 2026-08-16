.class public final Lcom/google/common/reflect/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/i1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1$b<",
            "Lcom/google/common/reflect/p<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/e$b;->a:Lcom/google/common/collect/i1$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/reflect/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/reflect/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/e<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/e;

    iget-object v1, p0, Lcom/google/common/reflect/e$b;->a:Lcom/google/common/collect/i1$b;

    invoke-virtual {v1}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/e;-><init>(Lcom/google/common/collect/i1;Lcom/google/common/reflect/e$a;)V

    return-object v0
.end method

.method public b(Lcom/google/common/reflect/p;Ljava/lang/Object;)Lcom/google/common/reflect/e$b;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/p<",
            "TT;>;TT;)",
            "Lcom/google/common/reflect/e$b<",
            "TB;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/e$b;->a:Lcom/google/common/collect/i1$b;

    invoke-virtual {p1}, Lcom/google/common/reflect/p;->V()Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/reflect/e$b;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/google/common/reflect/e$b<",
            "TB;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/e$b;->a:Lcom/google/common/collect/i1$b;

    invoke-static {p1}, Lcom/google/common/reflect/p;->T(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    return-object p0
.end method
