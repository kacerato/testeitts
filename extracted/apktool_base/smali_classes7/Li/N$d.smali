.class public LLi/N$d;
.super LLi/N$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic q:LLi/N;


# direct methods
.method public constructor <init>(LLi/N;)V
    .locals 2

    iput-object p1, p0, LLi/N$d;->q:LLi/N;

    invoke-direct {p0, p1}, LLi/N$b;-><init>(LLi/N;)V

    const-wide v0, 0x18040010c01060cL

    iput-wide v0, p0, LLi/N$b;->c:J

    const-wide v0, 0x28040010c01060cL

    iput-wide v0, p0, LLi/N$b;->d:J

    const-wide v0, 0x38040010c01060cL

    iput-wide v0, p0, LLi/N$b;->e:J

    return-void
.end method


# virtual methods
.method public f()V
    .locals 0

    invoke-virtual {p0}, LLi/N$b;->e()V

    return-void
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    return-void
.end method
