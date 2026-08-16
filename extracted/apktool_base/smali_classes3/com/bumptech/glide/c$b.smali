.class public Lcom/bumptech/glide/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/c;->g(LU/h;)Lcom/bumptech/glide/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LU/h;

.field public final synthetic b:Lcom/bumptech/glide/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;LU/h;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/c$b;->b:Lcom/bumptech/glide/c;

    iput-object p2, p0, Lcom/bumptech/glide/c$b;->a:LU/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()LU/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c$b;->a:LU/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    :goto_0
    return-object v0
.end method
