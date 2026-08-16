.class public final LD0/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LD0/c;

.field public final b:LB0/e;


# direct methods
.method public synthetic constructor <init>(LD0/c;LB0/e;LD0/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/e0;->a:LD0/c;

    iput-object p2, p0, LD0/e0;->b:LB0/e;

    return-void
.end method

.method public static bridge synthetic a(LD0/e0;)LB0/e;
    .locals 0

    iget-object p0, p0, LD0/e0;->b:LB0/e;

    return-object p0
.end method

.method public static bridge synthetic b(LD0/e0;)LD0/c;
    .locals 0

    iget-object p0, p0, LD0/e0;->a:LD0/c;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, LD0/e0;

    if-eqz v1, :cond_0

    check-cast p1, LD0/e0;

    iget-object v1, p0, LD0/e0;->a:LD0/c;

    iget-object v2, p1, LD0/e0;->a:LD0/c;

    invoke-static {v1, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LD0/e0;->b:LB0/e;

    iget-object p1, p1, LD0/e0;->b:LB0/e;

    invoke-static {v1, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LD0/e0;->a:LD0/c;

    iget-object v1, p0, LD0/e0;->b:LB0/e;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LG0/y;->d(Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, LD0/e0;->a:LD0/c;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "feature"

    iget-object v2, p0, LD0/e0;->b:LB0/e;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    invoke-virtual {v0}, LG0/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
