.class public final Li1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li1/p0<",
        "Li1/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li1/k;


# direct methods
.method public constructor <init>(Li1/k;)V
    .locals 0

    iput-object p1, p0, Li1/g;->a:Li1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic O1()Ljava/lang/Object;
    .locals 3

    new-instance v0, Li1/i;

    iget-object v1, p0, Li1/g;->a:Li1/k;

    invoke-static {v1}, Li1/k;->d(Li1/k;)Li1/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li1/i;-><init>(Li1/k;Li1/g;)V

    return-object v0
.end method
