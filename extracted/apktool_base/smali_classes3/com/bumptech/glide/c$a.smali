.class public Lcom/bumptech/glide/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/c$a;->a:Lcom/bumptech/glide/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()LU/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    return-object v0
.end method
