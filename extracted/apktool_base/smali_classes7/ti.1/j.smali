.class public Lti/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LVh/i;


# direct methods
.method public constructor <init>(LVh/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/j;->a:LVh/i;

    return-void
.end method


# virtual methods
.method public a()Lti/c;
    .locals 2

    new-instance v0, Lti/c;

    iget-object v1, p0, Lti/j;->a:LVh/i;

    invoke-virtual {v1}, LVh/i;->x()LVh/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/c;-><init>(LVh/b;)V

    return-object v0
.end method

.method public b()Lhi/C;
    .locals 1

    iget-object v0, p0, Lti/j;->a:LVh/i;

    invoke-virtual {v0}, LVh/i;->y()Lhi/C;

    move-result-object v0

    return-object v0
.end method
