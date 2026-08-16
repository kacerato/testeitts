.class public final synthetic LN6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LN6/p;


# direct methods
.method public synthetic constructor <init>(LN6/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/h;->b:LN6/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LN6/h;->b:LN6/p;

    invoke-static {v0}, LN6/p;->f(LN6/p;)V

    return-void
.end method
