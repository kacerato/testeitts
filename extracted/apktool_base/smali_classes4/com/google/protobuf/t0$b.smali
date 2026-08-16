.class public Lcom/google/protobuf/t0$b;
.super Lcom/google/protobuf/t0$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/t0;->y6(Lcom/google/protobuf/Y0;ILjava/lang/Class;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/t0$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/protobuf/Y0;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Y0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$scope",
            "val$descriptorIndex"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/t0$b;->b:Lcom/google/protobuf/Y0;

    iput p2, p0, Lcom/google/protobuf/t0$b;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$h;-><init>(Lcom/google/protobuf/t0$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$f;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/t0$b;->b:Lcom/google/protobuf/Y0;

    invoke-interface {v0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->r()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/t0$b;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$f;

    return-object v0
.end method
