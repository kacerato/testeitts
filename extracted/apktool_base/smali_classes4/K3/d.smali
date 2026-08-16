.class public final synthetic LK3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LK3/c;


# direct methods
.method public synthetic constructor <init>(LK3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/d;->b:LK3/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LK3/d;->b:LK3/c;

    invoke-virtual {v0}, LK3/c;->e()V

    return-void
.end method
