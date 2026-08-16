.class public LA2/I$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LA2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/Q<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/U;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/U<",
            "TN;TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LA2/U;->c()LA2/Q;

    move-result-object p1

    iput-object p1, p0, LA2/I$a;->a:LA2/Q;

    return-void
.end method


# virtual methods
.method public a(LA2/u;Ljava/lang/Object;)LA2/I$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;TE;)",
            "LA2/I$a<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/I$a;->a:LA2/Q;

    invoke-interface {v0, p1, p2}, LA2/Q;->F(LA2/u;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LA2/I$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)",
            "LA2/I$a<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/I$a;->a:LA2/Q;

    invoke-interface {v0, p1, p2, p3}, LA2/Q;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Ljava/lang/Object;)LA2/I$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LA2/I$a<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/I$a;->a:LA2/Q;

    invoke-interface {v0, p1}, LA2/Q;->p(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()LA2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/I<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/I$a;->a:LA2/Q;

    invoke-static {v0}, LA2/I;->c0(LA2/T;)LA2/I;

    move-result-object v0

    return-object v0
.end method
