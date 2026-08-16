.class public Lcom/google/common/reflect/p$b;
.super Lcom/google/common/reflect/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/p;->m(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/f$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/reflect/p;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/p;Ljava/lang/reflect/Constructor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/reflect/p$b;->d:Lcom/google/common/reflect/p;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/f$a;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method


# virtual methods
.method public d()[Ljava/lang/reflect/Type;
    .locals 2

    iget-object v0, p0, Lcom/google/common/reflect/p$b;->d:Lcom/google/common/reflect/p;

    invoke-static {v0}, Lcom/google/common/reflect/p;->b(Lcom/google/common/reflect/p;)Lcom/google/common/reflect/n;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/f$a;->d()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/n;->l([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/lang/reflect/Type;
    .locals 2

    iget-object v0, p0, Lcom/google/common/reflect/p$b;->d:Lcom/google/common/reflect/p;

    invoke-static {v0}, Lcom/google/common/reflect/p;->c(Lcom/google/common/reflect/p;)Lcom/google/common/reflect/n;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/f$a;->e()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/n;->l([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/reflect/Type;
    .locals 2

    iget-object v0, p0, Lcom/google/common/reflect/p$b;->d:Lcom/google/common/reflect/p;

    invoke-static {v0}, Lcom/google/common/reflect/p;->b(Lcom/google/common/reflect/p;)Lcom/google/common/reflect/n;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/f$a;->f()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p$b;->d:Lcom/google/common/reflect/p;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/common/reflect/p$b;->g()Lcom/google/common/reflect/p;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Lw2/y;->p(Ljava/lang/String;)Lw2/y;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/reflect/p$b;->e()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw2/y;->n([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
