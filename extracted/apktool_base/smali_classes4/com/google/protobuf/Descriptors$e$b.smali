.class public Lcom/google/protobuf/Descriptors$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Descriptors$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Descriptors$j<",
        "Lcom/google/protobuf/Descriptors$e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumValueDescriptor"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$e$b;->b(Lcom/google/protobuf/Descriptors$e;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/google/protobuf/Descriptors$e;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumValueDescriptor"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$e;->getNumber()I

    move-result p1

    return p1
.end method
