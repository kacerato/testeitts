.class public Lcom/google/protobuf/H0;
.super Lcom/google/protobuf/I0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H0$c;,
        Lcom/google/protobuf/H0$b;
    }
.end annotation


# instance fields
.field public final f:Lcom/google/protobuf/b1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/b1;Lcom/google/protobuf/d0;Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/I0;-><init>(Lcom/google/protobuf/d0;Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/H0;->f:Lcom/google/protobuf/b1;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/I0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iget-object v1, p0, Lcom/google/protobuf/H0;->f:Lcom/google/protobuf/b1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public p()Lcom/google/protobuf/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H0;->f:Lcom/google/protobuf/b1;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/I0;->g(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
