.class public final Lcom/google/common/collect/P1$A$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/P1$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1$A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/P1$k<",
        "TK;",
        "Lcom/google/common/collect/O1$a;",
        "Lcom/google/common/collect/P1$A<",
        "TK;>;",
        "Lcom/google/common/collect/P1$B<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/P1$A$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1$A$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/P1$A$a;

    invoke-direct {v0}, Lcom/google/common/collect/P1$A$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/P1$A$a;->a:Lcom/google/common/collect/P1$A$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/common/collect/P1$A$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/P1$A$a<",
            "TK;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/P1$A$a;->a:Lcom/google/common/collect/P1$A$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/P1$o;Lcom/google/common/collect/P1$j;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/P1$B;

    check-cast p2, Lcom/google/common/collect/P1$A;

    check-cast p3, Lcom/google/common/collect/O1$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$A$a;->k(Lcom/google/common/collect/P1$B;Lcom/google/common/collect/P1$A;Lcom/google/common/collect/O1$a;)V

    return-void
.end method

.method public b()Lcom/google/common/collect/P1$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/common/collect/P1$o;Lcom/google/common/collect/P1$j;Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/P1$j;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/P1$B;

    check-cast p2, Lcom/google/common/collect/P1$A;

    check-cast p3, Lcom/google/common/collect/P1$A;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$A$a;->g(Lcom/google/common/collect/P1$B;Lcom/google/common/collect/P1$A;Lcom/google/common/collect/P1$A;)Lcom/google/common/collect/P1$A;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/google/common/collect/P1$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    return-object v0
.end method

.method public bridge synthetic e(Lcom/google/common/collect/P1$o;Ljava/lang/Object;ILcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/P1$j;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/P1$B;

    check-cast p4, Lcom/google/common/collect/P1$A;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/P1$A$a;->i(Lcom/google/common/collect/P1$B;Ljava/lang/Object;ILcom/google/common/collect/P1$A;)Lcom/google/common/collect/P1$A;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$o;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$A$a;->j(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$B;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/P1$B;Lcom/google/common/collect/P1$A;Lcom/google/common/collect/P1$A;)Lcom/google/common/collect/P1$A;
    .locals 1
    .param p3    # Lcom/google/common/collect/P1$A;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$B<",
            "TK;>;",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;)",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/common/collect/P1$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/P1$B;->X(Lcom/google/common/collect/P1$B;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/P1$A;->d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/P1$A;)Lcom/google/common/collect/P1$A;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/P1$B;Ljava/lang/Object;ILcom/google/common/collect/P1$A;)Lcom/google/common/collect/P1$A;
    .locals 1
    .param p4    # Lcom/google/common/collect/P1$A;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$B<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;)",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$A;

    invoke-static {p1}, Lcom/google/common/collect/P1$B;->X(Lcom/google/common/collect/P1$B;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/P1$A;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/P1$A;)V

    return-object v0
.end method

.method public j(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1<",
            "TK;",
            "Lcom/google/common/collect/O1$a;",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;",
            "Lcom/google/common/collect/P1$B<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/P1$B<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$B;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/P1$B;-><init>(Lcom/google/common/collect/P1;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/P1$B;Lcom/google/common/collect/P1$A;Lcom/google/common/collect/O1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$B<",
            "TK;>;",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;",
            "Lcom/google/common/collect/O1$a;",
            ")V"
        }
    .end annotation

    return-void
.end method
