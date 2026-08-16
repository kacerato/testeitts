.class public final LOe/L1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/L1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFe/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LOe/L1;


# direct methods
.method public constructor <init>(LOe/L1;)V
    .locals 0

    iput-object p1, p0, LOe/L1$a;->b:LOe/L1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LOe/L1$a;->b:LOe/L1;

    iget-object v0, v0, LOe/L1;->e:LFe/o;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The combiner returned a null value"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
