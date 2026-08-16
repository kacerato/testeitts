.class public Lcom/google/protobuf/t0$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t0$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t0$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/protobuf/t0$f;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/t0$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/t0$f$a;->a:Lcom/google/protobuf/t0$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/t0$f;Lcom/google/protobuf/t0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$f$a;-><init>(Lcom/google/protobuf/t0$f;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0$f$a;->a:Lcom/google/protobuf/t0$f;

    invoke-virtual {v0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-void
.end method
