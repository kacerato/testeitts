.class public Lw2/J$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/I<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final b:Lw2/h;


# direct methods
.method public constructor <init>(Lw2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/h;

    iput-object p1, p0, Lw2/J$e;->b:Lw2/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {v0, p1}, Lw2/h;->d(Ljava/lang/CharSequence;)Lw2/g;

    move-result-object p1

    invoke-virtual {p1}, Lw2/g;->b()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lw2/J$e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lw2/J$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lw2/J$e;

    iget-object v0, p0, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {v0}, Lw2/h;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {v2}, Lw2/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {v0}, Lw2/h;->b()I

    move-result v0

    iget-object p1, p1, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {p1}, Lw2/h;->b()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {v0}, Lw2/h;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {v1}, Lw2/h;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw2/B;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lw2/J$e;->b:Lw2/h;

    invoke-static {v0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-object v1, p0, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {v1}, Lw2/h;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pattern"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-object v1, p0, Lw2/J$e;->b:Lw2/h;

    invoke-virtual {v1}, Lw2/h;->b()I

    move-result v1

    const-string v2, "pattern.flags"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Predicates.contains("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
