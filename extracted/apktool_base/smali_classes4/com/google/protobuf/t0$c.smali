.class public Lcom/google/protobuf/t0$c;
.super Lcom/google/protobuf/t0$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/t0;->z6(Lcom/google/protobuf/Y0;Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/t0$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/protobuf/Y0;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Y0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$scope",
            "val$name"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/t0$c;->b:Lcom/google/protobuf/Y0;

    iput-object p2, p0, Lcom/google/protobuf/t0$c;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$h;-><init>(Lcom/google/protobuf/t0$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$f;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/t0$c;->b:Lcom/google/protobuf/Y0;

    invoke-interface {v0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$b;->j(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    return-object v0
.end method
