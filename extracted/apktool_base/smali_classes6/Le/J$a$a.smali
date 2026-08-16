.class public final LLe/J$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/J$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:LLe/J$a;


# direct methods
.method public constructor <init>(LLe/J$a;)V
    .locals 0

    iput-object p1, p0, LLe/J$a$a;->b:LLe/J$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LLe/J$a$a;->b:LLe/J$a;

    iget-object v0, v0, LLe/J$a;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LLe/J$a$a;->b:LLe/J$a;

    iget-object v0, v0, LLe/J$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LLe/J$a$a;->b:LLe/J$a;

    iget-object v1, v1, LLe/J$a;->e:LBe/J$c;

    invoke-interface {v1}, LDe/c;->dispose()V

    throw v0
.end method
