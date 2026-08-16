.class public final synthetic LZ2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:LZ2/g;


# direct methods
.method public synthetic constructor <init>(LZ2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ2/d;->b:LZ2/g;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LZ2/d;->b:LZ2/g;

    invoke-static {v0}, LZ2/g;->c(LZ2/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
