.class public final Lcom/google/common/collect/P1$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/P1$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/P1$k<",
        "TK;TV;",
        "Lcom/google/common/collect/P1$t<",
        "TK;TV;>;",
        "Lcom/google/common/collect/P1$u<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/P1$t$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1$t$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/P1$t$a;

    invoke-direct {v0}, Lcom/google/common/collect/P1$t$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/P1$t$a;->a:Lcom/google/common/collect/P1$t$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/common/collect/P1$t$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/P1$t$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/P1$t$a;->a:Lcom/google/common/collect/P1$t$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/P1$o;Lcom/google/common/collect/P1$j;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/P1$u;

    check-cast p2, Lcom/google/common/collect/P1$t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$t$a;->k(Lcom/google/common/collect/P1$u;Lcom/google/common/collect/P1$t;Ljava/lang/Object;)V

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

    check-cast p1, Lcom/google/common/collect/P1$u;

    check-cast p2, Lcom/google/common/collect/P1$t;

    check-cast p3, Lcom/google/common/collect/P1$t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$t$a;->g(Lcom/google/common/collect/P1$u;Lcom/google/common/collect/P1$t;Lcom/google/common/collect/P1$t;)Lcom/google/common/collect/P1$t;

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

    check-cast p1, Lcom/google/common/collect/P1$u;

    check-cast p4, Lcom/google/common/collect/P1$t;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/P1$t$a;->i(Lcom/google/common/collect/P1$u;Ljava/lang/Object;ILcom/google/common/collect/P1$t;)Lcom/google/common/collect/P1$t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$o;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$t$a;->j(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$u;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/P1$u;Lcom/google/common/collect/P1$t;Lcom/google/common/collect/P1$t;)Lcom/google/common/collect/P1$t;
    .locals 0
    .param p3    # Lcom/google/common/collect/P1$t;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/google/common/collect/P1$t;->d(Lcom/google/common/collect/P1$t;)Lcom/google/common/collect/P1$t;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/P1$u;Ljava/lang/Object;ILcom/google/common/collect/P1$t;)Lcom/google/common/collect/P1$t;
    .locals 0
    .param p4    # Lcom/google/common/collect/P1$t;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$u<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/collect/P1$t;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/P1$t;-><init>(Ljava/lang/Object;ILcom/google/common/collect/P1$t;)V

    return-object p1
.end method

.method public j(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1<",
            "TK;TV;",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$u<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/P1$u<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$u;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/P1$u;-><init>(Lcom/google/common/collect/P1;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/P1$u;Lcom/google/common/collect/P1$t;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/google/common/collect/P1$t;->e(Ljava/lang/Object;)V

    return-void
.end method
