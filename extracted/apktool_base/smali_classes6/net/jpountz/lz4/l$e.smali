.class public Lnet/jpountz/lz4/l$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lnet/jpountz/lz4/l$d;

.field public final b:Lnet/jpountz/lz4/l$b;

.field public final c:Lnet/jpountz/xxhash/c;

.field public d:Z


# direct methods
.method public constructor <init>(Lnet/jpountz/lz4/l$d;Lnet/jpountz/lz4/l$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/jpountz/lz4/l$e;->d:Z

    iput-object p1, p0, Lnet/jpountz/lz4/l$e;->a:Lnet/jpountz/lz4/l$d;

    iput-object p2, p0, Lnet/jpountz/lz4/l$e;->b:Lnet/jpountz/lz4/l$b;

    sget-object p2, Lnet/jpountz/lz4/l$d$a;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {p1, p2}, Lnet/jpountz/lz4/l$d;->c(Lnet/jpountz/lz4/l$d$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/jpountz/xxhash/t;->b()Lnet/jpountz/xxhash/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/jpountz/xxhash/t;->i(I)Lnet/jpountz/xxhash/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lnet/jpountz/lz4/l$e;->c:Lnet/jpountz/xxhash/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lnet/jpountz/lz4/l$e;->c:Lnet/jpountz/xxhash/c;

    invoke-virtual {v0}, Lnet/jpountz/xxhash/c;->d()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/jpountz/lz4/l$e;->d:Z

    return-void
.end method

.method public c()Lnet/jpountz/lz4/l$b;
    .locals 1

    iget-object v0, p0, Lnet/jpountz/lz4/l$e;->b:Lnet/jpountz/lz4/l$b;

    return-object v0
.end method

.method public d()Lnet/jpountz/lz4/l$d;
    .locals 1

    iget-object v0, p0, Lnet/jpountz/lz4/l$e;->a:Lnet/jpountz/lz4/l$d;

    return-object v0
.end method

.method public e(Lnet/jpountz/lz4/l$d$a;)Z
    .locals 1

    iget-object v0, p0, Lnet/jpountz/lz4/l$e;->a:Lnet/jpountz/lz4/l$d;

    invoke-virtual {v0, p1}, Lnet/jpountz/lz4/l$d;->c(Lnet/jpountz/lz4/l$d$a;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lnet/jpountz/lz4/l$e;->d:Z

    return v0
.end method

.method public g([BII)V
    .locals 1

    iget-object v0, p0, Lnet/jpountz/lz4/l$e;->c:Lnet/jpountz/xxhash/c;

    invoke-virtual {v0, p1, p2, p3}, Lnet/jpountz/xxhash/c;->f([BII)V

    return-void
.end method
