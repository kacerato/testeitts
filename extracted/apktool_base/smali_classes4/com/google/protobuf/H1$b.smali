.class public Lcom/google/protobuf/H1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H1$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/H1$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/H1$b;Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H1$b;->b(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H1$b;->c(Lcom/google/protobuf/x;)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/H1$b;->c(Lcom/google/protobuf/x;)V

    iget-object p1, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/x;

    :goto_0
    iget-object p2, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/x;

    new-instance v0, Lcom/google/protobuf/H1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final c(Lcom/google/protobuf/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/x;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H1$b;->e(Lcom/google/protobuf/x;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/H1;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/protobuf/H1;

    invoke-static {p1}, Lcom/google/protobuf/H1;->r0(Lcom/google/protobuf/H1;)Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H1$b;->c(Lcom/google/protobuf/x;)V

    invoke-static {p1}, Lcom/google/protobuf/H1;->s0(Lcom/google/protobuf/H1;)Lcom/google/protobuf/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H1$b;->c(Lcom/google/protobuf/x;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H1;->p:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public final e(Lcom/google/protobuf/x;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/x;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H1$b;->d(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/google/protobuf/H1;->w0(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/x;

    invoke-virtual {v2}, Lcom/google/protobuf/x;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/H1;->w0(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/x;

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/x;

    invoke-virtual {v2}, Lcom/google/protobuf/x;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/x;

    new-instance v4, Lcom/google/protobuf/H1;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V

    move-object v1, v4

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/protobuf/H1;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V

    :goto_1
    iget-object p1, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/x;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H1$b;->d(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/protobuf/H1;->w0(I)I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/x;

    invoke-virtual {v1}, Lcom/google/protobuf/x;->size()I

    move-result v1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/x;

    new-instance v1, Lcom/google/protobuf/H1;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/H1$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
