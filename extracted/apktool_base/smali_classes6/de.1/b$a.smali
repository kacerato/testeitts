.class public Lde/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/b;->iterator()LZd/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lde/b$c;

.field public c:Lde/b$c;

.field public final synthetic d:Lde/b;


# direct methods
.method public constructor <init>(Lde/b;)V
    .locals 0

    iput-object p1, p0, Lde/b$a;->d:Lde/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lde/b;->d:Lde/b$c;

    iput-object p1, p0, Lde/b$a;->b:Lde/b$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lde/b$a;->b:Lde/b$c;

    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()C
    .locals 2

    iget-object v0, p0, Lde/b$a;->b:Lde/b$c;

    invoke-static {v0}, Lde/b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/b$a;->b:Lde/b$c;

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v0

    iget-object v1, p0, Lde/b$a;->b:Lde/b$c;

    iput-object v1, p0, Lde/b$a;->c:Lde/b$c;

    invoke-virtual {v1}, Lde/b$c;->a()Lde/b$c;

    move-result-object v1

    iput-object v1, p0, Lde/b$a;->b:Lde/b$c;

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lde/b$a;->c:Lde/b$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/b$a;->d:Lde/b;

    invoke-static {v1, v0}, Lde/b;->a(Lde/b;Lde/b$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/b$a;->c:Lde/b$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
