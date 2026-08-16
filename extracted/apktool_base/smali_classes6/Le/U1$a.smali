.class public final LLe/U1$a;
.super Lcf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/U1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcf/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final c:LLe/U1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/U1$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(LLe/U1$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/U1$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcf/b;-><init>()V

    iput-object p1, p0, LLe/U1$a;->c:LLe/U1$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/U1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/U1$a;->d:Z

    iget-object v0, p0, LLe/U1$a;->c:LLe/U1$b;

    invoke-virtual {v0}, LLe/U1$b;->c()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-boolean p1, p0, LLe/U1$a;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LLe/U1$a;->c:LLe/U1$b;

    invoke-virtual {p1}, LLe/U1$b;->e()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/U1$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/U1$a;->d:Z

    iget-object v0, p0, LLe/U1$a;->c:LLe/U1$b;

    invoke-virtual {v0, p1}, LLe/U1$b;->d(Ljava/lang/Throwable;)V

    return-void
.end method
