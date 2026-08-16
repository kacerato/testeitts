.class public LRk/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:LRk/u;

.field public b:Lhi/b;


# direct methods
.method public constructor <init>(Lhi/b;LRk/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRk/g$c;->b:Lhi/b;

    iput-object p2, p0, LRk/g$c;->a:LRk/u;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LRk/g$c;->b:Lhi/b;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, LRk/g$c;->a:LRk/u;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "verifier not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verify([B)Z
    .locals 1

    iget-object v0, p0, LRk/g$c;->a:LRk/u;

    invoke-virtual {v0, p1}, LRk/u;->d([B)Z

    move-result p1

    return p1
.end method
