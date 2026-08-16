.class public final LLe/t0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFe/o<",
        "LBe/l<",
        "TT;>;",
        "Lhn/b<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final b:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final c:LBe/J;


# direct methods
.method public constructor <init>(LFe/o;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/t0$h;->b:LFe/o;

    iput-object p2, p0, LLe/t0$h;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public a(LBe/l;)Lhn/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;)",
            "Lhn/b<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LLe/t0$h;->b:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null Publisher"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/b;

    invoke-static {p1}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p1

    iget-object v0, p0, LLe/t0$h;->c:LBe/J;

    invoke-virtual {p1, v0}, LBe/l;->n4(LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LBe/l;

    invoke-virtual {p0, p1}, LLe/t0$h;->a(LBe/l;)Lhn/b;

    move-result-object p1

    return-object p1
.end method
