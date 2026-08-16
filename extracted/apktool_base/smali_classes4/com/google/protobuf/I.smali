.class public final Lcom/google/protobuf/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/google/protobuf/w1;)Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/w1<",
            "TT;>;)",
            "Lcom/google/protobuf/w1<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/I$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/I$a;-><init>(Lcom/google/protobuf/w1;)V

    return-object v0
.end method
