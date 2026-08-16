.class public Lr6/g;
.super LF7/i;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:Lr6/f;

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr6/f;)V
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

    .line 1
    new-instance v0, Lm7/c;

    invoke-direct {v0}, Lm7/c;-><init>()V

    invoke-direct {p0, p1, v0}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lr6/g;->o:Z

    .line 3
    iput-object p1, p0, Lr6/g;->m:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lr6/g;->n:Lr6/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lr6/f;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "stack",
            "isEditor"
        }
    .end annotation

    .line 5
    new-instance v0, Lm7/c;

    invoke-direct {v0}, Lm7/c;-><init>()V

    invoke-direct {p0, p1, v0}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    .line 6
    iput-object p1, p0, Lr6/g;->m:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lr6/g;->n:Lr6/f;

    .line 8
    iput-boolean p3, p0, Lr6/g;->o:Z

    if-eqz p3, :cond_0

    .line 9
    new-instance p1, Lr6/g$a;

    invoke-direct {p1, p0}, Lr6/g$a;-><init>(Lr6/g;)V

    iput-object p1, p0, LF7/i;->j:LF7/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr6/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public u()Lr6/f;
    .locals 1

    iget-object v0, p0, Lr6/g;->n:Lr6/f;

    return-object v0
.end method
