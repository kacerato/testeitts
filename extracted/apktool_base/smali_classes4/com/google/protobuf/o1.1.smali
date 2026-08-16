.class public final Lcom/google/protobuf/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/n1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/w0;

    sget-object v0, Lcom/google/protobuf/w0$i;->a:Lcom/google/protobuf/w0$i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/w0;->newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
