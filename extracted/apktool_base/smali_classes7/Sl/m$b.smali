.class public LSl/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "LSl/o$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LSl/m;


# direct methods
.method public constructor <init>(LSl/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSl/m$b;->b:LSl/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LSl/m;LSl/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LSl/m$b;-><init>(LSl/m;)V

    return-void
.end method


# virtual methods
.method public a()LSl/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LSl/m$b;->b:LSl/m;

    invoke-virtual {v0}, LSl/m;->d()LSl/o$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, LSl/m$b;->a()LSl/o$a;

    move-result-object v0

    return-object v0
.end method
