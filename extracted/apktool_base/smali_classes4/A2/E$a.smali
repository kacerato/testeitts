.class public LA2/E$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LA2/P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/P<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/A<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LA2/A;->d()LA2/A;

    move-result-object p1

    invoke-static {}, LA2/s;->g()LA2/s;

    move-result-object v0

    invoke-virtual {p1, v0}, LA2/A;->i(LA2/s;)LA2/A;

    move-result-object p1

    invoke-virtual {p1}, LA2/A;->b()LA2/P;

    move-result-object p1

    iput-object p1, p0, LA2/E$a;->a:LA2/P;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LA2/E$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LA2/E$a<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/E$a;->a:LA2/P;

    invoke-interface {v0, p1}, LA2/P;->p(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()LA2/E;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/E<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/E$a;->a:LA2/P;

    invoke-static {v0}, LA2/E;->S(LA2/z;)LA2/E;

    move-result-object v0

    return-object v0
.end method

.method public c(LA2/u;)LA2/E$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)",
            "LA2/E$a<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/E$a;->a:LA2/P;

    invoke-interface {v0, p1}, LA2/P;->I(LA2/u;)Z

    return-object p0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)LA2/E$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "LA2/E$a<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/E$a;->a:LA2/P;

    invoke-interface {v0, p1, p2}, LA2/P;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method
