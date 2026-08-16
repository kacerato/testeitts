.class public final Lw2/e$m;
.super Lw2/e$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# instance fields
.field public final c:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lw2/e$i;-><init>()V

    iput-char p1, p0, Lw2/e$m;->c:C

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    iget-char v0, p0, Lw2/e$m;->c:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F()Lw2/e;
    .locals 1

    iget-char v0, p0, Lw2/e$m;->c:C

    invoke-static {v0}, Lw2/e;->s(C)Lw2/e;

    move-result-object v0

    return-object v0
.end method

.method public I(Lw2/e;)Lw2/e;
    .locals 1

    iget-char v0, p0, Lw2/e$m;->c:C

    invoke-virtual {p1, v0}, Lw2/e;->B(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lw2/e;->I(Lw2/e;)Lw2/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public N(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-char v0, p0, Lw2/e$m;->c:C

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Q(Ljava/util/BitSet;)V
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    iget-char v0, p0, Lw2/e$m;->c:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public b(Lw2/e;)Lw2/e;
    .locals 1

    iget-char v0, p0, Lw2/e$m;->c:C

    invoke-virtual {p1, v0}, Lw2/e;->B(C)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lw2/e;->G()Lw2/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-char v0, p0, Lw2/e$m;->c:C

    invoke-static {v0}, Lw2/e;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
