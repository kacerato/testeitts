.class public Lij/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lij/b;

.field public final b:Lij/u;


# direct methods
.method public constructor <init>(Lij/b;Lij/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/c;->a:Lij/b;

    iput-object p2, p0, Lij/c;->b:Lij/u;

    return-void
.end method


# virtual methods
.method public a()Lij/b;
    .locals 2

    iget-object v0, p0, Lij/c;->a:Lij/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has no CSRAttributesResponse."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lij/c;->b:Lij/u;

    invoke-interface {v0}, Lij/u;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()Lij/u;
    .locals 1

    iget-object v0, p0, Lij/c;->b:Lij/u;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lij/c;->a:Lij/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
