.class public final synthetic Li1/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Li1/t0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Li1/t0;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/s0;->b:Li1/t0;

    iput-object p2, p0, Li1/s0;->c:Ljava/lang/String;

    iput-object p3, p0, Li1/s0;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Li1/s0;->b:Li1/t0;

    iget-object v1, p0, Li1/s0;->c:Ljava/lang/String;

    iget-object v2, p0, Li1/s0;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Li1/t0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
