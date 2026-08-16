.class public LM2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM2/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM2/b;->g(Ljava/lang/String;LM2/a$b;)LM2/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LM2/b;


# direct methods
.method public constructor <init>(LM2/b;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, LM2/b$a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LM2/b$a;->b:LM2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, LM2/b$a;->b:LM2/b;

    iget-object v1, p0, LM2/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LM2/b;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, LM2/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN2/a;

    invoke-interface {v2}, LN2/a;->N1()LM2/a$b;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, LM2/a$b;->a(ILandroid/os/Bundle;)V

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 3
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LM2/b$a;->b:LM2/b;

    iget-object v1, p0, LM2/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LM2/b;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "fiam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, LM2/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN2/a;

    invoke-interface {v0}, LN2/a;->P1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/util/Set;)V
    .locals 3
    .annotation build LC0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LM2/b$a;->b:LM2/b;

    iget-object v1, p0, LM2/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LM2/b;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "fiam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, LM2/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN2/a;

    invoke-interface {v0, p1}, LN2/a;->a(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method
