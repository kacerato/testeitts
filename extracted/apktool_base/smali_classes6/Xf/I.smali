.class public final synthetic LXf/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/p;


# instance fields
.field public final synthetic b:LMf/p;


# direct methods
.method public synthetic constructor <init>(LMf/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXf/I;->b:LMf/p;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LXf/I;->b:LMf/p;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1, p2}, LXf/K;->a0(LMf/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
