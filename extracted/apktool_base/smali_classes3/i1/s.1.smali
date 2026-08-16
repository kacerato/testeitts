.class public final Li1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li1/l0<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic O1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Li1/h0;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Li1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
