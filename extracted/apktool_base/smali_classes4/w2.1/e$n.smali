.class public final Lw2/e$n;
.super Lw2/e$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# instance fields
.field public final c:C

.field public final d:C


# direct methods
.method public constructor <init>(CC)V
    .locals 0

    invoke-direct {p0}, Lw2/e$i;-><init>()V

    iput-char p1, p0, Lw2/e$n;->c:C

    iput-char p2, p0, Lw2/e$n;->d:C

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    iget-char v0, p0, Lw2/e$n;->c:C

    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lw2/e$n;->d:C

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public Q(Ljava/util/BitSet;)V
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    iget-char v0, p0, Lw2/e$n;->c:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    iget-char v0, p0, Lw2/e$n;->d:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-char v0, p0, Lw2/e$n;->c:C

    invoke-static {v0}, Lw2/e;->a(C)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lw2/e$n;->d:C

    invoke-static {v1}, Lw2/e;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CharMatcher.anyOf(\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
