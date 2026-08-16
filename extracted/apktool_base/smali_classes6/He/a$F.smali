.class public final LHe/a$F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "F"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFe/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "LBe/A<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LFe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LBe/A<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHe/a$F;->b:LFe/g;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LHe/a$F;->b:LFe/g;

    invoke-static {p1}, LBe/A;->c(Ljava/lang/Object;)LBe/A;

    move-result-object p1

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V

    return-void
.end method
