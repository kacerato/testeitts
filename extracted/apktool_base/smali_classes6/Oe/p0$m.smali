.class public final LOe/p0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFe/c<",
        "TS;",
        "LBe/k<",
        "TT;>;TS;>;"
    }
.end annotation


# instance fields
.field public final b:LFe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/b<",
            "TS;",
            "LBe/k<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LFe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/b<",
            "TS;",
            "LBe/k<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/p0$m;->b:LFe/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LBe/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "LBe/k<",
            "TT;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LOe/p0$m;->b:LFe/b;

    invoke-interface {v0, p1, p2}, LFe/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, LBe/k;

    invoke-virtual {p0, p1, p2}, LOe/p0$m;->a(Ljava/lang/Object;LBe/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
