.class public final synthetic Lw5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lq7/a;


# direct methods
.method public synthetic constructor <init>(Lq7/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/e;->b:Lq7/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lw5/e;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method
