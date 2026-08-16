.class public final La1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:La1/l;

.field public b:La1/w;

.field public c:La1/n0;

.field public d:La1/t0;

.field public e:La1/B;

.field public f:La1/D;

.field public g:La1/p0;

.field public h:La1/G;

.field public i:La1/n;

.field public j:La1/I;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La1/a;)V
    .locals 1
    .param p1    # La1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La1/a;->n()La1/l;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->a:La1/l;

    .line 3
    invoke-virtual {p1}, La1/a;->t()La1/w;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->b:La1/w;

    invoke-virtual {p1}, La1/a;->b0()La1/n0;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->c:La1/n0;

    invoke-virtual {p1}, La1/a;->u0()La1/t0;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->d:La1/t0;

    invoke-virtual {p1}, La1/a;->v0()La1/B;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->e:La1/B;

    invoke-virtual {p1}, La1/a;->w0()La1/D;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->f:La1/D;

    invoke-virtual {p1}, La1/a;->n0()La1/p0;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->g:La1/p0;

    invoke-virtual {p1}, La1/a;->y0()La1/G;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->h:La1/G;

    invoke-virtual {p1}, La1/a;->x0()La1/n;

    move-result-object v0

    iput-object v0, p0, La1/a$a;->i:La1/n;

    invoke-virtual {p1}, La1/a;->z0()La1/I;

    move-result-object p1

    iput-object p1, p0, La1/a$a;->j:La1/I;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()La1/a;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v11, La1/a;

    iget-object v1, p0, La1/a$a;->a:La1/l;

    iget-object v2, p0, La1/a$a;->c:La1/n0;

    iget-object v3, p0, La1/a$a;->b:La1/w;

    iget-object v4, p0, La1/a$a;->d:La1/t0;

    iget-object v5, p0, La1/a$a;->e:La1/B;

    iget-object v6, p0, La1/a$a;->f:La1/D;

    iget-object v7, p0, La1/a$a;->g:La1/p0;

    iget-object v8, p0, La1/a$a;->h:La1/G;

    iget-object v9, p0, La1/a$a;->i:La1/n;

    iget-object v10, p0, La1/a$a;->j:La1/I;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, La1/a;-><init>(La1/l;La1/n0;La1/w;La1/t0;La1/B;La1/D;La1/p0;La1/G;La1/n;La1/I;)V

    return-object v11
.end method

.method public b(La1/l;)La1/a$a;
    .locals 0
    .param p1    # La1/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/a$a;->a:La1/l;

    return-object p0
.end method

.method public c(La1/n;)La1/a$a;
    .locals 0
    .param p1    # La1/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/a$a;->i:La1/n;

    return-object p0
.end method

.method public d(La1/w;)La1/a$a;
    .locals 0
    .param p1    # La1/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/a$a;->b:La1/w;

    return-object p0
.end method
