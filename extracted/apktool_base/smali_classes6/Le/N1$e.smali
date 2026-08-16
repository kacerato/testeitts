.class public final LLe/N1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/N1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:LLe/N1$d;

.field public final c:J


# direct methods
.method public constructor <init>(JLLe/N1$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LLe/N1$e;->c:J

    iput-object p3, p0, LLe/N1$e;->b:LLe/N1$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LLe/N1$e;->b:LLe/N1$d;

    iget-wide v1, p0, LLe/N1$e;->c:J

    invoke-interface {v0, v1, v2}, LLe/N1$d;->b(J)V

    return-void
.end method
