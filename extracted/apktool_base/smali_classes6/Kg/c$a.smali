.class public LKg/c$a;
.super LSg/a$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LKg/c;->s(LKg/f;)LSg/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LKg/f;

.field public final synthetic f:LKg/c;


# direct methods
.method public constructor <init>(LKg/c;ZLTg/e;LTg/d;LKg/f;)V
    .locals 0

    iput-object p1, p0, LKg/c$a;->f:LKg/c;

    iput-object p5, p0, LKg/c$a;->e:LKg/f;

    invoke-direct {p0, p2, p3, p4}, LSg/a$g;-><init>(ZLTg/e;LTg/d;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LKg/c$a;->e:LKg/f;

    invoke-virtual {v0}, LKg/f;->c()LLg/c;

    move-result-object v2

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, LKg/f;->r(ZLLg/c;JLjava/io/IOException;)V

    return-void
.end method
