.class public Lqe/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe/g$b;
    }
.end annotation


# instance fields
.field public final a:Lre/c;

.field public final b:Lve/b;

.field public final c:Lze/a;

.field public final d:Lqe/c;

.field public final e:Lwe/a;

.field public final f:Lve/i;

.field public final g:Lqe/k;


# direct methods
.method public constructor <init>(Lqe/g$b;)V
    .locals 1
    .param p1    # Lqe/g$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lqe/g$b;->a(Lqe/g$b;)Lre/c;

    move-result-object v0

    iput-object v0, p0, Lqe/g;->a:Lre/c;

    .line 4
    invoke-static {p1}, Lqe/g$b;->b(Lqe/g$b;)Lve/b;

    move-result-object v0

    iput-object v0, p0, Lqe/g;->b:Lve/b;

    .line 5
    invoke-static {p1}, Lqe/g$b;->c(Lqe/g$b;)Lze/a;

    move-result-object v0

    iput-object v0, p0, Lqe/g;->c:Lze/a;

    .line 6
    invoke-static {p1}, Lqe/g$b;->d(Lqe/g$b;)Lqe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/g;->d:Lqe/c;

    .line 7
    invoke-static {p1}, Lqe/g$b;->e(Lqe/g$b;)Lwe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/g;->e:Lwe/a;

    .line 8
    invoke-static {p1}, Lqe/g$b;->f(Lqe/g$b;)Lve/i;

    move-result-object v0

    iput-object v0, p0, Lqe/g;->f:Lve/i;

    .line 9
    invoke-static {p1}, Lqe/g$b;->g(Lqe/g$b;)Lqe/k;

    move-result-object p1

    iput-object p1, p0, Lqe/g;->g:Lqe/k;

    return-void
.end method

.method public synthetic constructor <init>(Lqe/g$b;Lqe/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqe/g;-><init>(Lqe/g$b;)V

    return-void
.end method

.method public static b()Lqe/g$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lqe/g$b;

    invoke-direct {v0}, Lqe/g$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lve/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/g;->b:Lve/b;

    return-object v0
.end method

.method public c()Lwe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/g;->e:Lwe/a;

    return-object v0
.end method

.method public d()Lve/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/g;->f:Lve/i;

    return-object v0
.end method

.method public e()Lqe/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/g;->d:Lqe/c;

    return-object v0
.end method

.method public f()Lqe/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/g;->g:Lqe/k;

    return-object v0
.end method

.method public g()Lze/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/g;->c:Lze/a;

    return-object v0
.end method

.method public h()Lre/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/g;->a:Lre/c;

    return-object v0
.end method
