.class public final synthetic Li1/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li1/K0;

.field public final synthetic c:Lu2/c$c;


# direct methods
.method public synthetic constructor <init>(Li1/K0;Lu2/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/G0;->b:Li1/K0;

    iput-object p2, p0, Li1/G0;->c:Lu2/c$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li1/G0;->b:Li1/K0;

    iget-object v1, p0, Li1/G0;->c:Lu2/c$c;

    invoke-virtual {v0, v1}, Li1/K0;->a(Lu2/c$c;)V

    return-void
.end method
