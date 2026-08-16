.class public Lqe/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lre/c;

.field public b:Lve/b;

.field public c:Lze/a;

.field public d:Lqe/c;

.field public e:Lwe/a;

.field public f:Lve/i;

.field public g:Lqe/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lqe/g$b;)Lre/c;
    .locals 0

    iget-object p0, p0, Lqe/g$b;->a:Lre/c;

    return-object p0
.end method

.method public static synthetic b(Lqe/g$b;)Lve/b;
    .locals 0

    iget-object p0, p0, Lqe/g$b;->b:Lve/b;

    return-object p0
.end method

.method public static synthetic c(Lqe/g$b;)Lze/a;
    .locals 0

    iget-object p0, p0, Lqe/g$b;->c:Lze/a;

    return-object p0
.end method

.method public static synthetic d(Lqe/g$b;)Lqe/c;
    .locals 0

    iget-object p0, p0, Lqe/g$b;->d:Lqe/c;

    return-object p0
.end method

.method public static synthetic e(Lqe/g$b;)Lwe/a;
    .locals 0

    iget-object p0, p0, Lqe/g$b;->e:Lwe/a;

    return-object p0
.end method

.method public static synthetic f(Lqe/g$b;)Lve/i;
    .locals 0

    iget-object p0, p0, Lqe/g$b;->f:Lve/i;

    return-object p0
.end method

.method public static synthetic g(Lqe/g$b;)Lqe/k;
    .locals 0

    iget-object p0, p0, Lqe/g$b;->g:Lqe/k;

    return-object p0
.end method


# virtual methods
.method public h(Lve/b;)Lqe/g$b;
    .locals 0
    .param p1    # Lve/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/g$b;->b:Lve/b;

    return-object p0
.end method

.method public i(Lre/c;Lqe/k;)Lqe/g;
    .locals 0
    .param p1    # Lre/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqe/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/g$b;->a:Lre/c;

    iput-object p2, p0, Lqe/g$b;->g:Lqe/k;

    iget-object p1, p0, Lqe/g$b;->b:Lve/b;

    if-nez p1, :cond_0

    invoke-static {}, Lve/b;->c()Lve/b;

    move-result-object p1

    iput-object p1, p0, Lqe/g$b;->b:Lve/b;

    :cond_0
    iget-object p1, p0, Lqe/g$b;->c:Lze/a;

    if-nez p1, :cond_1

    new-instance p1, Lze/b;

    invoke-direct {p1}, Lze/b;-><init>()V

    iput-object p1, p0, Lqe/g$b;->c:Lze/a;

    :cond_1
    iget-object p1, p0, Lqe/g$b;->d:Lqe/c;

    if-nez p1, :cond_2

    new-instance p1, Lqe/d;

    invoke-direct {p1}, Lqe/d;-><init>()V

    iput-object p1, p0, Lqe/g$b;->d:Lqe/c;

    :cond_2
    iget-object p1, p0, Lqe/g$b;->e:Lwe/a;

    if-nez p1, :cond_3

    invoke-static {}, Lwe/a;->a()Lwe/a;

    move-result-object p1

    iput-object p1, p0, Lqe/g$b;->e:Lwe/a;

    :cond_3
    iget-object p1, p0, Lqe/g$b;->f:Lve/i;

    if-nez p1, :cond_4

    new-instance p1, Lve/j;

    invoke-direct {p1}, Lve/j;-><init>()V

    iput-object p1, p0, Lqe/g$b;->f:Lve/i;

    :cond_4
    new-instance p1, Lqe/g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lqe/g;-><init>(Lqe/g$b;Lqe/g$a;)V

    return-object p1
.end method

.method public j(Lwe/a;)Lqe/g$b;
    .locals 0
    .param p1    # Lwe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/g$b;->e:Lwe/a;

    return-object p0
.end method

.method public k(Lve/i;)Lqe/g$b;
    .locals 0
    .param p1    # Lve/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/g$b;->f:Lve/i;

    return-object p0
.end method

.method public l(Lqe/c;)Lqe/g$b;
    .locals 0
    .param p1    # Lqe/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/g$b;->d:Lqe/c;

    return-object p0
.end method

.method public m(Lze/a;)Lqe/g$b;
    .locals 0
    .param p1    # Lze/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/g$b;->c:Lze/a;

    return-object p0
.end method
