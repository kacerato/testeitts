.class public final LW0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/p;


# instance fields
.field public final synthetic a:LW0/a;


# direct methods
.method public constructor <init>(LW0/a;)V
    .locals 0

    iput-object p1, p0, LW0/n;->a:LW0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final d(LW0/e;)V
    .locals 0

    iget-object p1, p0, LW0/n;->a:LW0/a;

    invoke-static {p1}, LW0/a;->p(LW0/a;)LW0/e;

    move-result-object p1

    invoke-interface {p1}, LW0/e;->onStart()V

    return-void
.end method
