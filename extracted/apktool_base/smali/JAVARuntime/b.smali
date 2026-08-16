.class public final synthetic LJAVARuntime/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# instance fields
.field public final synthetic a:LJAVARuntime/Thread;


# direct methods
.method public synthetic constructor <init>(LJAVARuntime/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/b;->a:LJAVARuntime/Thread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/b;->a:LJAVARuntime/Thread;

    invoke-virtual {v0}, LJAVARuntime/Thread;->run()V

    return-void
.end method
