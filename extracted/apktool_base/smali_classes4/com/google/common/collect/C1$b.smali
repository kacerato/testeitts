.class public Lcom/google/common/collect/C1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/C1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/O1;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/C1$b;->a:Lcom/google/common/collect/O1;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/common/collect/C1$b;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/C1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/C1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/B1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/B1<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/collect/C1$b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/C1$b;->a:Lcom/google/common/collect/O1;

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    :cond_0
    new-instance v0, Lcom/google/common/collect/C1$d;

    iget-object v1, p0, Lcom/google/common/collect/C1$b;->a:Lcom/google/common/collect/O1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/C1$d;-><init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/C1$a;)V

    return-object v0
.end method

.method public b(I)Lcom/google/common/collect/C1$b;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/C1$b;->a:Lcom/google/common/collect/O1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/O1;->a(I)Lcom/google/common/collect/O1;

    return-object p0
.end method

.method public c()Lcom/google/common/collect/C1$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/C1$b;->b:Z

    return-object p0
.end method

.method public d()Lcom/google/common/collect/C1$b;
    .locals 1
    .annotation build Lv2/c;
        value = "java.lang.ref.WeakReference"
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/C1$b;->b:Z

    return-object p0
.end method
