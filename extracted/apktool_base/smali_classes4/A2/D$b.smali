.class public LA2/D$b;
.super LA2/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LA2/w<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final a:LA2/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/z<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/z<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LA2/w;-><init>()V

    iput-object p1, p0, LA2/D$b;->a:LA2/z;

    return-void
.end method

.method public static synthetic R(LA2/D$b;)LA2/z;
    .locals 0

    iget-object p0, p0, LA2/D$b;->a:LA2/z;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic Q()LA2/k;
    .locals 1

    invoke-virtual {p0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    return-object v0
.end method

.method public S()LA2/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/z<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/D$b;->a:LA2/z;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/D$b;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/z;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/D$b;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/z;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/z;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public h(LA2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    invoke-static {p1}, LA2/D;->q(LA2/u;)LA2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LA2/z;->h(LA2/u;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LA2/z;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/z;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    new-instance v0, LA2/D$b$a;

    invoke-direct {v0, p0, p0, p1}, LA2/D$b$a;-><init>(LA2/D$b;LA2/k;Ljava/lang/Object;)V

    return-object v0
.end method
