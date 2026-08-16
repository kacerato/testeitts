.class public final synthetic LP7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LP7/b;

.field public final synthetic c:LR7/b;


# direct methods
.method public synthetic constructor <init>(LP7/b;LR7/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP7/a;->b:LP7/b;

    iput-object p2, p0, LP7/a;->c:LR7/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LP7/a;->b:LP7/b;

    iget-object v1, p0, LP7/a;->c:LR7/b;

    invoke-static {v0, v1}, LP7/b;->a(LP7/b;LR7/b;)V

    return-void
.end method
