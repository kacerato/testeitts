.class public final LOe/X0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/X0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/I<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LOe/X0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/X0$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOe/X0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/X0$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/X0$d;->b:LOe/X0$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LOe/X0$d;->b:LOe/X0$c;

    invoke-virtual {v0}, LOe/X0$c;->b()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/X0$d;->b:LOe/X0$c;

    invoke-virtual {v0, p1}, LOe/X0$c;->j(LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, LOe/X0$d;->b:LOe/X0$c;

    invoke-virtual {p1}, LOe/X0$c;->i()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/X0$d;->b:LOe/X0$c;

    invoke-virtual {v0, p1}, LOe/X0$c;->g(Ljava/lang/Throwable;)V

    return-void
.end method
