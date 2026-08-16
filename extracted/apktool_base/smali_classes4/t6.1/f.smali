.class public Lt6/f;
.super LF7/i;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:Lt6/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lt6/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "profile"
        }
    .end annotation

    new-instance v0, Lm7/c;

    invoke-direct {v0}, Lm7/c;-><init>()V

    invoke-direct {p0, p1, v0}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    iput-object p1, p0, Lt6/f;->m:Ljava/lang/String;

    iput-object p2, p0, Lt6/f;->n:Lt6/e;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt6/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public u()Lt6/e;
    .locals 1

    iget-object v0, p0, Lt6/f;->n:Lt6/e;

    return-object v0
.end method
