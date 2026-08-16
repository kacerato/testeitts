.class public Lcom/google/protobuf/S0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/S0$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/S0$b;->a:Lcom/google/protobuf/Q0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/Y0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/protobuf/Y0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/S0$b;->a:Lcom/google/protobuf/Q0;

    invoke-virtual {v0}, Lcom/google/protobuf/Q0;->w6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q0$b;->w6(Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Q0$b;->z6(Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Q0$b;->m1()Lcom/google/protobuf/Q0;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/protobuf/Y0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/S0$b;->a:Lcom/google/protobuf/Q0;

    return-object v0
.end method

.method public c(Lcom/google/protobuf/Y0;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Y0;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/Q0;

    invoke-virtual {p1}, Lcom/google/protobuf/Q0;->s6()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Q0;->u6()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
