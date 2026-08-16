.class public final LOe/o$a;
.super LWe/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "LWe/e<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final c:LOe/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/o$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(LOe/o$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/o$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LWe/e;-><init>()V

    iput-object p1, p0, LOe/o$a;->c:LOe/o$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/o$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/o$a;->d:Z

    iget-object v0, p0, LOe/o$a;->c:LOe/o$b;

    invoke-virtual {v0}, LOe/o$b;->p()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-boolean p1, p0, LOe/o$a;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/o$a;->d:Z

    invoke-virtual {p0}, LWe/e;->dispose()V

    iget-object p1, p0, LOe/o$a;->c:LOe/o$b;

    invoke-virtual {p1}, LOe/o$b;->p()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/o$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/o$a;->d:Z

    iget-object v0, p0, LOe/o$a;->c:LOe/o$b;

    invoke-virtual {v0, p1}, LOe/o$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
