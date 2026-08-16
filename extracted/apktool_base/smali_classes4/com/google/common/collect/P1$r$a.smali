.class public final Lcom/google/common/collect/P1$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/P1$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1$r;
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
        "Lcom/google/common/collect/P1$r<",
        "TK;>;",
        "Lcom/google/common/collect/P1$s<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/P1$r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1$r$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/P1$r$a;

    invoke-direct {v0}, Lcom/google/common/collect/P1$r$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/P1$r$a;->a:Lcom/google/common/collect/P1$r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/common/collect/P1$r$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/P1$r$a<",
            "TK;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/P1$r$a;->a:Lcom/google/common/collect/P1$r$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/P1$o;Lcom/google/common/collect/P1$j;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/P1$s;

    check-cast p2, Lcom/google/common/collect/P1$r;

    check-cast p3, Lcom/google/common/collect/O1$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$r$a;->k(Lcom/google/common/collect/P1$s;Lcom/google/common/collect/P1$r;Lcom/google/common/collect/O1$a;)V

    return-void
.end method

.method public b()Lcom/google/common/collect/P1$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/common/collect/P1$o;Lcom/google/common/collect/P1$j;Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/P1$j;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/P1$s;

    check-cast p2, Lcom/google/common/collect/P1$r;

    check-cast p3, Lcom/google/common/collect/P1$r;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$r$a;->g(Lcom/google/common/collect/P1$s;Lcom/google/common/collect/P1$r;Lcom/google/common/collect/P1$r;)Lcom/google/common/collect/P1$r;

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

    check-cast p1, Lcom/google/common/collect/P1$s;

    check-cast p4, Lcom/google/common/collect/P1$r;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/P1$r$a;->i(Lcom/google/common/collect/P1$s;Ljava/lang/Object;ILcom/google/common/collect/P1$r;)Lcom/google/common/collect/P1$r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$o;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$r$a;->j(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$s;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/P1$s;Lcom/google/common/collect/P1$r;Lcom/google/common/collect/P1$r;)Lcom/google/common/collect/P1$r;
    .locals 0
    .param p3    # Lcom/google/common/collect/P1$r;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$s<",
            "TK;>;",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;)",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/google/common/collect/P1$r;->d(Lcom/google/common/collect/P1$r;)Lcom/google/common/collect/P1$r;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/P1$s;Ljava/lang/Object;ILcom/google/common/collect/P1$r;)Lcom/google/common/collect/P1$r;
    .locals 0
    .param p4    # Lcom/google/common/collect/P1$r;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$s<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;)",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/collect/P1$r;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/P1$r;-><init>(Ljava/lang/Object;ILcom/google/common/collect/P1$r;)V

    return-object p1
.end method

.method public j(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1<",
            "TK;",
            "Lcom/google/common/collect/O1$a;",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;",
            "Lcom/google/common/collect/P1$s<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/P1$s<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$s;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/P1$s;-><init>(Lcom/google/common/collect/P1;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/P1$s;Lcom/google/common/collect/P1$r;Lcom/google/common/collect/O1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$s<",
            "TK;>;",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;",
            "Lcom/google/common/collect/O1$a;",
            ")V"
        }
    .end annotation

    return-void
.end method
