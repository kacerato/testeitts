.class public final LOe/H1$b;
.super LWe/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/H1;
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
        "LWe/e<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final c:LOe/H1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/H1$c<",
            "TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOe/H1$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/H1$c<",
            "TT;TB;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, LWe/e;-><init>()V

    iput-object p1, p0, LOe/H1$b;->c:LOe/H1$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LOe/H1$b;->c:LOe/H1$c;

    invoke-virtual {v0}, LOe/H1$c;->a()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/H1$b;->c:LOe/H1$c;

    invoke-virtual {v0, p1}, LOe/H1$c;->r(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/H1$b;->c:LOe/H1$c;

    invoke-virtual {v0, p1}, LOe/H1$c;->q(Ljava/lang/Throwable;)V

    return-void
.end method
