.class public Lw2/e$w;
.super Lw2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# instance fields
.field public final c:Lw2/e;


# direct methods
.method public constructor <init>(Lw2/e;)V
    .locals 0

    invoke-direct {p0}, Lw2/e;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/e;

    iput-object p1, p0, Lw2/e$w;->c:Lw2/e;

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    iget-object v0, p0, Lw2/e$w;->c:Lw2/e;

    invoke-virtual {v0, p1}, Lw2/e;->B(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public C(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lw2/e$w;->c:Lw2/e;

    invoke-virtual {v0, p1}, Lw2/e;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public E(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lw2/e$w;->c:Lw2/e;

    invoke-virtual {v0, p1}, Lw2/e;->C(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public F()Lw2/e;
    .locals 1

    iget-object v0, p0, Lw2/e$w;->c:Lw2/e;

    return-object v0
.end method

.method public Q(Ljava/util/BitSet;)V
    .locals 3
    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iget-object v1, p0, Lw2/e$w;->c:Lw2/e;

    invoke-virtual {v1, v0}, Lw2/e;->Q(Ljava/util/BitSet;)V

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->flip(II)V

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lw2/e;->e(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/CharSequence;)I
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lw2/e$w;->c:Lw2/e;

    invoke-virtual {v1, p1}, Lw2/e;->i(Ljava/lang/CharSequence;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lw2/e$w;->c:Lw2/e;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".negate()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
