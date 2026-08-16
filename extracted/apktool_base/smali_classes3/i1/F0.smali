.class public final synthetic Li1/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li1/K0;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lu2/d;

.field public final synthetic e:Lu2/c$c;

.field public final synthetic f:Lu2/c$b;


# direct methods
.method public synthetic constructor <init>(Li1/K0;Landroid/app/Activity;Lu2/d;Lu2/c$c;Lu2/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/F0;->b:Li1/K0;

    iput-object p2, p0, Li1/F0;->c:Landroid/app/Activity;

    iput-object p3, p0, Li1/F0;->d:Lu2/d;

    iput-object p4, p0, Li1/F0;->e:Lu2/c$c;

    iput-object p5, p0, Li1/F0;->f:Lu2/c$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Li1/F0;->b:Li1/K0;

    iget-object v1, p0, Li1/F0;->c:Landroid/app/Activity;

    iget-object v2, p0, Li1/F0;->d:Lu2/d;

    iget-object v3, p0, Li1/F0;->e:Lu2/c$c;

    iget-object v4, p0, Li1/F0;->f:Lu2/c$b;

    invoke-virtual {v0, v1, v2, v3, v4}, Li1/K0;->b(Landroid/app/Activity;Lu2/d;Lu2/c$c;Lu2/c$b;)V

    return-void
.end method
