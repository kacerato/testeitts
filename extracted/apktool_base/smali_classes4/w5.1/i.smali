.class public final synthetic Lw5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# instance fields
.field public final synthetic b:LZ6/g;


# direct methods
.method public synthetic constructor <init>(LZ6/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/i;->b:LZ6/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lw5/i;->b:LZ6/g;

    invoke-virtual {v0}, LZ6/g;->q1()V

    return-void
.end method
