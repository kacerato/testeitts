.class public LJi/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljk/i;

.field public final b:Ljk/i;


# direct methods
.method public constructor <init>(Ljk/i;Ljk/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJi/i;->a:Ljk/i;

    iput-object p2, p0, LJi/i;->b:Ljk/i;

    return-void
.end method


# virtual methods
.method public a(LJi/i;)Z
    .locals 2

    invoke-virtual {p1}, LJi/i;->b()Ljk/i;

    move-result-object v0

    invoke-virtual {p0}, LJi/i;->b()Ljk/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/i;->e(Ljk/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LJi/i;->c()Ljk/i;

    move-result-object p1

    invoke-virtual {p0}, LJi/i;->c()Ljk/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljk/i;->e(Ljk/i;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Ljk/i;
    .locals 1

    iget-object v0, p0, LJi/i;->a:Ljk/i;

    return-object v0
.end method

.method public c()Ljk/i;
    .locals 1

    iget-object v0, p0, LJi/i;->b:Ljk/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LJi/i;

    if-eqz v0, :cond_0

    check-cast p1, LJi/i;

    invoke-virtual {p0, p1}, LJi/i;->a(LJi/i;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LJi/i;->a:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->hashCode()I

    move-result v0

    iget-object v1, p0, LJi/i;->b:Ljk/i;

    invoke-virtual {v1}, Ljk/i;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
