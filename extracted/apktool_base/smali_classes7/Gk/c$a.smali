.class public LGk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LGk/b;

.field public b:LFk/S;

.field public c:LGk/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LGk/c;
    .locals 4

    new-instance v0, LGk/c;

    iget-object v1, p0, LGk/c$a;->a:LGk/b;

    iget-object v2, p0, LGk/c$a;->b:LFk/S;

    iget-object v3, p0, LGk/c$a;->c:LGk/b;

    invoke-direct {v0, v1, v2, v3}, LGk/c;-><init>(LGk/b;LFk/S;LGk/b;)V

    return-object v0
.end method

.method public b(LGk/b;)LGk/c$a;
    .locals 0

    iput-object p1, p0, LGk/c$a;->c:LGk/b;

    return-object p0
.end method

.method public c(LFk/S;)LGk/c$a;
    .locals 0

    iput-object p1, p0, LGk/c$a;->b:LFk/S;

    return-object p0
.end method

.method public d(LGk/b;)LGk/c$a;
    .locals 0

    iput-object p1, p0, LGk/c$a;->a:LGk/b;

    return-object p0
.end method
