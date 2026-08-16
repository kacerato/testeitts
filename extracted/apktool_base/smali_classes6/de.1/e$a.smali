.class public Lde/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/e;->iterator()LZd/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lde/e$c;

.field public c:Lde/e$c;

.field public final synthetic d:Lde/e;


# direct methods
.method public constructor <init>(Lde/e;)V
    .locals 0

    iput-object p1, p0, Lde/e$a;->d:Lde/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lde/e;->d:Lde/e$c;

    iput-object p1, p0, Lde/e$a;->b:Lde/e$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lde/e$a;->b:Lde/e$c;

    invoke-static {v0}, Lde/e;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 2

    iget-object v0, p0, Lde/e$a;->b:Lde/e$c;

    invoke-static {v0}, Lde/e;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/e$a;->b:Lde/e$c;

    invoke-virtual {v0}, Lde/e$c;->c()I

    move-result v0

    iget-object v1, p0, Lde/e$a;->b:Lde/e$c;

    iput-object v1, p0, Lde/e$a;->c:Lde/e$c;

    invoke-virtual {v1}, Lde/e$c;->a()Lde/e$c;

    move-result-object v1

    iput-object v1, p0, Lde/e$a;->b:Lde/e$c;

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lde/e$a;->c:Lde/e$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/e$a;->d:Lde/e;

    invoke-static {v1, v0}, Lde/e;->a(Lde/e;Lde/e$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/e$a;->c:Lde/e$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
