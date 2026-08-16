.class public final synthetic LXf/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


# instance fields
.field public final synthetic b:LMf/l;


# direct methods
.method public synthetic constructor <init>(LMf/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXf/H;->b:LMf/l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LXf/H;->b:LMf/l;

    invoke-static {v0, p1}, LXf/K;->d0(LMf/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
