.class public Lmi/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lmi/a$b;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lmi/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lmi/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 2

    new-instance v0, Lhi/b;

    sget-object v1, LWh/b;->i:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    return-object v0
.end method

.method public b()[B
    .locals 4

    iget-object v0, p0, Lmi/a$b;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lmi/a$b;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v1, LIi/J;

    invoke-direct {v1}, LIi/J;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, LBi/y;->update([BII)V

    invoke-interface {v1}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v1, v0, v3}, LBi/y;->c([BI)I

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lmi/a$b;->a:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
