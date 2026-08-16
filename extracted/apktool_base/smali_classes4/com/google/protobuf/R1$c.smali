.class public Lcom/google/protobuf/R1$c;
.super Lcom/google/protobuf/R1$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/R1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/R1<",
        "TK;TV;>.g;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/protobuf/R1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/R1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/R1$c;->c:Lcom/google/protobuf/R1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/R1$g;-><init>(Lcom/google/protobuf/R1;Lcom/google/protobuf/R1$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/R1;Lcom/google/protobuf/R1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/R1$c;-><init>(Lcom/google/protobuf/R1;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/R1$b;

    iget-object v1, p0, Lcom/google/protobuf/R1$c;->c:Lcom/google/protobuf/R1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/R1$b;-><init>(Lcom/google/protobuf/R1;Lcom/google/protobuf/R1$a;)V

    return-object v0
.end method
