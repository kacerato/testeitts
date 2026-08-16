.class public final Lokhttp3/C;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/C$a;
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/v;

.field public final b:Ljava/lang/String;

.field public final c:Lokhttp3/u;

.field public final d:Lokhttp3/D;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Lokhttp3/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/C$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/C$a;->a:Lokhttp3/v;

    iput-object v0, p0, Lokhttp3/C;->a:Lokhttp3/v;

    iget-object v0, p1, Lokhttp3/C$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/C;->b:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/C$a;->c:Lokhttp3/u$a;

    invoke-virtual {v0}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/C;->c:Lokhttp3/u;

    iget-object v0, p1, Lokhttp3/C$a;->d:Lokhttp3/D;

    iput-object v0, p0, Lokhttp3/C;->d:Lokhttp3/D;

    iget-object p1, p1, Lokhttp3/C$a;->e:Ljava/util/Map;

    invoke-static {p1}, LGg/c;->w(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/C;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/D;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/C;->d:Lokhttp3/D;

    return-object v0
.end method

.method public b()Lokhttp3/d;
    .locals 1

    iget-object v0, p0, Lokhttp3/C;->f:Lokhttp3/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/C;->c:Lokhttp3/u;

    invoke-static {v0}, Lokhttp3/d;->m(Lokhttp3/u;)Lokhttp3/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/C;->f:Lokhttp3/d;

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/C;->c:Lokhttp3/u;

    invoke-virtual {v0, p1}, Lokhttp3/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/C;->c:Lokhttp3/u;

    invoke-virtual {v0, p1}, Lokhttp3/u;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e()Lokhttp3/u;
    .locals 1

    iget-object v0, p0, Lokhttp3/C;->c:Lokhttp3/u;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/C;->a:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->q()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/C;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lokhttp3/C$a;
    .locals 1

    new-instance v0, Lokhttp3/C$a;

    invoke-direct {v0, p0}, Lokhttp3/C$a;-><init>(Lokhttp3/C;)V

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lokhttp3/C;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/C;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Lokhttp3/v;
    .locals 1

    iget-object v0, p0, Lokhttp3/C;->a:Lokhttp3/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/C;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/C;->a:Lokhttp3/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/C;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
