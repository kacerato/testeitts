.class public final LDd/c$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDd/c;->sendYouTubeIFrameAPIReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LDd/c;


# direct methods
.method public constructor <init>(LDd/c;)V
    .locals 0

    iput-object p1, p0, LDd/c$m;->b:LDd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LDd/c$m;->b:LDd/c;

    invoke-static {v0}, LDd/c;->a(LDd/c;)LDd/c$b;

    move-result-object v0

    invoke-interface {v0}, LDd/c$b;->b()V

    return-void
.end method
