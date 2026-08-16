.class public Lde/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/H;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/d;->iterator()LZd/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lde/d$c;

.field public c:Lde/d$c;

.field public final synthetic d:Lde/d;


# direct methods
.method public constructor <init>(Lde/d;)V
    .locals 0

    iput-object p1, p0, Lde/d$a;->d:Lde/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lde/d;->d:Lde/d$c;

    iput-object p1, p0, Lde/d$a;->b:Lde/d$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lde/d$a;->b:Lde/d$c;

    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()F
    .locals 2

    iget-object v0, p0, Lde/d$a;->b:Lde/d$c;

    invoke-static {v0}, Lde/d;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/d$a;->b:Lde/d$c;

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v0

    iget-object v1, p0, Lde/d$a;->b:Lde/d$c;

    iput-object v1, p0, Lde/d$a;->c:Lde/d$c;

    invoke-virtual {v1}, Lde/d$c;->a()Lde/d$c;

    move-result-object v1

    iput-object v1, p0, Lde/d$a;->b:Lde/d$c;

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lde/d$a;->c:Lde/d$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/d$a;->d:Lde/d;

    invoke-static {v1, v0}, Lde/d;->a(Lde/d;Lde/d$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/d$a;->c:Lde/d$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
