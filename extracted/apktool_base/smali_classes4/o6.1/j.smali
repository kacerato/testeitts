.class public Lo6/j;
.super LF7/i;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:Lo6/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo6/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "stack"
        }
    .end annotation

    new-instance v0, Lm7/c;

    invoke-direct {v0}, Lm7/c;-><init>()V

    invoke-direct {p0, p1, v0}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    iput-object p1, p0, Lo6/j;->m:Ljava/lang/String;

    iput-object p2, p0, Lo6/j;->n:Lo6/i;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo6/j;->m:Ljava/lang/String;

    return-object v0
.end method

.method public u()Lo6/i;
    .locals 1

    iget-object v0, p0, Lo6/j;->n:Lo6/i;

    return-object v0
.end method
