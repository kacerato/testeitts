.class public LQk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/f;


# instance fields
.field public final a:LQk/f;

.field public final b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(LQk/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQk/e;->a:LQk/f;

    new-instance v0, Lfm/a;

    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lfm/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LQk/e;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(LQk/f;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQk/e;->a:LQk/f;

    new-instance v0, Lfm/a;

    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lfm/a;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, LQk/e;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LQk/e;->a:LQk/f;

    invoke-interface {v0}, LQk/f;->a()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, LQk/e;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, LQk/e;->a:LQk/f;

    invoke-interface {v0}, LQk/f;->getSignature()[B

    move-result-object v0

    return-object v0
.end method
