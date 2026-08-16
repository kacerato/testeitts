.class public LSk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loh/g;


# instance fields
.field public final b:Lfi/d;

.field public final c:Lhi/h0;

.field public final d:Lhi/C;

.field public final e:Lhi/b;

.field public final f:Loh/E;


# direct methods
.method public constructor <init>(LXh/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, LXh/a;->x()[Loh/g;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-direct {p0, p1}, LSk/b;-><init>(Loh/E;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSk/b;->f:Loh/E;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v1

    invoke-static {v1, v3}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object v1

    iput-object v1, p0, LSk/b;->b:Lfi/d;

    move v1, v3

    goto :goto_0

    :cond_0
    iput-object v2, p0, LSk/b;->b:Lfi/d;

    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v4

    iput-object v4, p0, LSk/b;->c:Lhi/h0;

    add-int/2addr v1, v3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v4

    if-eq v1, v4, :cond_3

    move-object v4, v2

    :goto_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v5

    invoke-virtual {v5}, Loh/M;->g()I

    move-result v6

    if-ne v6, v3, :cond_1

    invoke-static {v5, v0}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Loh/M;->g()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    invoke-static {v5, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v4, v2

    :cond_4
    iput-object v2, p0, LSk/b;->d:Lhi/C;

    iput-object v4, p0, LSk/b;->e:Lhi/b;

    return-void
.end method


# virtual methods
.method public c()Lhi/C;
    .locals 1

    iget-object v0, p0, LSk/b;->d:Lhi/C;

    return-object v0
.end method

.method public e()Lhi/b;
    .locals 1

    iget-object v0, p0, LSk/b;->e:Lhi/b;

    return-object v0
.end method

.method public f()Lfi/d;
    .locals 1

    iget-object v0, p0, LSk/b;->b:Lfi/d;

    return-object v0
.end method

.method public q()Lhi/h0;
    .locals 1

    iget-object v0, p0, LSk/b;->c:Lhi/h0;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LSk/b;->f:Loh/E;

    return-object v0
.end method
