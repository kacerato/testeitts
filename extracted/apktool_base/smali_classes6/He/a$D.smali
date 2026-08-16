.class public final LHe/a$D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "D"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFe/a;"
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

    iput-object p1, p0, LHe/a$D;->b:LFe/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LHe/a$D;->b:LFe/g;

    invoke-static {}, LBe/A;->a()LBe/A;

    move-result-object v1

    invoke-interface {v0, v1}, LFe/g;->accept(Ljava/lang/Object;)V

    return-void
.end method
