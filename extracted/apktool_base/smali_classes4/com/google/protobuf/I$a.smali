.class public Lcom/google/protobuf/I$a;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/I;->a(Lcom/google/protobuf/w1;)Lcom/google/protobuf/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/protobuf/w1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/w1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$parser"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/I$a;->a:Lcom/google/protobuf/w1;

    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;
    .locals 1
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
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->e()V

    iget-object v0, p0, Lcom/google/protobuf/I$a;->a:Lcom/google/protobuf/w1;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/w1;->parsePartialFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Y0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/protobuf/C;->m0()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/protobuf/C;->m0()V

    throw p2
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/I$a;->c(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1
.end method
