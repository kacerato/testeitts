.class public final LLe/V1$a;
.super Lcf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/V1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcf/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final c:LLe/V1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/V1$c<",
            "TT;*TV;>;"
        }
    .end annotation
.end field

.field public final d:LZe/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(LLe/V1$c;LZe/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/V1$c<",
            "TT;*TV;>;",
            "LZe/h<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcf/b;-><init>()V

    iput-object p1, p0, LLe/V1$a;->c:LLe/V1$c;

    iput-object p2, p0, LLe/V1$a;->d:LZe/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/V1$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/V1$a;->e:Z

    iget-object v0, p0, LLe/V1$a;->c:LLe/V1$c;

    invoke-virtual {v0, p0}, LLe/V1$c;->r(LLe/V1$a;)V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcf/b;->b()V

    invoke-virtual {p0}, LLe/V1$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/V1$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/V1$a;->e:Z

    iget-object v0, p0, LLe/V1$a;->c:LLe/V1$c;

    invoke-virtual {v0, p1}, LLe/V1$c;->t(Ljava/lang/Throwable;)V

    return-void
.end method
