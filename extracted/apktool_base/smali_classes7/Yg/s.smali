.class public final synthetic LYg/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LYg/v;

.field public final synthetic c:Lbh/b;


# direct methods
.method public synthetic constructor <init>(LYg/v;Lbh/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYg/s;->b:LYg/v;

    iput-object p2, p0, LYg/s;->c:Lbh/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LYg/s;->b:LYg/v;

    iget-object v1, p0, LYg/s;->c:Lbh/b;

    invoke-static {v0, v1}, LYg/v;->h0(LYg/v;Lbh/b;)V

    return-void
.end method
