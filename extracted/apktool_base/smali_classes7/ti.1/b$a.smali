.class public Lti/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lti/c;

.field public b:LVh/c;

.field public c:Loh/n;

.field public d:Loh/n;

.field public e:Lhi/C;


# direct methods
.method public constructor <init>(Lti/c;Lti/d;Ljava/util/Date;Ljava/util/Date;Lhi/C;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/b$a;->a:Lti/c;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    new-instance p2, LVh/c;

    invoke-direct {p2}, LVh/c;-><init>()V

    :goto_0
    iput-object p2, p0, Lti/b$a;->b:LVh/c;

    goto :goto_2

    :cond_0
    instance-of v0, p2, Lti/o;

    if-eqz v0, :cond_1

    new-instance p2, LVh/c;

    const/4 v0, 0x2

    sget-object v1, Loh/A0;->c:Loh/A0;

    invoke-direct {p2, v0, v1}, LVh/c;-><init>(ILoh/g;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lti/m;

    invoke-virtual {p2}, Lti/m;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LVh/c;

    new-instance v1, LVh/m;

    new-instance v2, Loh/n;

    invoke-virtual {p2}, Lti/m;->b()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v3}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-virtual {p2}, Lti/m;->a()I

    move-result p2

    invoke-static {p2}, Lhi/o;->w(I)Lhi/o;

    move-result-object p2

    invoke-direct {v1, v2, p2}, LVh/m;-><init>(Loh/n;Lhi/o;)V

    invoke-direct {v0, v1}, LVh/c;-><init>(LVh/m;)V

    :goto_1
    iput-object v0, p0, Lti/b$a;->b:LVh/c;

    goto :goto_2

    :cond_2
    new-instance v0, LVh/c;

    new-instance v1, LVh/m;

    new-instance v2, Loh/n;

    invoke-virtual {p2}, Lti/m;->b()Ljava/util/Date;

    move-result-object p2

    invoke-direct {v2, p2}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-direct {v1, v2, p1}, LVh/m;-><init>(Loh/n;Lhi/o;)V

    invoke-direct {v0, v1}, LVh/c;-><init>(LVh/m;)V

    goto :goto_1

    :goto_2
    new-instance p2, Loh/w0;

    invoke-direct {p2, p3}, Loh/w0;-><init>(Ljava/util/Date;)V

    iput-object p2, p0, Lti/b$a;->c:Loh/n;

    if-eqz p4, :cond_3

    new-instance p1, Loh/w0;

    invoke-direct {p1, p4}, Loh/w0;-><init>(Ljava/util/Date;)V

    :cond_3
    iput-object p1, p0, Lti/b$a;->d:Loh/n;

    iput-object p5, p0, Lti/b$a;->e:Lhi/C;

    return-void
.end method


# virtual methods
.method public a()LVh/p;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v6, LVh/p;

    iget-object v0, p0, Lti/b$a;->a:Lti/c;

    invoke-virtual {v0}, Lti/c;->h()LVh/b;

    move-result-object v1

    iget-object v2, p0, Lti/b$a;->b:LVh/c;

    iget-object v3, p0, Lti/b$a;->c:Loh/n;

    iget-object v4, p0, Lti/b$a;->d:Loh/n;

    iget-object v5, p0, Lti/b$a;->e:Lhi/C;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LVh/p;-><init>(LVh/b;LVh/c;Loh/n;Loh/n;Lhi/C;)V

    return-object v6
.end method
