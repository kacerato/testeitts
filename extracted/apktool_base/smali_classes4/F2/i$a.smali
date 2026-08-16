.class public final LF2/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LF2/i$a;->b:I

    iput-object p1, p0, LF2/i$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(C)C
    .locals 2
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0}, LF2/i$a;->e()Z

    move-result v0

    invoke-static {v0}, Lw2/H;->g0(Z)V

    invoke-virtual {p0}, LF2/i$a;->f()C

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget v0, p0, LF2/i$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, LF2/i$a;->b:I

    return p1
.end method

.method public b(Lw2/e;)C
    .locals 1

    invoke-virtual {p0}, LF2/i$a;->e()Z

    move-result v0

    invoke-static {v0}, Lw2/H;->g0(Z)V

    invoke-virtual {p0}, LF2/i$a;->f()C

    move-result v0

    invoke-virtual {p1, v0}, Lw2/e;->B(C)Z

    move-result p1

    invoke-static {p1}, Lw2/H;->g0(Z)V

    iget p1, p0, LF2/i$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LF2/i$a;->b:I

    return v0
.end method

.method public c(Lw2/e;)Ljava/lang/String;
    .locals 2

    iget v0, p0, LF2/i$a;->b:I

    invoke-virtual {p0, p1}, LF2/i$a;->d(Lw2/e;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, LF2/i$a;->b:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    return-object p1
.end method

.method public d(Lw2/e;)Ljava/lang/String;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0}, LF2/i$a;->e()Z

    move-result v0

    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget v0, p0, LF2/i$a;->b:I

    invoke-virtual {p1}, Lw2/e;->F()Lw2/e;

    move-result-object p1

    iget-object v1, p0, LF2/i$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lw2/e;->o(Ljava/lang/CharSequence;I)I

    move-result p1

    iput p1, p0, LF2/i$a;->b:I

    invoke-virtual {p0}, LF2/i$a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LF2/i$a;->a:Ljava/lang/String;

    iget v1, p0, LF2/i$a;->b:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LF2/i$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e()Z
    .locals 2

    iget v0, p0, LF2/i$a;->b:I

    if-ltz v0, :cond_0

    iget-object v1, p0, LF2/i$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()C
    .locals 2

    invoke-virtual {p0}, LF2/i$a;->e()Z

    move-result v0

    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-object v0, p0, LF2/i$a;->a:Ljava/lang/String;

    iget v1, p0, LF2/i$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
