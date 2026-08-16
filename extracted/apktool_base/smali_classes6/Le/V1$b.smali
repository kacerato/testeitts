.class public final LLe/V1$b;
.super Lcf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/V1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
.field public final c:LLe/V1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/V1$c<",
            "TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LLe/V1$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/V1$c<",
            "TT;TB;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcf/b;-><init>()V

    iput-object p1, p0, LLe/V1$b;->c:LLe/V1$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/V1$b;->c:LLe/V1$c;

    invoke-virtual {v0}, LLe/V1$c;->a()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/V1$b;->c:LLe/V1$c;

    invoke-virtual {v0, p1}, LLe/V1$c;->v(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/V1$b;->c:LLe/V1$c;

    invoke-virtual {v0, p1}, LLe/V1$c;->t(Ljava/lang/Throwable;)V

    return-void
.end method
