.class public LTd/F$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/F$a$a;->a()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Float;",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Character;

.field public final synthetic c:Ljava/lang/Character;

.field public final synthetic d:Ljava/lang/Float;

.field public final synthetic e:LTd/F$a$a;


# direct methods
.method public constructor <init>(LTd/F$a$a;Ljava/lang/Character;Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, LTd/F$a$a$a;->e:LTd/F$a$a;

    iput-object p2, p0, LTd/F$a$a$a;->c:Ljava/lang/Character;

    iput-object p3, p0, LTd/F$a$a$a;->d:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LTd/F$a$a$a;->b:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LTd/F$a$a$a;->d:Ljava/lang/Float;

    return-object v0
.end method

.method public c()Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, LTd/F$a$a$a;->b:Ljava/lang/Character;

    return-object v0
.end method

.method public d(Ljava/lang/Character;)Ljava/lang/Character;
    .locals 2

    iput-object p1, p0, LTd/F$a$a$a;->b:Ljava/lang/Character;

    iget-object v0, p0, LTd/F$a$a$a;->e:LTd/F$a$a;

    iget-object v0, v0, LTd/F$a$a;->c:LTd/F$a;

    iget-object v0, v0, LTd/F$a;->b:LTd/F;

    iget-object v1, p0, LTd/F$a$a$a;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1, p1}, LTd/F;->f(Ljava/lang/Float;Ljava/lang/Character;)Ljava/lang/Character;

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

    iget-object v1, p0, LTd/F$a$a$a;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LTd/F$a$a$a;->b:Ljava/lang/Character;

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

    invoke-virtual {p0}, LTd/F$a$a$a;->b()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/F$a$a$a;->c()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LTd/F$a$a$a;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    iget-object v1, p0, LTd/F$a$a$a;->b:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, LTd/F$a$a$a;->d(Ljava/lang/Character;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
