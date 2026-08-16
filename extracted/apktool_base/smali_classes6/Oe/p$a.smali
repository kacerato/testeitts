.class public final LOe/p$a;
.super LWe/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/p;
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
.field public final c:LOe/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/p$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOe/p$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/p$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LWe/e;-><init>()V

    iput-object p1, p0, LOe/p$a;->c:LOe/p$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LOe/p$a;->c:LOe/p$b;

    invoke-virtual {v0}, LOe/p$b;->a()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object p1, p0, LOe/p$a;->c:LOe/p$b;

    invoke-virtual {p1}, LOe/p$b;->o()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/p$a;->c:LOe/p$b;

    invoke-virtual {v0, p1}, LOe/p$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
