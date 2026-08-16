.class public final LQe/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Throwable;

.field public final synthetic c:LQe/f$a;


# direct methods
.method public constructor <init>(LQe/f$a;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LQe/f$a$a;->c:LQe/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LQe/f$a$a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LQe/f$a$a;->c:LQe/f$a;

    iget-object v0, v0, LQe/f$a;->c:LBe/N;

    iget-object v1, p0, LQe/f$a$a;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
