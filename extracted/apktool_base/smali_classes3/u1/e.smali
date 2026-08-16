.class public final synthetic Lu1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lu1/d;


# direct methods
.method public synthetic constructor <init>(Lu1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/e;->b:Lu1/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu1/e;->b:Lu1/d;

    invoke-static {v0}, Lu1/d;->e(Lu1/d;)V

    return-void
.end method
