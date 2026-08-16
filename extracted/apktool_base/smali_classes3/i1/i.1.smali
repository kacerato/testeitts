.class public final Li1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/t;


# instance fields
.field public final a:Li1/k;

.field public b:Li1/E;


# direct methods
.method public synthetic constructor <init>(Li1/k;Li1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/i;->a:Li1/k;

    return-void
.end method


# virtual methods
.method public final O1()Li1/u;
    .locals 4

    iget-object v0, p0, Li1/i;->b:Li1/E;

    const-class v1, Li1/E;

    invoke-static {v0, v1}, Li1/o0;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Li1/j;

    iget-object v1, p0, Li1/i;->a:Li1/k;

    iget-object v2, p0, Li1/i;->b:Li1/E;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Li1/j;-><init>(Li1/k;Li1/E;Li1/g;)V

    return-object v0
.end method

.method public final bridge synthetic a(Li1/E;)Li1/t;
    .locals 0

    iput-object p1, p0, Li1/i;->b:Li1/E;

    return-object p0
.end method
