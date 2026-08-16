.class public final synthetic LB0/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LB0/L;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;LB0/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LB0/G;->b:Z

    iput-object p2, p0, LB0/G;->c:Ljava/lang/String;

    iput-object p3, p0, LB0/G;->d:LB0/L;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, LB0/G;->b:Z

    iget-object v1, p0, LB0/G;->c:Ljava/lang/String;

    iget-object v2, p0, LB0/G;->d:LB0/L;

    invoke-static {v0, v1, v2}, LB0/P;->d(ZLjava/lang/String;LB0/L;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
