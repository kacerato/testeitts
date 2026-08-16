.class public Lwi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lwi/c;
    .locals 4

    new-instance v0, Lwi/c;

    iget-boolean v1, p0, Lwi/d;->a:Z

    iget-boolean v2, p0, Lwi/d;->b:Z

    iget-boolean v3, p0, Lwi/d;->c:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lwi/c;-><init>(IZZZ)V

    return-object v0
.end method

.method public b(Lvi/a;)Lwi/c;
    .locals 0

    invoke-virtual {p1}, Lvi/a;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lwi/d;->a(I)Lwi/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lwi/d;->b:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lwi/d;->a:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lwi/d;->c:Z

    return-void
.end method
