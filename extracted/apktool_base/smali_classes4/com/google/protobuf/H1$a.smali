.class public Lcom/google/protobuf/H1$a;
.super Lcom/google/protobuf/x$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/H1;->L()Lcom/google/protobuf/x$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final b:Lcom/google/protobuf/H1$c;

.field public c:Lcom/google/protobuf/x$g;

.field public final synthetic d:Lcom/google/protobuf/H1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/H1;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/H1$a;->d:Lcom/google/protobuf/H1;

    invoke-direct {p0}, Lcom/google/protobuf/x$c;-><init>()V

    new-instance v0, Lcom/google/protobuf/H1$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H1$c;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V

    iput-object v0, p0, Lcom/google/protobuf/H1$a;->b:Lcom/google/protobuf/H1$c;

    invoke-virtual {p0}, Lcom/google/protobuf/H1$a;->b()Lcom/google/protobuf/x$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H1$a;->c:Lcom/google/protobuf/x$g;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/protobuf/x$g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H1$a;->b:Lcom/google/protobuf/H1$c;

    invoke-virtual {v0}, Lcom/google/protobuf/H1$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H1$a;->b:Lcom/google/protobuf/H1$c;

    invoke-virtual {v0}, Lcom/google/protobuf/H1$c;->d()Lcom/google/protobuf/x$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/x;->L()Lcom/google/protobuf/x$g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H1$a;->c:Lcom/google/protobuf/x$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()B
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H1$a;->c:Lcom/google/protobuf/x$g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/x$g;->y()B

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/H1$a;->c:Lcom/google/protobuf/x$g;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H1$a;->b()Lcom/google/protobuf/x$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H1$a;->c:Lcom/google/protobuf/x$g;

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
