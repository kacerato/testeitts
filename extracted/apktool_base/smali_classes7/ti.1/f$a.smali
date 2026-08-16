.class public Lti/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lti/c;

.field public b:Lhi/C;


# direct methods
.method public constructor <init>(Lti/c;Lhi/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/f$a;->a:Lti/c;

    iput-object p2, p0, Lti/f$a;->b:Lhi/C;

    return-void
.end method


# virtual methods
.method public a()LVh/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, LVh/i;

    iget-object v1, p0, Lti/f$a;->a:Lti/c;

    invoke-virtual {v1}, Lti/c;->h()LVh/b;

    move-result-object v1

    iget-object v2, p0, Lti/f$a;->b:Lhi/C;

    invoke-direct {v0, v1, v2}, LVh/i;-><init>(LVh/b;Lhi/C;)V

    return-object v0
.end method
