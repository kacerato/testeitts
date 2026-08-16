.class public final synthetic LN6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LN6/H;


# direct methods
.method public synthetic constructor <init>(LN6/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/y;->b:LN6/H;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LN6/y;->b:LN6/H;

    invoke-static {v0}, LN6/H;->j(LN6/H;)V

    return-void
.end method
