.class public LA2/K$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LA2/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/S<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/k0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/k0<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LA2/k0;->d()LA2/k0;

    move-result-object p1

    invoke-static {}, LA2/s;->g()LA2/s;

    move-result-object v0

    invoke-virtual {p1, v0}, LA2/k0;->i(LA2/s;)LA2/k0;

    move-result-object p1

    invoke-virtual {p1}, LA2/k0;->b()LA2/S;

    move-result-object p1

    iput-object p1, p0, LA2/K$a;->a:LA2/S;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LA2/K$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LA2/K$a<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/K$a;->a:LA2/S;

    invoke-interface {v0, p1}, LA2/S;->p(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()LA2/K;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/K<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/K$a;->a:LA2/S;

    invoke-static {v0}, LA2/K;->Z(LA2/j0;)LA2/K;

    move-result-object v0

    return-object v0
.end method

.method public c(LA2/u;Ljava/lang/Object;)LA2/K$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;TV;)",
            "LA2/K$a<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/K$a;->a:LA2/S;

    invoke-interface {v0, p1, p2}, LA2/S;->u(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LA2/K$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)",
            "LA2/K$a<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/K$a;->a:LA2/S;

    invoke-interface {v0, p1, p2, p3}, LA2/S;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
