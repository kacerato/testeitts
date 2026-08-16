.class public final Lcom/google/protobuf/Q0$c;
.super Lcom/google/protobuf/R0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/R0$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/protobuf/Descriptors$b;

.field public final f:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/Q0;Lcom/google/protobuf/A2$b;Lcom/google/protobuf/A2$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "defaultInstance",
            "keyType",
            "valueType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;",
            "Lcom/google/protobuf/A2$b;",
            "Lcom/google/protobuf/A2$b;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/Q0;->H3(Lcom/google/protobuf/Q0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/protobuf/Q0;->i4(Lcom/google/protobuf/Q0;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3, v0, p4, p2}, Lcom/google/protobuf/R0$b;-><init>(Lcom/google/protobuf/A2$b;Ljava/lang/Object;Lcom/google/protobuf/A2$b;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/protobuf/Q0$c;->e:Lcom/google/protobuf/Descriptors$b;

    new-instance p1, Lcom/google/protobuf/Q0$c$a;

    invoke-direct {p1, p0}, Lcom/google/protobuf/Q0$c$a;-><init>(Lcom/google/protobuf/Q0$c;)V

    iput-object p1, p0, Lcom/google/protobuf/Q0$c;->f:Lcom/google/protobuf/w1;

    return-void
.end method
