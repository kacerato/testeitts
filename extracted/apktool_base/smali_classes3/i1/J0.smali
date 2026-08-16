.class public final synthetic Li1/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lu2/c$c;


# direct methods
.method public synthetic constructor <init>(Lu2/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/J0;->b:Lu2/c$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Li1/J0;->b:Lu2/c$c;

    invoke-interface {v0}, Lu2/c$c;->a()V

    return-void
.end method
