.class public Ljk/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Lnk/a;

.field public c:Ljk/h;

.field public final synthetic d:Ljk/e;


# direct methods
.method public constructor <init>(Ljk/e;ILnk/a;Ljk/h;)V
    .locals 0

    iput-object p1, p0, Ljk/e$d;->d:Ljk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljk/e$d;->a:I

    iput-object p3, p0, Ljk/e$d;->b:Lnk/a;

    iput-object p4, p0, Ljk/e$d;->c:Ljk/h;

    return-void
.end method


# virtual methods
.method public a()Ljk/e;
    .locals 2

    iget-object v0, p0, Ljk/e$d;->d:Ljk/e;

    iget v1, p0, Ljk/e$d;->a:I

    invoke-virtual {v0, v1}, Ljk/e;->J(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljk/e$d;->d:Ljk/e;

    invoke-virtual {v0}, Ljk/e;->e()Ljk/e;

    move-result-object v0

    iget-object v1, p0, Ljk/e$d;->d:Ljk/e;

    if-eq v0, v1, :cond_0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljk/e$d;->a:I

    iput v1, v0, Ljk/e;->f:I

    iget-object v1, p0, Ljk/e$d;->b:Lnk/a;

    iput-object v1, v0, Ljk/e;->g:Lnk/a;

    iget-object v1, p0, Ljk/e$d;->c:Ljk/h;

    iput-object v1, v0, Ljk/e;->h:Ljk/h;

    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "implementation returned current curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Ljk/e$d;
    .locals 0

    iput p1, p0, Ljk/e$d;->a:I

    return-object p0
.end method

.method public c(Lnk/a;)Ljk/e$d;
    .locals 0

    iput-object p1, p0, Ljk/e$d;->b:Lnk/a;

    return-object p0
.end method

.method public d(Ljk/h;)Ljk/e$d;
    .locals 0

    iput-object p1, p0, Ljk/e$d;->c:Ljk/h;

    return-object p0
.end method
