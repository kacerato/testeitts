.class public Lcom/google/protobuf/Q0$c$a;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/Q0$c;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/Q0;Lcom/google/protobuf/A2$b;Lcom/google/protobuf/A2$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/c<",
        "Lcom/google/protobuf/Q0<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/protobuf/Q0$c;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Q0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Q0$c$a;->a:Lcom/google/protobuf/Q0$c;

    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Q0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            ")",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Q0;

    iget-object v1, p0, Lcom/google/protobuf/Q0$c$a;->a:Lcom/google/protobuf/Q0$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/protobuf/Q0;-><init>(Lcom/google/protobuf/Q0$c;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Q0$a;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Q0$c$a;->c(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Q0;

    move-result-object p1

    return-object p1
.end method
