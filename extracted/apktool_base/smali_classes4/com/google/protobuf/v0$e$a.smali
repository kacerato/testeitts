.class public Lcom/google/protobuf/v0$e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/v0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/v0$g;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/v0$g;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final synthetic d:Lcom/google/protobuf/v0$e;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/v0$e;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "messageSetWireFormat"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/v0$e$a;->d:Lcom/google/protobuf/v0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object p1, p1, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {p1}, Lcom/google/protobuf/o0;->I()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/v0$e$a;->a:Ljava/util/Iterator;

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/protobuf/v0$e$a;->b:Ljava/util/Map$Entry;

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/google/protobuf/v0$e$a;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/v0$e;ZLcom/google/protobuf/v0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/v0$e$a;-><init>(Lcom/google/protobuf/v0$e;Z)V

    return-void
.end method


# virtual methods
.method public a(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "end",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/v0$e$a;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->getNumber()I

    move-result v0

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/v0$e$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0$g;

    iget-boolean v1, p0, Lcom/google/protobuf/v0$e$a;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/A2$c;->MESSAGE:Lcom/google/protobuf/A2$c;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->Z1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->getNumber()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/v0$e$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->P1(ILcom/google/protobuf/b1;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/v0$e$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/o0;->U(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/v0$e$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/v0$e$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/protobuf/v0$e$a;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/v0$e$a;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_2
    return-void
.end method
