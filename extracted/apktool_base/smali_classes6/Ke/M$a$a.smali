.class public final LKe/M$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/M$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:LKe/M$a;


# direct methods
.method public constructor <init>(LKe/M$a;)V
    .locals 0

    iput-object p1, p0, LKe/M$a$a;->b:LKe/M$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LKe/M$a$a;->b:LKe/M$a;

    iget-object v0, v0, LKe/M$a;->c:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LKe/M$a$a;->b:LKe/M$a;

    iget-object v0, v0, LKe/M$a;->d:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LKe/M$a$a;->b:LKe/M$a;

    iget-object v0, v0, LKe/M$a;->c:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->a(LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LKe/M$a$a;->b:LKe/M$a;

    iget-object v0, v0, LKe/M$a;->c:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LKe/M$a$a;->b:LKe/M$a;

    iget-object v0, v0, LKe/M$a;->d:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
