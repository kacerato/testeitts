.class public abstract Lcom/bumptech/glide/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/bumptech/glide/l<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public b:LW/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW/g<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LW/e;->c()LW/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/l;->b:LW/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/l;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Lcom/bumptech/glide/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {}, LW/e;->c()LW/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->f(LW/g;)Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public final c()LW/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW/g<",
            "-TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/l;->b:LW/g;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/bumptech/glide/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    return-object p0
.end method

.method public final e(I)Lcom/bumptech/glide/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, LW/h;

    invoke-direct {v0, p1}, LW/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->f(LW/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public final f(LW/g;)Lcom/bumptech/glide/l;
    .locals 0
    .param p1    # LW/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW/g<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW/g;

    iput-object p1, p0, Lcom/bumptech/glide/l;->b:LW/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/l;->d()Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public final g(LW/j$a;)Lcom/bumptech/glide/l;
    .locals 1
    .param p1    # LW/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW/j$a;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, LW/i;

    invoke-direct {v0, p1}, LW/i;-><init>(LW/j$a;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->f(LW/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method
