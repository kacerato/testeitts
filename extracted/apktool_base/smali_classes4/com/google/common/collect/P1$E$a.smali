.class public final Lcom/google/common/collect/P1$E$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/P1$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1$E;
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
        "Lcom/google/common/collect/P1$E<",
        "TK;TV;>;",
        "Lcom/google/common/collect/P1$F<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/P1$E$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1$E$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/P1$E$a;

    invoke-direct {v0}, Lcom/google/common/collect/P1$E$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/P1$E$a;->a:Lcom/google/common/collect/P1$E$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/common/collect/P1$E$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/P1$E$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/P1$E$a;->a:Lcom/google/common/collect/P1$E$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/P1$o;Lcom/google/common/collect/P1$j;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/P1$F;

    check-cast p2, Lcom/google/common/collect/P1$E;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$E$a;->k(Lcom/google/common/collect/P1$F;Lcom/google/common/collect/P1$E;Ljava/lang/Object;)V

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

    check-cast p1, Lcom/google/common/collect/P1$F;

    check-cast p2, Lcom/google/common/collect/P1$E;

    check-cast p3, Lcom/google/common/collect/P1$E;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$E$a;->g(Lcom/google/common/collect/P1$F;Lcom/google/common/collect/P1$E;Lcom/google/common/collect/P1$E;)Lcom/google/common/collect/P1$E;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/google/common/collect/P1$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    return-object v0
.end method

.method public bridge synthetic e(Lcom/google/common/collect/P1$o;Ljava/lang/Object;ILcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/P1$j;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/P1$F;

    check-cast p4, Lcom/google/common/collect/P1$E;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/P1$E$a;->i(Lcom/google/common/collect/P1$F;Ljava/lang/Object;ILcom/google/common/collect/P1$E;)Lcom/google/common/collect/P1$E;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$o;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/P1$E$a;->j(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$F;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/P1$F;Lcom/google/common/collect/P1$E;Lcom/google/common/collect/P1$E;)Lcom/google/common/collect/P1$E;
    .locals 2
    .param p3    # Lcom/google/common/collect/P1$E;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$F<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$E<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$E<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/P1$E<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/common/collect/P1$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/P1$o;->w(Lcom/google/common/collect/P1$j;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/P1$F;->X(Lcom/google/common/collect/P1$F;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/P1$F;->Y(Lcom/google/common/collect/P1$F;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, v0, p1, p3}, Lcom/google/common/collect/P1$E;->f(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/P1$E;)Lcom/google/common/collect/P1$E;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/P1$F;Ljava/lang/Object;ILcom/google/common/collect/P1$E;)Lcom/google/common/collect/P1$E;
    .locals 1
    .param p4    # Lcom/google/common/collect/P1$E;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$F<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/P1$E<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/P1$E<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$E;

    invoke-static {p1}, Lcom/google/common/collect/P1$F;->X(Lcom/google/common/collect/P1$F;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/P1$E;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/P1$E;)V

    return-object v0
.end method

.method public j(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1<",
            "TK;TV;",
            "Lcom/google/common/collect/P1$E<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$F<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/P1$F<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$F;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/P1$F;-><init>(Lcom/google/common/collect/P1;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/P1$F;Lcom/google/common/collect/P1$E;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$F<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$E<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/P1$F;->Y(Lcom/google/common/collect/P1$F;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/common/collect/P1$E;->g(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
