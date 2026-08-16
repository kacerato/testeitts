.class public Lcom/google/protobuf/t0$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t0$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/t0$n;->o(Lcom/google/protobuf/Descriptors$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/protobuf/Descriptors$f;

.field public final synthetic b:Lcom/google/protobuf/t0$n;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/t0$n;Lcom/google/protobuf/Descriptors$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$descriptor"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/t0$n$a;->b:Lcom/google/protobuf/t0$n;

    iput-object p2, p0, Lcom/google/protobuf/t0$n$a;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescriptor()Lcom/google/protobuf/Descriptors$f;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0$n$a;->a:Lcom/google/protobuf/Descriptors$f;

    return-object v0
.end method
