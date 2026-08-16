.class public LTd/Y$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/Y$a$a;->a()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Short;

.field public final synthetic c:Ljava/lang/Short;

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:LTd/Y$a$a;


# direct methods
.method public constructor <init>(LTd/Y$a$a;Ljava/lang/Short;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, LTd/Y$a$a$a;->e:LTd/Y$a$a;

    iput-object p2, p0, LTd/Y$a$a$a;->c:Ljava/lang/Short;

    iput-object p3, p0, LTd/Y$a$a$a;->d:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LTd/Y$a$a$a;->b:Ljava/lang/Short;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, LTd/Y$a$a$a;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, LTd/Y$a$a$a;->b:Ljava/lang/Short;

    return-object v0
.end method

.method public d(Ljava/lang/Short;)Ljava/lang/Short;
    .locals 2

    iput-object p1, p0, LTd/Y$a$a$a;->b:Ljava/lang/Short;

    iget-object v0, p0, LTd/Y$a$a$a;->e:LTd/Y$a$a;

    iget-object v0, v0, LTd/Y$a$a;->c:LTd/Y$a;

    iget-object v0, v0, LTd/Y$a;->b:LTd/Y;

    iget-object v1, p0, LTd/Y$a$a$a;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, LTd/Y;->f(Ljava/lang/Integer;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LTd/Y$a$a$a;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LTd/Y$a$a$a;->b:Ljava/lang/Short;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/Y$a$a$a;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/Y$a$a$a;->c()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LTd/Y$a$a$a;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    iget-object v1, p0, LTd/Y$a$a$a;->b:Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, LTd/Y$a$a$a;->d(Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method
