.class public Lcom/google/protobuf/Descriptors$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Descriptors$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Descriptors$j<",
        "Lcom/google/protobuf/Descriptors$f;",
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
            "fieldDescriptor"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$f$a;->b(Lcom/google/protobuf/Descriptors$f;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/google/protobuf/Descriptors$f;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldDescriptor"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result p1

    return p1
.end method
